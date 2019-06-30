#language: pt

Funcionalidade: Conversor de moedas
Eu como agente de viagens
Gostaria de coverter valores de uma moeda para outra
Para gerar orçamentos com mais agilidade


Cenário: Consultar que 4000 reais é menor que 1000 dólares
Dado que acesso o site da UOL
E acesso a página de Economia
Quando converto 4000 reais para moeda dólar
Então verifico que o resultado é menor que 1000 dólares
