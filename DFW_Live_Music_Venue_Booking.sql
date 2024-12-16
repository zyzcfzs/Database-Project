-- Create the database
CREATE DATABASE IF NOT EXISTS DFW_Live_Music_Venue_Booking;
USE DFW_Live_Music_Venue_Booking;
-- Create User table
CREATE TABLE IF NOT EXISTS User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    full_name VARCHAR(100),
    title VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    label_id INT,
    rep_artist_id INT,
    FOREIGN KEY (label_id) REFERENCES Record_Label(label_id) ON DELETE
    SET NULL ON UPDATE CASCADE,
        FOREIGN KEY (rep_artist_id) REFERENCES Artist(artist_id) ON DELETE
    SET NULL ON UPDATE CASCADE
);
-- Create Booking table
CREATE TABLE IF NOT EXISTS Booking (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NULL,
    talent VARCHAR(100),
    venue_id INT NULL,
    date DATE NOT NULL,
    status ENUM('Pending', 'Confirmed', 'Cancelled') NOT NULL,
    artist_id INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE
    SET NULL ON UPDATE CASCADE,
        FOREIGN KEY (venue_id) REFERENCES Venue(venue_id) ON DELETE
    SET NULL ON UPDATE CASCADE,
        FOREIGN KEY (artist_id) REFERENCES Artist(artist_id) ON DELETE
    SET NULL ON UPDATE CASCADE
);
-- Create Artist table
CREATE TABLE IF NOT EXISTS Artist (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    is_independent TINYINT(1) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    website VARCHAR(100),
    label_id INT,
    image VARCHAR(2000),
    FOREIGN KEY (label_id) REFERENCES Record_Label(label_id) ON DELETE
    SET NULL ON UPDATE CASCADE
);
-- Create Record_Label table
CREATE TABLE IF NOT EXISTS Record_Label (
    label_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    website VARCHAR(100)
);
-- Create Venue table
CREATE TABLE IF NOT EXISTS Venue (
    venue_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    metropolitan VARCHAR(50),
    latitude FLOAT,
    longitude FLOAT,
    address TEXT,
    capacity INT,
    pricing FLOAT,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    website VARCHAR(100)
);