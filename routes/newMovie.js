const express = require('express');
const db = require('../db');

const router = express.Router();

router.post('/', async (req, resp) => {
  const { tconst, titleType, primaryTitle, runtimeMinutes, genres, averageRating, numVotes } = req.body;
  
  try {
    let result = await db.newMovie(tconst, titleType, primaryTitle, runtimeMinutes, genres, averageRating, numVotes);
    resp.send(result);
  } catch (error) {
    resp.status(500).send('Internal Server Error');
  }
});

module.exports = router;
