#Pra definir um função faz:

# def 'nome_da_função'('argumentos')
#     'tarefas'
# end

#OBS:
# - se não tiver argumentos, não precisa do parênteses
# - Dá pra setar valor padrão de argumento com { 'argumento' = 'valor_padrão' }

#EXS:

def say_hi
    p "Hi!"
end

def say_hello(name)
    p "Hello #{name}"
end

say_hi
say_hello('world')

#Para inserir variável numa string deve-se usar aspas duplas e #{} para conter a variável a ser exibida