const cds = require('@sap/cds');

module.exports = cds.service.impl(function () {
 
  this.after('READ', 'superheroes', (results) => {

  // Função para atualizar a descrição
  const updateDescription = (hero) => {
    if (hero.age > 500 && !hero.description?.startsWith("An Immortal")) {
      hero.description = `An Immortal. ${hero.description} || ''}`;
    }
  };
  // Se for uma lista de herois
  if(Array.isArray(results)) {
    results.forEach(updateDescription);
  } else {
    // Se for um único heroi
    updateDescription(results);
    }
  });
});