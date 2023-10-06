const express = require('express');
const longestDurationMoviesRouter = require('./routes/longestDurationMovies');
const newMovieRouter = require('./routes/newMovie');
const topRatedMoviesRouter = require('./routes/topRatedMovies');
const genreMoviesWithSubtotalsRouter = require('./routes/genreMoviesWithSubtotals');
const updateRuntimeMinutesRouter = require('./routes/updateRuntimeMinutes');

const app = express();
app.use(express.json());

app.use('/api/v1/longest-duration-movies', longestDurationMoviesRouter);
app.use('/api/v1/new-movie', newMovieRouter);
app.use('/api/v1/top-rated-movies', topRatedMoviesRouter);
app.use('/api/v1/genre-movies-with-subtotals', genreMoviesWithSubtotalsRouter);
app.use('/api/v1/update-runtime-minutes', updateRuntimeMinutesRouter);

app.listen(5000, () => {
    console.log('Server running on port 5000');
});
