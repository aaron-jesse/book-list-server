'use strict'

// Application dependencies

const express = require('express');
const cors = require('cors');
const pg = require('pg');
require('dotenv').config();

// Application Setup
const app = express();
const PORT = process.env.PORT || 3000;
const CLIENT_URL = process.env.CLIENT_URL;
const DATABASE_URL = process.env.DATABASE_URL;
const conString = 'postgres:postgres:82469173@localhost:5432/books_app';

// Database Setup
const client = new pg.Client(conString);
client.connect();
client.on('error', err => console.error(err));

// Application Middleware
app.use(cors());

// API Endpoints

// app.get('*', (req, res) => res.redirect(CLIENT_URL));
app.listen(PORT, () => console.log(`Listening on port: ${PORT}`));

app.get('/test', (req, res) => {
 res.send('Skynet online');
});

app.get('/api/v1/books', (req, res) => {
 client.query(`SELECT book_id, title, author, image, isbn FROM books;`)
   .then(results => res.send(results.rows))
   .catch(console.error);
});
