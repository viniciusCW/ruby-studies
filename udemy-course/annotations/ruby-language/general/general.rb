"A ordem das definições importa, ruby é bem linear na leitura do código"

"Os métodos que possuem '!' no final do nome, significa q o método altera
o valor da variável original"

x = [1, 2, 3]

p x.reverse
p x

x.reverse!

p x

###########################################################################################

"Operador de comparação spaceship <=>
Ele retorna -1 quando o valor da esquerda é menor
Ele retorna 1 quando o valor da direita é menor
e 0 quando são iguais
"

p 1 <=> 2
p 1 <=> 1
p 2 <=> 1

###########################################################################################

"Variáveis constantes são declaradas apenas definindo a primeira letra do nome das constantes
com letra maiúscula"

###########################################################################################

"Ao rodar um código ruby através do terminal, é possível pegar 'opções' no terimal com
a constante ARGV, as opções passadas serão coletadas por ARGV na forma de array, onde
cada opção será um elemento do array"