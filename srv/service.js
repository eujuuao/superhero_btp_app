const cds = require('@sap/cds');
const superheroes_Logic = require('./handlers/superheroes');

module.exports = cds.service.impl(function () {
    this.after('READ', 'SuperHeroes', async (results, request) => {
        await superheroes_Logic(results, request);
    });
});
