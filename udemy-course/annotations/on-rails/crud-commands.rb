"Cadastrar um dado:

'variavel' = 'ClasseDoModelo'.new('atributos')

'variavel'.save
"

"Buscar pela ID:

'ClasseDoModelo'.save
"

"Para atualizar um dado, pode-se salvar o registro em uma variável:

'variável' = 'registro' (por exemplo 'ClasseDoModelo'.find('id'))

e então a variável será um objeto e poderá ser alterado como qualquer outro objeto,
para salvar as alterações no banco de dados faz

'variavel'.save
"

"Para deletar:

'variavel' = 'ClasseDoModelo'.new('atributos')

'variavel'.destroy
"

"Para ver a explicação de uma mensagem de erro que tenha a ver com alguma model, faz

'variavel' = 'ClasseDoModelo'.new('atributos')

'variavel'.errors.full_messages
"