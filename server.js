'use strict'

// Application dependencies
require('dotenv').config();

const express = require('express');
const cors = require('cors');
const pg = require('pg');


// Application Setup
const app = express();
const PORT = process.env.PORT;
const CLIENT_URL = process.env.CLIENT_URL;
const DATABASE_URL = process.env.DATABASE_URL;
// const conString = 'postgres:postgres:82469173@localhost:5432/books_app';

// Database Setup
const client = new pg.Client(DATABASE_URL);
client.connect();
client.on('error', err => console.error(err));

// Application Middleware
app.use(cors());

// API Endpoints

// app.get('*', (req, res) => res.redirect(CLIENT_URL));
// app.get('*', (req, res) => {
// res.send('Welcome to database landing page') do some stuff;
// });

app.listen(PORT, () => console.log(`Listening on port: ${PORT}`));

app.get('/test', (req, res) => {
 res.send('Skynet online');
});

app.get('/api/v1/books', (req, res) => {
 client.query(`SELECT book_id, title, author, image, isbn FROM books;`)
   .then(results => res.send(results.rows))
   .catch(console.error);
});

app.get('api/v1/books/:id', (req, res) => {
  client.query(`
  SELECT * from BOOKS where book_id=$1
  `,
  [request.params.id]
).then(results => res.send(results.rows));

});

app.post('api/v1/books', (req, res) => {
  client.query(`
    INSERT INTO books (book_id, title, author, image, isbn)
    VALUES($1, $2, $3, $4, $5),
    [request.body.book_id, request.body.title, request.body.author, request.body.author, request.body.image, request.body.isbn]
 `)
})
