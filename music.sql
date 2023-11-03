-- Create the database
CREATE DATABASE IF NOT EXISTS musicdb;
USE musicdb;

-- Create tables
CREATE TABLE albums (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        name VARCHAR(255) NOT NULL,
                        release_year INT
);

CREATE TABLE music (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       album_id INT NOT NULL,
                       title VARCHAR(255) NOT NULL,
                       artist VARCHAR(255) NOT NULL,
                       duration INT
);

-- Insert sample data
-- Insert random album names and release years
INSERT INTO albums (name, release_year) VALUES
                                            ('Album 1', 2000),
                                            ('Album 2', 2005),
                                            ('Album 3', 2010),
                                            ('Album 4', 2015),
                                            ('Album 5', 2020);

-- Insert random music data
INSERT INTO music (album_id, title, artist, duration) VALUES
                                                          (1, 'Song A', 'Artist 1', 180),
                                                          (1, 'Song B', 'Artist 2', 210),
                                                          (1, 'Song C', 'Artist 3', 195),
                                                          (2, 'Song X', 'Artist 4', 220),
                                                          (2, 'Song Y', 'Artist 5', 195),
                                                          (3, 'Song P', 'Artist 6', 210),
                                                          (3, 'Song Q', 'Artist 7', 200),
                                                          (3, 'Song R', 'Artist 8', 220),
                                                          (4, 'Song M', 'Artist 9', 185),
                                                          (4, 'Song N', 'Artist 10', 210),
                                                          (5, 'Song Z', 'Artist 11', 190);

-- Insert additional random album names and release years
INSERT INTO albums (name, release_year) VALUES
                                            ('Album 6', 2025),
                                            ('Album 7', 2030),
                                            ('Album 8', 2035);

-- Insert more random music data
INSERT INTO music (album_id, title, artist, duration) VALUES
                                                          (6, 'Song E', 'Artist 12', 195),
                                                          (6, 'Song F', 'Artist 13', 210),
                                                          (7, 'Song T', 'Artist 14', 180),
                                                          (7, 'Song U', 'Artist 15', 220),
                                                          (8, 'Song G', 'Artist 16', 200),
                                                          (8, 'Song H', 'Artist 17', 205);

