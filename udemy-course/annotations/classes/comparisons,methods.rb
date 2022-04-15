#Operadores de comparação como de costume, ==, !=, <, >, >=, <=
#Os booleanos são 'true' e 'false'
#Um outro comparador é o método 'eql?' que compara os tipos dos dados também
#pra usá-lo faz 'dado1'.eql?('dado2')

p 10.eql?(10.0)
p "aaa".eql?('aaa')
p ('a'*3).eql?('aaa')

#Funções em ruby são chamados de métodos, pra fazer uma, faz

# def 'nome_da_função'('arugumentos')
#     função
# end

#Métodos têm a propriedade de 'return', se tiver apenas uma linha, o 'return' é automático
#ou então, a último expressão do método é automaticamente retornado

puts "\n"

def multiply(num1, num2)
    num1 * num2
end

def divide(num1, num2)
    num1 = num1.to_f
    "Vo dividir"
    num1/num2
end

def troll_divide(num1, num2)
    num1 = num1.to_f
    return "Vo dividir não"
    num1/num2
end

p multiply(2,3)
p divide(2,3)
p troll_divide(2,3)