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