library(shiny)
library(bs4Dash)
library(DBI)
library(ggplot2)
library(plotly)
library(leaflet)
library(shinyjs)
library(reticulate)
library(bslib)
library(shinyvalidate)
# Create virtual environment
virtualenv_create("sqlchat")
# Install Python packages
virtualenv_install(
  "sqlchat",
  packages = c(
    "langchain",
    "langchain-community",
    "langchain-openai",
    "langgraph",
    "faiss-cpu",
    "Ipykernel",
    "mysql-connector-python"
  )
)
use_virtualenv("sqlchat", required = TRUE)
# Python Code for SQLChat
py_run_string(sprintf("
import os
from langchain_community.utilities import SQLDatabase
from langchain_openai import ChatOpenAI
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.runnables import RunnablePassthrough
from langchain_core.output_parsers import StrOutputParser
# Define database connection parameters
user = '%s'
password = '%s'
host = '%s'
port = 3306
database = '%s'
# Connection string for MySQL
mysql_uri = f'mysql+mysqlconnector://{user}:{password}@{host}:{port}/{database}'
# Create SQLDatabase object using the URI
db = SQLDatabase.from_uri(mysql_uri)
api_key = '%s'
llm = ChatOpenAI(model='gpt-4o', api_key=api_key)
# Define LangChain SQL generation and execution pipelines
def generate_sql(question):
    template = '''Based on the table schema below, write a SQL query that would answer the user's question:
    {schema}
    Write only the SQL query and nothing else. Do not wrap the SQL query in any other text, not even backticks.
    Remove ```sql\n and \n```
    Question: {question}
    SQL Query:'''
    prompt = ChatPromptTemplate.from_template(template)
    sql_chain = (
        RunnablePassthrough.assign(schema=lambda _: db.get_table_info())
        | prompt
        | llm.bind(stop=['\\nSQLResult:'])
        | StrOutputParser()
    )
    return sql_chain.invoke({'question': question})
def full_chain_response(question):
    sql_query = generate_sql(question)
    sql_response = db.run(sql_query)
    full_template = '''Based on the table schema below, question, sql query, and sql response, write a natural language response:
    {schema}
    Write only the SQL query and nothing else. Do not wrap the SQL query in any other text, not even backticks.
    Remove ```sql\n and \n```
    Question: {question}
    SQL Query: {query}
    SQL Response: {response}'''
    prompt_response = ChatPromptTemplate.from_template(full_template)
    full_chain = (
        RunnablePassthrough.assign(query=lambda _: sql_query)
        .assign(schema=lambda: db.get_table_info(), response=lambda vars: sql_response)
        | prompt_response
        | llm
        | StrOutputParser()
    )
    return {'query': sql_query, 'response': sql_response}
", Sys.getenv("USER"), Sys.getenv("PASSWORD"), Sys.getenv("HOST"), Sys.getenv("DATABASE"), Sys.getenv("API_KEY")))
# UI
ui <- dashboardPage(
  dark = TRUE,
  help = NULL,
  fullscreen = TRUE,
  scrollToTop = TRUE,
  dashboardHeader(
    title = dashboardBrand(
      title = "DFW Music Booking",
      color = "purple",
      href = "https://zyzcfzs.github.io",
      image = "https://icons.iconarchive.com/icons/dtafalonso/yosemite-flat/512/Music-icon.png",
      opacity = 0.8
    ),
    fixed = TRUE,
    actionButton("btn_home", "", icon = icon("home")),
    rightUi = tagList(dropdownMenuOutput("notification"), userOutput("user"))
  ),
  footer = dashboardFooter(
    fixed = FALSE,
    left = h6("Shiny Project Group 6: Ire Jason Vikram Yashu"),
    right = "© 2024"
  ),
  # Allow users to choose the theme of the app themselves
  controlbar = dashboardControlbar(collapsed = TRUE, div(class = "p-3", skinSelector())),
  # Sidebar when user login successfully
  dashboardSidebar(
    collapsed = TRUE,
    conditionalPanel(
      condition = "output.loggedIn",
      sidebarMenu(
        id = "tabs",
        menuItem("HomePage", tabName = "homepage", icon = icon("home")),
        menuItem(
          "Artists Gallery",
          tabName = "gallery",
          icon = icon("images")
        ),
        menuItem(
          "Create New Bookings",
          tabName = "create",
          icon = icon("plus")
        ),
        menuItem(
          "Search Information",
          tabName = "read",
          icon = icon("search")
        ),
        menuItem(
          "Update Information",
          tabName = "update",
          icon = icon("edit")
        ),
        menuItem(
          "Delete Information",
          tabName = "delete",
          icon = icon("trash")
        ),
        menuItem(
          "Analytics Report",
          tabName = "analytics",
          icon = icon("chart-bar")
        ),
        menuItem(
          "Venue Availability Map",
          tabName = "map",
          icon = icon("map-marker-alt")
        ),
        menuItem("SQL Chat", tabName = "sqlchat", icon = icon("comments"))
      )
    )
  ),
  # Body for main content
  dashboardBody(
    useShinyjs(),
    # Login Page
    conditionalPanel(
      condition = "!output.loggedIn",
      textInput("username", "Username"),
      passwordInput("password", "Password"),
      actionButton("login_btn", "Login"),
      actionButton("signup_btn", "Sign Up")
    ),
    # Main Pages
    conditionalPanel(
      condition = "output.loggedIn",
      tabItems(
        tabItem(tabName = "homepage", uiOutput("welcome_ui")),
        tabItem(
          tabName = "create",
          box(
            ribbon(text = "Book Now", color = "danger"),
            collapsible = TRUE,
            width = 12,
            title = "Create New Booking",
            gradient = TRUE,
            background = "purple",
            status = "purple",
            solidHeader = TRUE,
            numericInput("venue_id", "Venue ID", value = 0, min = 1),
            numericInput("artist_id", "Artist ID", value = 0, min = 1),
            dateInput("date", "Booking Date", min = Sys.Date()),
            actionButton("create_booking_btn", "Create Booking")
          )
        ),
        tabItem(
          tabName = "gallery",
          uiOutput("artists") %>% tagAppendAttributes(class = "row")
        ),
        tabItem(tabName = "read", fluidRow(
          box(
            title = "Search Result",
            status = "lime",
            gradient = TRUE,
            background = "lime",
            solidHeader = TRUE,
            collapsible = TRUE,
            maximizable = TRUE,
            width = 8,
            DT::dataTableOutput("result_table")
          ),
          column(
            width = 4,
            tabBox(
              title = "Search Info",
              elevation = 2,
              id = "searchinfo",
              width = 12,
              collapsible = TRUE,
              closable = FALSE,
              type = "tabs",
              side = "right",
              status = "primary",
              solidHeader = TRUE,
              background = "primary",
              gradient = TRUE,
              selected = "Artists",
              tabPanel(
                "Artists",
                selectInput(
                  "search_genre",
                  "Genre",
                  choices = c(
                    "",
                    "Jazz",
                    "Pop",
                    "Rock",
                    "R&B",
                    "Country",
                    "Rap",
                    "K-Pop",
                    "Folk",
                    "Electronic",
                    "Reggaeton"
                  ),
                  selected = ""
                ),
                checkboxInput("search_independent", "Is Independent", FALSE),
                actionButton("search_artists_btn", "Search"),
              ),
              tabPanel(
                "Venues",
                sliderInput(
                  "search_capacity",
                  "Capacity",
                  min = 0,
                  max = 25000,
                  value = c(0, 2000)
                ),
                sliderInput(
                  "search_pricing",
                  "Pricing",
                  min = 0,
                  max = 120000,
                  value = c(1000, 5000)
                ),
                actionButton("search_venues_btn", "Search")
              ),
              tabPanel(
                "My Bookings",
                textInput("search_talent", "Talent Name"),
                dateRangeInput(
                  "search_date",
                  "Booking Date",
                  start = Sys.Date(),
                  end = Sys.Date() + 365
                ),
                actionButton("search_bookings_btn", "Search"),
              )
            ),
            box(
              title = "Interesting Fact about Music in DFW",
              status = "teal",
              gradient = TRUE,
              background = "teal",
              solidHeader = TRUE,
              collapsible = TRUE,
              closable = TRUE,
              width = 12,
              tags$img(width = "100%", src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0v_iWgtOLa2syrkM84agmpTlquefw3EyG9Q&s"),
              "The Dallas-Fort Worth (DFW) area is a hub for diverse music, blending deep roots with modern innovation. It's the birthplace of legends like Stevie Ray Vaughan and Ornette Coleman, and home to iconic venues like Deep Ellum, known for its vibrant live music scene. From the Dallas Symphony Orchestra at the Meyerson Symphony Center to festivals like Lights All Night, DFW offers everything from classical to cutting-edge electronic music, making it a must-visit destination for music lovers."
            )
          )
        )),
        tabItem(
          tabName = "update",
          box(
            title = "Update Booking",
            status = "fuchsia",
            background = "fuchsia",
            collapsible = TRUE,
            width = 12,
            gradient = TRUE,
            solidHeader = TRUE,
            numericInput(
              "update_booking_id",
              "Booking ID",
              min = 1,
              value = 0
            ),
            numericInput(
              "update_venue_id",
              "Venue ID",
              value = 0,
              min = 1
            ),
            numericInput(
              "update_artist_id",
              "Artist ID",
              value = 0,
              min = 1
            ),
            dateInput(
              "update_date",
              "New Booking Date",
              min = Sys.Date(),
              value = Sys.Date()
            ),
            actionButton("update_booking_btn", "Update Booking")
          )
        ),
        tabItem(
          tabName = "delete",
          tabBox(
            title = "Delete Info",
            elevation = 2,
            id = "deleteinfo",
            width = 12,
            collapsible = TRUE,
            closable = FALSE,
            type = "tabs",
            side = "right",
            status = "danger",
            solidHeader = TRUE,
            selected = "Delete Bookings",
            tabPanel(
              "Delete Bookings",
              numericInput(
                "delete_booking_id",
                "Booking ID to Delete",
                value = NULL,
                min = 1
              ),
              actionButton("delete_bookings_btn", "Delete Booking", status = "danger")
            ),
            tabPanel(
              "Delete User Profile",
              h2(
                "Danger: This will Remove the current user from the database completely!",
                style = "color:red;"
              ),
              actionButton("delete_user_btn", "Delete This User", status = "danger")
            )
          )
        ),
        tabItem(
          tabName = "analytics",
          fluidRow(
            valueBox(
              value = 50,
              width = 4,
              subtitle = "Artists",
              color = "primary",
              icon = icon("paint-brush"),
            ),
            valueBox(
              width = 4,
              value = "40",
              subtitle = "Venues",
              color = "warning",
              icon = icon("map-marker-alt")
            ),
            valueBox(
              width = 4,
              value = "28",
              subtitle = "Record Labels",
              color = "success",
              icon = icon("record-vinyl")
            )
          ),
          fluidRow(
            box(
              title = "Artist Popularity",
              status = "pink",
              background = "pink",
              collapsible = TRUE,
              width = 6,
              gradient = TRUE,
              solidHeader = TRUE,
              plotlyOutput("artist_plot", width = "100%", height = "auto")
            ),
            box(
              title = "Venue Popularity",
              status = "lightblue",
              background = "lightblue",
              collapsible = TRUE,
              width = 6,
              gradient = TRUE,
              solidHeader = TRUE,
              plotlyOutput("venue_plot", width = "100%", height = "auto")
            )
          )
        ),
        tabItem(tabName = "map", fluidRow(
          box(
            title = "Update Booking",
            status = "olive",
            background = "olive",
            collapsible = TRUE,
            width = 4,
            gradient = TRUE,
            solidHeader = TRUE,
            h2("Venue Availability Map"),
            dateInput(
              "venue_date",
              "Check venue availability by selecting a date below:",
              min = Sys.Date()
            ),
            selectInput(
              "map_type",
              "Choose the style of the map here:",
              choices = c(
                "OpenStreetMap",
                "Esri.WorldImagery",
                "OPNVKarte",
                "OpenTopoMap",
                "CyclOSM",
                "CartoDB.Voyager",
                "CartoDB.DarkMatter",
                "Esri.WorldStreetMap",
                "USGS.USImagery"
              ),
              selected = "OpenStreetMap"
            ),
            actionButton("view_map", "View Map")
          ),
          box(
            title = "Update Booking",
            status = "maroon",
            background = "maroon",
            collapsible = TRUE,
            width = 8,
            gradient = TRUE,
            solidHeader = TRUE,
            leafletOutput("map")
          )
        )),
        tabItem(tabName = "sqlchat", fluidRow(
          box(
            title = "Ask ChatGPT with Natural Language",
            status = "secondary",
            background = "secondary",
            collapsible = TRUE,
            width = 5,
            gradient = TRUE,
            solidHeader = TRUE,
            textInput(
              inputId = "question",
              label = "Enter Your Question:",
              placeholder = "e.g., How many Venues are there?",
              width = "100%"
            ),
            input_task_button(
              id = "generate_sql",
              label = "Generate SQL and Run",
              type = "success",
              style = "margin-top: 10px;"
            )
          ),
          box(
            title = "Generated Query Results",
            status = "lightblue",
            background = "lightblue",
            collapsible = TRUE,
            width = 7,
            gradient = TRUE,
            solidHeader = TRUE,
            h4("Generated SQL Query"),
            verbatimTextOutput("generated_sql", placeholder = TRUE),
            hr(),
            h4("Query Results"),
            DT::dataTableOutput("query_results")
          )
        ))
      )
    )
  )
)
# Server
server <- function(input, output, session) {
  # Reactive value for login status
  logged_in <- reactiveVal(FALSE)
  # Reactive value for the current user, Default as 0
  current_user <- reactiveVal(0)
  iv <- InputValidator$new()
  # Add validation rules
  iv$add_rule(
    "new_username",
    sv_regex(
      "^[a-zA-Z0-9_]{8,20}$",
      "Invalid Username"
    )
  )
  iv$add_rule(
    "new_password",
    sv_regex(
      "^[a-zA-Z0-9#?!@$%^&*-]{8,}$",
      "Invalid Password"
    )
  )
  iv$add_rule(
    "new_fullname",
    sv_regex(
      "^[a-zA-Z ]{8,}$",
      "Invalid Full Name"
    )
  )
  iv$add_rule(
    "new_email",
    sv_regex(
      "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$",
      "Invalid email address"
    )
  )
  iv$add_rule(
    "new_phone",
    sv_regex("^\\+\\d{1,3}-\\d{3}-\\d{3}-\\d{4}$", "Invalid phone number")
  )
  # Ensure all fields are filled
  iv$add_rule("new_username", sv_required())
  iv$add_rule("new_password", sv_required())
  iv$add_rule("new_fullname", sv_required())
  iv$add_rule("new_email", sv_required())
  iv$add_rule("new_phone", sv_required())
  iv$enable()
  notifications <- reactiveVal(list(
    notificationItem(
      inputId = "login_notification",
      text = "Please Login Or Sign Up",
      status = "warning"
    )
  ))
  # function to start a connection to the DATABASE
  connect <- function() {
    database <- dbConnect(
      RMySQL::MySQL(),
      dbname = Sys.getenv("DATABASE"),
      host = Sys.getenv("HOST"),
      user = Sys.getenv("USER"),
      password = Sys.getenv("PASSWORD")
    )
    return(database)
  }
  output$notification <- renderMenu({
    dropdownMenu(
      badgeStatus = "info",
      type = "notifications",
      .list = notifications()
    )
  })
  observeEvent(input$btn_home, {
    updateTabItems(session, inputId = "tabs", selected = "homepage")
  })
  observeEvent(input$btn_gallery, {
    updateTabItems(session, inputId = "tabs", selected = "gallery")
  })
  observeEvent(input$btn_create, {
    updateTabItems(session, inputId = "tabs", selected = "create")
  })
  observeEvent(input$btn_search, {
    updateTabItems(session, inputId = "tabs", selected = "read")
  })
  observeEvent(input$btn_update, {
    updateTabItems(session, inputId = "tabs", selected = "update")
  })
  observeEvent(input$btn_delete, {
    updateTabItems(session, inputId = "tabs", selected = "delete")
  })
  observeEvent(input$btn_analytics, {
    updateTabItems(session, inputId = "tabs", selected = "analytics")
  })
  observeEvent(input$btn_map, {
    updateTabItems(session, inputId = "tabs", selected = "map")
  })
  observeEvent(input$btn_sql_chat, {
    updateTabItems(session, inputId = "tabs", selected = "sqlchat")
  })
  observeEvent(input$dark_mode, {
    toast(
      title = if (input$dark_mode) {
        "Dark theme on!"
      } else {
        "Light theme on"
      },
      options = list(
        position = "topRight",
        class = "bg-warning",
        autohide = TRUE
      )
    )
  })
  output$user <- renderUser({
    dashboardUser(
      name = "Unauthorized User",
      image = "https://png.pngtree.com/png-clipart/20230804/original/pngtree-access-denied-icon-problem-icon-round-vector-picture-image_9658859.png",
      title = "You do not have access yet",
      subtitle = "Please Consider Login or Sign Up"
    )
  })
  # Check login credentials
  observeEvent(input$login_btn, {
    db <- connect()
    on.exit(dbDisconnect(db), add = TRUE)
    query <- sprintf(
      "SELECT * FROM User WHERE username = '%s' AND password = '%s'",
      input$username,
      input$password
    )
    res <- dbGetQuery(db, query)
    if (nrow(res) == 1) {
      new_notification <- notificationItem(
        text = paste("User signed in at", format(Sys.time(), "%H:%M:%S")),
        status = "success",
        icon = icon("check-circle")
      )
      notifications(c(notifications(), list(new_notification)))
      output$user <- renderUser({
        dashboardUser(
          name = res["username"],
          image = "https://cdn.pixabay.com/photo/2020/07/14/13/07/icon-5404125_1280.png",
          title = res["full_name"],
          subtitle = res["title"],
          dashboardUserItem(paste("Email:", res["email"]), width = 12),
          dashboardUserItem(paste("Phone Number:", res["phone"]), width = 12),
          footer = fluidRow(column(
            width = 12,
            align = "center",
            actionButton("logout", "Sign Out", icon = icon("sign-out"))
          ))
        )
      })
      logged_in(TRUE)
      current_user(res["user_id"])
      showNotification("Login successful!", type = "message")
      # Display Welcome Page after logined in
      output$welcome_ui <- renderUI({
        tagList(
          h1(
            sprintf("Welcome to DFW Music Booking App, %s🤗!", res["full_name"]),
            style = "text-align: center;"
          ),
          h6(
            "Discover and Book the Best Live Music in DFW – From Local Gems to Headlining Acts, Your Next Event Starts Here!",
            style = "text-align: center;"
          ),
          img(
            width = "50%",
            height = "auto",
            src = "https://i.ibb.co/YDJtLC1/Whats-App-Image-2024-12-11-at-16-19-42.jpg",
            style = "display: block; margin: 0 auto;"
          ),
          h3("Navigate To ", style = "text-align: center;"),
          fluidRow(
            column(
              12,
              align = "center",
              # Center align all buttons
              actionButton(
                "btn_gallery",
                "Gallery",
                icon = icon("images"),
                status = "secondary"
              ),
              actionButton(
                "btn_create",
                "Create",
                icon = icon("plus"),
                status = "primary"
              ),
              actionButton(
                "btn_search",
                "Search",
                icon = icon("search"),
                status = "info"
              ),
              actionButton(
                "btn_update",
                "Update",
                icon = icon("edit"),
                status = "warning"
              ),
              actionButton(
                "btn_delete",
                "Delete",
                icon = icon("trash"),
                status = "danger"
              ),
              actionButton(
                "btn_analytics",
                "Analytics",
                icon = icon("chart-bar"),
                status = "success"
              ),
              actionButton(
                "btn_map",
                "Map",
                icon = icon("map-marker-alt"),
                status = "success"
              ),
              actionButton(
                "btn_sql_chat",
                "SQL Chat",
                icon = icon("comments"),
                status = "success"
              )
            )
          )
        )
      })
    } else {
      new_notification <- notificationItem(
        text = "Invalid Username or Password",
        status = "danger",
        icon = icon("times-circle")
      )
      notifications(c(notifications(), list(new_notification)))
      showNotification("Invalid Username or Password", type = "error")
    }
  })
  output$loggedIn <- reactive({
    logged_in()
  })
  outputOptions(output, "loggedIn", suspendWhenHidden = FALSE)
  # Pop up modal for sign up
  observeEvent(input$signup_btn, {
    showModal(
      modalDialog(
        title = "Fill Your Information to Sign Up",
        easyClose = TRUE,
        textInput("new_username", "Username", placeholder = "Input Your Username"),
        passwordInput("new_password", "Password", placeholder = "Input Your Password"),
        textInput("new_fullname", "Full Name", placeholder = "Input Your Full Legal Name"),
        selectInput(
          "new_title",
          "Choose your title:",
          choices = c("manager", "artist/indepenent", "producer", "talent scout"),
          selected = "manager"
        ),
        textInput("new_email", "Email", placeholder = "Input Your Email"),
        textInput(
          "new_phone",
          "Phone Number (Format: +1-934-469-6957)",
          placeholder = "Input Your Phone Number"
        ),
        footer = tagList(
          actionButton("submit_signup", "Sign Up"),
          modalButton("Dismiss")
        )
      )
    )
  })
  # Create New Users
  observeEvent(input$submit_signup, {
    iv$validate()
    if (!iv$is_valid()) {
      showNotification("Your Information is invalid!", type = "error")
      new_notification <- notificationItem(
        text = "Sign Up Failed! Please Try again",
        status = "danger",
        icon = icon("times-circle")
      )
      notifications(c(notifications(), list(new_notification)))
    } else {
      db <- connect()
      on.exit(dbDisconnect(db), add = TRUE)
      query <- sprintf(
        "INSERT INTO User (username, password, full_name, title,email,phone) VALUES ('%s','%s','%s','%s','%s','%s');",
        input$new_username,
        input$new_password,
        input$new_fullname,
        input$new_title,
        input$new_email,
        input$new_phone
      )
      new_notification <- notificationItem(
        text = "You have successfully signed up!",
        status = "success",
        icon = icon("check-circle")
      )
      notifications(c(notifications(), list(new_notification)))
      dbExecute(db, query)
      showNotification("You have successfully signed up!", type = "message")
    }
  })
  # Create the Artist Gallery
  output$artists <- renderUI({
    db <- connect()
    on.exit(dbDisconnect(db), add = TRUE)
    query <- "SELECT * FROM Artist"
    res <- dbGetQuery(db, query)
    artists <- lapply(1:nrow(res), function(i) {
      column(
        width = 3,
        box(
          title = sprintf("%s (%s)", res[i, ]["name"], res[i, ]["genre"]),
          status = "navy",
          gradient = TRUE,
          background = "navy",
          solidHeader = TRUE,
          collapsible = TRUE,
          width = 12,
          img(
            src = res[i, ]["image"],
            width = "100%",
            height = "300px"
          ),
          br(),
          fluidRow(
            column(
              width = 4,
              align = "center",
              a(href = sprintf("https://%s", res[i, ]["website"]), span("", icon("globe")))
            ),
            column(
              width = 4,
              align = "center",
              a(href = sprintf("mailto:%s", res[i, ]["email"]), span("", icon("envelope")))
            ),
            column(
              width = 4,
              align = "center",
              a(href = sprintf("tel:%s", res[i, ]["phone_number"]), span("", icon("phone")))
            )
          )
        )
      )
    })
    tagList(artists)
  })
  # Create Booking
  observeEvent(input$create_booking_btn, {
    db <- connect()
    on.exit(dbDisconnect(db), add = TRUE)
    name <- dbGetQuery(db, paste("SELECT name FROM Artist WHERE artist_id =", input$artist_id))["name"]
    query <- sprintf(
      "INSERT INTO Booking (user_id, talent, venue_id, date ,status ,artist_id) VALUES ('%s','%s','%s','%s','%s','%s');",
      current_user(),
      name,
      input$venue_id,
      input$date,
      "booked",
      input$artist_id
    )
    res <- dbExecute(db, query)
    new_notification <- notificationItem(
      text = paste(
        sprintf("New Booking is Created at"),
        format(Sys.time(), "%H:%M:%S")
      ),
      status = "success",
      icon = icon("check-circle")
    )
    notifications(c(notifications(), list(new_notification)))
    showNotification("Your New Booking is Created Successfully!", type = "message")
  })
  # Read/Search Bookings
  observeEvent(input$search_artists_btn, {
    db <- connect()
    on.exit(dbDisconnect(db), add = TRUE)
    query <- sprintf(
      "SELECT * FROM Artist WHERE genre LIKE '%%%s%%' AND is_independent = '%s'",
      input$search_genre,
      as.numeric(input$search_independent)
    )
    res <- dbGetQuery(db, query)
    output$result_table <- renderDataTable(res, options = list(scrollX = TRUE))
  })
  observeEvent(input$search_venues_btn, {
    db <- connect()
    on.exit(dbDisconnect(db), add = TRUE)
    query <- sprintf(
      "SELECT * FROM Venue WHERE capacity BETWEEN '%s' AND '%s' AND pricing BETWEEN '%s' AND '%s'",
      input$search_capacity[[1]],
      input$search_capacity[[2]],
      input$search_pricing[[1]],
      input$search_pricing[[2]]
    )
    res <- dbGetQuery(db, query)
    output$result_table <- renderDataTable(res, options = list(scrollX = TRUE))
  })
  # Search existing bookings
  observeEvent(input$search_bookings_btn, {
    db <- connect()
    on.exit(dbDisconnect(db), add = TRUE)
    query <- sprintf(
      "SELECT * FROM Booking WHERE status = 'booked' AND date BETWEEN '%s' AND '%s' AND talent LIKE '%%%s%%' AND user_id = %s",
      input$search_date[[1]],
      input$search_date[[2]],
      input$search_talent,
      current_user()
    )
    res <- dbGetQuery(db, query)
    output$result_table <- renderDataTable(res, options = list(scrollX = TRUE))
  })
  # Update Existing Booking
  observeEvent(input$update_booking_btn, {
    db <- connect()
    on.exit(dbDisconnect(db), add = TRUE)
    name <- dbGetQuery(db, paste("SELECT name FROM Artist WHERE artist_id =", input$update_artist_id))["name"]
    query <- sprintf(
      "UPDATE Booking SET talent = '%s', venue_id = %s,artist_id = %s,date = '%s' WHERE booking_id = %s AND user_id = %s",
      name,
      input$update_venue_id,
      input$update_artist_id,
      input$update_date,
      input$update_booking_id,
      current_user()
    )
    dbExecute(db, query)
    new_notification <- notificationItem(
      text = paste("Updated Booking at", format(Sys.time(), "%H:%M:%S")),
      status = "success",
      icon = icon("check-circle")
    )
    notifications(c(notifications(), list(new_notification)))
    showNotification("Booking updated successfully!", type = "message")
  })
  # Delete Booking and Users
  observeEvent(input$delete_bookings_btn, {
    db <- connect()
    on.exit(dbDisconnect(db), add = TRUE)
    if (is.na(input$delete_booking_id)) {
      query <- sprintf("DELETE FROM Booking WHERE user_id = %s", current_user())
    } else {
      query <- sprintf(
        "DELETE FROM Booking WHERE booking_id = %s AND user_id = %s",
        input$delete_booking_id,
        current_user()
      )
    }
    dbExecute(db, query)
    new_notification <- notificationItem(
      text = paste("Deleted Booking at", format(Sys.time(), "%H:%M:%S")),
      status = "success",
      icon = icon("check-circle")
    )
    notifications(c(notifications(), list(new_notification)))
    showNotification("Booking deleted successfully!", type = "message")
  })
  # Server side code for SQL Chat
  observeEvent(input$generate_sql, {
    db <- connect()
    on.exit(dbDisconnect(db), add = TRUE)
    question <- input$question
    response <- py$full_chain_response(question)
    # Extract SQL query and results
    generated_sql <- response$query
    query_results <- response$response
    # Display SQL and results
    output$generated_sql <- renderText({
      paste(generated_sql)
    })
    output$generated_results <- renderText({
      paste("Generated results:\n", query_results)
    })
    # Submit the fetch query and disconnect
    data <- dbGetQuery(db, generated_sql)
    # display 10 rows initially
    output$query_results <- DT::renderDataTable(DT::datatable(data, options = list(
      pageLength = 10, scrollX = TRUE
    )))
  })
  # Delete User Profile and Its Bookings from the database
  observeEvent(input$delete_user_btn, {
    db <- connect()
    on.exit(dbDisconnect(db), add = TRUE)
    query_booking <- sprintf("DELETE FROM Booking WHERE user_id = %s", current_user())
    query <- sprintf("DELETE FROM User WHERE user_id = %s", current_user())
    dbExecute(db, query_booking)
    dbExecute(db, query)
    refresh()
  })
  observeEvent(input$logout, {
    refresh()
  })
  # Display Map for Analytics
  observeEvent(input$view_map, {
    db <- connect()
    on.exit(dbDisconnect(db), add = TRUE)
    query <- sprintf(
      "SELECT DISTINCT name,latitude,longitude,address,metropolitan,capacity,pricing FROM Booking JOIN Venue USING(venue_id)"
    )
    data <- dbGetQuery(db, query)
    query_booked <- sprintf(
      "SELECT DISTINCT name,latitude,longitude,address,metropolitan,capacity,pricing,user_id,booking_id FROM Booking JOIN Venue USING(venue_id) WHERE status='booked' AND date = '%s';",
      input$venue_date
    )
    data_booked <- dbGetQuery(db, query_booked)
    output$map <- renderLeaflet({
      leaflet() %>%
        addProviderTiles(providers[[input$map_type]]) %>%
        addAwesomeMarkers(
          data = data,
          lng = ~ as.numeric(longitude),
          lat = ~ as.numeric(latitude),
          popup = ~ paste(
            "<b>Name:</b>",
            name,
            "<br>",
            "<b>Address:</b>",
            address,
            "<br>",
            "<b>Metropolitan:</b>",
            metropolitan,
            "<br>",
            "<b>Capacity:</b>",
            capacity,
            "<br>",
            "<b>Pricing:</b>",
            "$",
            pricing
          ),
          icon = awesomeIcons(icon = "music", markerColor = "green")
        ) %>%
        addAwesomeMarkers(
          data = data_booked,
          lng = ~ as.numeric(longitude),
          lat = ~ as.numeric(latitude),
          popup = ~ paste(
            "<b>Name:</b>",
            name,
            "<br>",
            "<b>Address:</b>",
            address,
            "<br>",
            "<b>Metropolitan:</b>",
            metropolitan,
            "<br>",
            "<b>Capacity:</b>",
            capacity,
            "<br>",
            "<b>Pricing:</b>",
            "$",
            pricing,
            "<br>",
            "<b>User ID:</b>",
            user_id,
            "<br>",
            "<b>Booking ID:</b>",
            booking_id
          ),
          icon = awesomeIcons(icon = "music", markerColor = "red")
        )
    })
  })
  # Interactive Artist Popularity Plot
  output$artist_plot <- renderPlotly({
    db <- connect()
    on.exit(dbDisconnect(db), add = TRUE)
    popularity <- dbGetQuery(
      db,
      "SELECT a.name AS artist_name, COUNT(b.booking_id) AS booking_count
                     FROM Booking b
                     INNER JOIN Artist a ON b.artist_id = a.artist_id
                     GROUP BY a.name
                     ORDER BY booking_count DESC;"
    )
    ggplot_obj <- ggplot(popularity, aes(x = reorder(artist_name, -booking_count), y = booking_count)) +
      geom_bar(stat = "identity", fill = "pink") +
      theme_minimal() +
      coord_flip() +
      labs(title = "Artist Popularity", x = "Artist Name", y = "Number of Bookings")
    ggplotly(ggplot_obj) # Make the plot interactive
  })
  # Interactive Venue Popularity Plot
  output$venue_plot <- renderPlotly({
    db <- connect()
    on.exit(dbDisconnect(db), add = TRUE)
    popularity <- dbGetQuery(
      db,
      "SELECT v.name AS venue_name, COUNT(b.booking_id) AS booking_count
                    FROM Booking b
                     INNER JOIN Venue v ON b.venue_id = v.venue_id
                     GROUP BY v.name
                     ORDER BY booking_count DESC"
    )
    ggplot_obj <- ggplot(popularity, aes(x = reorder(venue_name, -booking_count), y = booking_count)) +
      geom_bar(stat = "identity", fill = "lightblue") +
      theme_minimal() +
      coord_flip() +
      labs(title = "Venue Popularity", x = "Venue Name", y = "Number of Bookings")
    ggplotly(ggplot_obj) # Make the plot interactive
  })
}
# Run the app
shinyApp(ui, server)
