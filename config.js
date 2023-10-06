const swaggerUI = require('swagger-ui-express');
const YAML = require('yamljs');
const swaggerJSDocs = YAML.load('api.yaml');

/* 
const options = {
    customCss: '.swagger-ui .topbar { display: none }',
    customfavIcon: '../favicon.ico',
    customSiteTitle: 'Movies-Rating-Backend-RestAPI',
};
 */

module.exports = {
    swaggerServe: swaggerUI.serve,
    swaggerSetup: swaggerUI.setup(swaggerJSDocs),
};
