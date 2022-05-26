"Síntaxe para fazer classes"

#class 'NomeDaClasse'
#  'conteúdo da classe'
#end

"Para definir atributos, é só colocar '@nome_do_atributo' dentro da classe, essas variáveis
se chamam 'variável de instância'"

# class 'NomeDaClasse'
#   @atributo1
#   @atributo2
#   ...
# end

"Para instanciar uma classe faz 'nome_do_objeto' = 'NomeDaClasse'.new"

################################################################################################################

"Há um método padrão 'to_s' que padroniza o que será 'printado' ao se printar a classe"

# class 'NomeDaClasse'
#   @atributo1
#   @atributo2
#
#   def to_s
#     'o que vai ser printado'
#   end
# end

"Um setter é feito da seguinte forma, dentro de uma classe"

# def 'atributo' = ('argumento')
#   @'nome_do_atributo' = 'argumento'
# end

"E então para definir o valor de um atributo faz"

#'nome_do_objeto'.'atributo' = 'valor do atributo'

"Um getter é feito como um método sem argumentos"

class Name
  @first_name
  @last_name

  def to_s
    "First name: #{first_name}"
  end

  def first_name=(fn)
    @first_name = fn
  end

  def first_name
    @first_name
  end

  def last_name=(ln)
    @last_name = ln
  end

  def last_name
    @last_name
  end
end

me = Name.new

me.first_name = 'Vinicius'
me.last_name = 'Almeida'

puts me
puts "#{me.first_name} #{me.last_name}"

################################################################################################################

"O 'acessor de atributos' é feito no início da definição da classe, isso criará
os getters e setters dos atributos automaticamente, ele é feito com a seguinte sintaxe

attr_acessor :'atributo1', :'atributo2', ...

E dessa forma, os atributos não precisam ser declarados no início da classe"
puts

class PetName
  attr_accessor :pet_name, :owner_name

  def to_s
    "Pet name: #{pet_name}\nOwner name: #{owner_name}"
  end
end

dog = PetName.new

dog.pet_name = 'Giuly'
dog.owner_name = 'Vinicius'

puts dog

"Para fazer um atributo que só tenha a propriedade de getter e não ter a de setter, usa-se

attr_reader :'atributo1', :'atributo2', ..."

################################################################################################################

"O método 'initialize' permite que definamos os valores dos atributos ao instanciar as classes, se usá-lo,
não precisa fazer aquelas 'declarações' no início da definição da classe como nas linhas (11-13)
ele é da seguinte forma"

# def initialize('argumento1', 'argumento2',...)
#   @'atributo1' = 'argumento1'
#   @'atributo2' = 'argumento2'
#   ...
# end

"E para inicializar a variável faz"

#'nome_do_objeto' = 'NomeDaClasse'.new('valor_do_atributo1', 'valor_do_atributo2', ...)

"Através do 'initialize' é possível definir valores padrão também, basta colocar
  @'atributo' = 'valor padrão'
"
