#A ordem das definições importa, ruby é bem linear na leitura do código

#Os métodos que possuem '!' no final do nome, significa q o método altera
#o valor da variável original

x = [1, 2, 3]

p x.reverse
p x

x.reverse!

p x