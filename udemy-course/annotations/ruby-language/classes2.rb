"Herança, é declarada da seguinte froma"

# class 'ClasseFilha' < 'ClassePai'
#   'código'
# end

"Dessa forma, a 'ClasseFilha' terá todos os métodos e atributos da 'ClassePai'.
A ClasseFilha poderá ter seus próprios métodos e atributos além das que foram herdadas"

"É possível sobrescrever métodos da classe pai, para fazer isso basta definir novamente o método
na classe filha, isso se chama method overriding.
"
########################################################################################################

"Suponha uma classe filha que tenha um método overriding, nesse método é possível chamar o método de mesmo
nome da classe pai simplesmente usando a palavra 'super', assim o método da classe pai será executada
quando 'super' for chamado.
Caso o método da classe pai tenha argumentos, basta chamar 'super' com os parâmetros: super(param1, param2,...)
"

########################################################################################################

"Métodos de instância são métodos que para serem usados, precisam que a classe seja instanciada primeiro,
esse tipo de método é definido normalmente dentro da classe:"

# class 'Classe'
#   def 'metodo_de_instancia'
#     'code'
#   end
# end

"Os métodos de classe são métodos que podem ser chamados sem instanciar a classe, esses métodos são definidos
com 'self.' antes do nome do método"

# class 'Classe'
#   def self.'metodo_de_classe'
#     'code'
#   end
# end

"E são invocados usando 'Classe'.'metodo_de_classe'"