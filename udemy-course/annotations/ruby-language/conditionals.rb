"Um bloco de if no ruby é assim"

# if 'condition1'
#     'código'
# elsif 'condition2'
#     'código'
# else
#     'código'
# end

"Todo bloco de if deve terminar com um 'end'
Composição de condições são feitas com '&&' para 'and', '||' para 'or' e '!' para negação.
No caso de 'and' e 'or', pode ser usado as próprias palavras mesmo"

###################################################################################

"Outra condicional no Ruby é o 'unless', ele faz o contrário do 'if', ou seja é um
'if not', ele nega a condição"

# unless 'condition1'
#   'código'
# else
#   'código'
# end

"A 'condition1' deve ser falsa para entrar no bloco do 'unless'"

num = 1

unless num > 1
  p "Entrou no unless"
end

###################################################################################

"Por último tem a condicional 'case... when', que testa se a variável é igual a um valor
e então executa o bloco de código"

# case 'variável'
#   when 'valor1'
#     'código'
#   when 'valor2'
#     'código'
#   else
#     'código'
# end
