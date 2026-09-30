-- drop and create database
-- ------------------------------------------------------------
DROP DATABASE IF EXISTS sandbox_task_list;
CREATE DATABASE sandbox_task_list;

-- connect to database
-- ------------------------------------------------------------
\c sandbox_task_list

-- create table
-- ------------------------------------------------------------
CREATE TABLE tasks (
  id bigint GENERATED ALWAYS AS IDENTITY,
  is_completed BOOLEAN DEFAULT FALSE,
  title VARCHAR(255) NOT NULL
);

-- insert rows
-- ------------------------------------------------------------
INSERT INTO tasks (is_completed, title) VALUES
(TRUE, 'Update resume'),
(TRUE, 'Develop task list application'),
(DEFAULT, 'Apply to jobs'),
(DEFAULT, 'Get a job'),
(DEFAULT, 'Take over the world');
