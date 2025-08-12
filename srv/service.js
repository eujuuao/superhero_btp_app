const cds = require('@sap/cds');
const axios = require('axios');

module.exports = cds.service.impl(async function () {

    const { SuperHeroes } = this.entities;

    // Handler para servir a imagem.
    // Este handler é acionado para CADA leitura da entidade SuperHeroes.
    this.after('READ', SuperHeroes, async (data) => {
        // Garante que estamos trabalhando com um array, mesmo que seja um único resultado.
        const heroes = Array.isArray(data) ? data : [data];

        // Se não houver heróis, não faz nada.
        if (heroes.length === 0) return;

        // Para cada herói, se ele tiver uma URL de imagem, busca o stream.
        await Promise.all(heroes.map(async (hero) => {
            if (hero.imageUrl) {
                try {
                    const response = await axios.get(hero.imageUrl, { responseType: 'stream' });
                    // Atribui o stream da imagem ao campo. O CAP se encarrega do resto.
                    hero.imageUrl = response.data;
                } catch (error) {
                    console.error(`Erro ao buscar imagem para o herói ${hero.ID}:`, error.message);
                    hero.imageUrl = null; // Define como nulo em caso de erro.
                }
            }
        }));
    });
});
