const cds = require("@sap/cds");

module.exports = async function (results) {
  if (!results) return;
  // Função para atualizar a descrição do herói
  const updateDescription = (hero) => {
    // Se idade > 500 e descrição não começa com "An Immortal"
    if (hero.age > 500 && !hero.description?.startsWith("An Immortal")) {
      // Atualiza descrição, evita undefined com || ''
      hero.description = `An Immortal. ${hero.description || ""}`;
    }
  };

  // Se resultados forem uma lista, aplica para cada
  if (Array.isArray(results)) {
    results.forEach(updateDescription);
  } else {
    // Senão, é um objeto único
    updateDescription(results);
  }
};
