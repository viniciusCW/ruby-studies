#Tem numero do tipo 'Integer' e do tipo 'Float'
#Operações entre dois inteiros sempre retorna um inteiro, se der um número decimal
#na divisão, o Ruby dropa a parte decimal, para obter float como resultado, basta
#colocar pelo menos um dos números como Float

p 2 + 3
p 2 - 3
p 2 * 3
p 2 / 3
p 2.0 / 3
p 2.0 / 3.0

p 10.to_f

#Um método para Integer é 'Integer'.times { 'tarefa' }, isso faz com a 'tarefa'
#seja executada um número 'Integer' de vezes. Esse método retorna o 'Integer'

20.times { print '-' }
puts "\n"

i = 0
10.times { 
    i = i + 1
    puts i
 }

#Pra converter um número ou string para inteiro faz 'número'.to_i
#e para converter para float faz 'número'.to_f
#De maneira análoga, para converter para string faz 'number'.to_s

#OBS:
# - Se tentar converter uma string não numérica, o método vai retornar 0 para
#inteiro e 0.0 pra float

puts "aaaa".to_i
puts "a13".to_f