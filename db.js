require('dotenv').config();
const mysql = require('mysql');

const db = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
});

db.connect((err) => {
    if (err) {
        console.error('Error connecting to database:', err);
        return;
    }
    console.log('Database connected successfully');
});

const getLongestDurationMovies = () => {
    return new Promise((resolve, reject) => {
        let query = `SELECT t.tconst, t.primaryTitle, t.runtimeMinutes, t.genres
    FROM movies t
    ORDER BY t.runtimeMinutes DESC
    LIMIT 10;`;

        db.query(query, (error, result, fields) => {
            if (error) {
                reject(error);
            } else {
                resolve(result);
            }
        });
    });
};

const newMovie = (
    tconst,
    titleType,
    primaryTitle,
    runtimeMinutes,
    genres,
    averageRating,
    numVotes
) => {
    return new Promise((resolve, reject) => {
        let moviesDetails = {
            tconst: tconst,
            titleType: titleType,
            primaryTitle: primaryTitle,
            runtimeMinutes: runtimeMinutes,
            genres: genres,
        };
        let query1 = `INSERT INTO movies SET ?`;
        db.query(query1, moviesDetails, (error1, result1, fields1) => {
            if (error1) {
                reject(error1);
            } else if (result1.affectedRows === 1) {
                let ratingsDetails = {
                    tconst: tconst,
                    averageRating: averageRating,
                    numVotes: numVotes,
                };
                let query2 = `INSERT INTO ratings SET ?`;
                db.query(query2, ratingsDetails, (error2, result2, fields2) => {
                    if (error2) {
                        reject(error2);
                        console.log(error2);
                    } else {
                        resolve('New Movie entered successfully');
                    }
                });
            }
        });
    });
};

const getTopRatedMovies = () => {
    return new Promise((resolve, reject) => {
        let query = `SELECT m.tconst, m.primaryTitle, m.genres, r.averageRating
    FROM movies AS m
    JOIN ratings AS r ON m.tconst = r.tconst
    WHERE r.averageRating > 6.0
    ORDER BY r.averageRating DESC`;

        db.query(query, (error, result, fields) => {
            if (error) {
                reject(error);
            } else {
                resolve(result);
            }
        });
    });
};

let genreMoviesWithSubtotals = () => {
    return new Promise((resolve, reject) => {
        let query = `SELECT
      CASE WHEN m.primaryTitle IS NULL THEN '' ELSE m.genres END AS genres,
      CASE WHEN m.primaryTitle IS NULL THEN 'TOTAL' ELSE m.primaryTitle END AS primaryTitle,
      SUM(r.numVotes) AS totalVotes
    FROM movies m
    JOIN ratings r ON m.tconst = r.tconst
    GROUP BY m.genres, m.primaryTitle
    WITH ROLLUP
    HAVING primaryTitle IS NOT NULL OR genres IS NOT NULL;`;

        db.query(query, (error, result, fields) => {
            if (error) {
                reject(error);
            } else {
                resolve(result);
            }
        });
    });
};

const updateRuntimeMinutes = () => {
    return new Promise((resolve, reject) => {
        let query = `UPDATE movies
      SET runtimeMinutes = 
        CASE
          WHEN genres = 'Documentary' THEN runtimeMinutes + 15
          WHEN genres = 'Animation' THEN runtimeMinutes + 30
          ELSE runtimeMinutes + 45
        END`;

        db.query(query, (error, result, fields) => {
            if (error) {
                reject(error);
            } else {
                resolve(result);
            }
        });
    });
};

module.exports = {
    getLongestDurationMovies,
    newMovie,
    getTopRatedMovies,
    genreMoviesWithSubtotals,
    updateRuntimeMinutes,
};
