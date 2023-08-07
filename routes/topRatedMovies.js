const express = require('express');
const db = require('../db');

const router = express.Router();

router.get('/', async (req, resp) => {
  try {
    let result = await db.getTopRatedMovies();
    resp.send(result);
  } catch (error) {
    resp.status(500).send('Internal Server Error');
  }
});

module.exports = router;
