const express = require('express');
const getAllTypesRouter = require('./routes/getAllTypes');
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
app.use('/api/v1/get-all-types', getAllTypesRouter);
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
