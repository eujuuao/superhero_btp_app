const axios = require('axios');

async function testService() {
  try {
    const response = await axios.get('http://localhost:4004/service/superhero_btp_app/SuperHeroes');
    console.log('Status:', response.status);
    console.log('Dados recebidos:', JSON.stringify(response.data, null, 2));
  } catch (error) {
    console.error('Erro ao chamar o serviço:', error.message);
    if (error.response) {
      console.error('Status da resposta:', error.response.status);
      console.error('Dados da resposta:', error.response.data);
    } else {
      console.error(error);
    }
  }
}

testService();
