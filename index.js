const express = require('express');
const longestDurationMoviesRouter = require('./routes/longestDurationMovies');
const newMovieRouter = require('./routes/newMovie');
const topRatedMoviesRouter = require('./routes/topRatedMovies');
const genreMoviesWithSubtotalsRouter = require('./routes/genreMoviesWithSubtotals');
const updateRuntimeMinutesRouter = require('./routes/updateRuntimeMinutes');

const app = express();
app.use(express.json());
const port = 5000 || process.env.PORT;

const { swaggerServe, swaggerSetup } = require('./config');

app.use('/api-docs', swaggerServe, swaggerSetup);
app.use('/api/v1', (req, res) => {
    // Not needed anymore. Simply redirect to /api-docs
    /*
    res.send(`
        <h1>Welcome to Movies Rating Backend RestAPI</h1>
        <p>Please visit <a href="http://localhost:5000/api-docs"> /api-docs </a> for API Documentation</p>
    `);
    */

    //redirecting to api-docs
    res.redirect('/api-docs');
});
app.use('/api/v1/longest-duration-movies', longestDurationMoviesRouter);
app.use('/api/v1/new-movie', newMovieRouter);
app.use('/api/v1/top-rated-movies', topRatedMoviesRouter);
app.use('/api/v1/genre-movies-with-subtotals', genreMoviesWithSubtotalsRouter);
app.use('/api/v1/update-runtime-minutes', updateRuntimeMinutesRouter);

app.listen(port, () => {
    console.log(`Server running on port ${port}`);
    console.log(
        `Please visit http://localhost:${port}/api-docs for API Documentation`
    );
});
