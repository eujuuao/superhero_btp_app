const cds = require('@sap/cds');
const superheroes_Logic = require('./handlers/superheroes');

console.log('Service is starting...');

module.exports = cds.service.impl(function () {
    this.after('READ', 'SuperHeroes', async (results, request) => {
        await superheroes_Logic(results, request);
    });
});
