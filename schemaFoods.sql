 DROP DATABASE IF EXISTS favorite_db;
-- Creates the "favorite_db" database --
CREATE DATABASE favorite_db;
-- Makes it so all of the following code will affect favorite_db --
USE favorite_db;
-- Creates the table "favorite_foods" within favorite_db --
CREATE TABLE favorite_foods (
  -- Makes a string column called "food" which cannot contain null --
  food VARCHAR(50) NOT NULL,
  -- Makes an numeric column called "score" --
  score INTEGER(10)
);