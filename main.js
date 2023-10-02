const parser = require('./gramatica.js');

const input = "2*(3+4)";

try {
  const result = parser.parse(input);
  console.log("Resultado:", result);
} catch (error) {
  console.error("Erro de análise:", error.message);
}


