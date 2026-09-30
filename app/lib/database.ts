import { Pool } from "pg";

export const pool = new Pool({
  database: process.env.DB_DATABASE,
  host: process.env.DB_HOST,
  max: 10, // set maximum number of clients
  password: process.env.DB_PASSWORD,
  user: process.env.DB_USER,
});
