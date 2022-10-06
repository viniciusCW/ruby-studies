# https://api.rubyonrails.org/classes/ActiveRecord/NestedAttributes/ClassMethods.html

'O atributo "accepts_nested_attributes_for" serve para definir qual dado filho pode ser criado juntamente
com o seu pai. Assim, se temos uma model "Contact" e ela tem um "has_many :phones" (o processo é o mesmo com has_one),
podemos colocar a linha'
accepts_nested_attributes_for :phones
'na model "Contact", assim, ao criar um contato, podemos criar também os "phones" associados a ele.
Talves seja necessário colocar "optional: true" na model "Phone".
Para criar Contact e Phone, o objeto deve ser da seguinte forma'
{
  contact: {
    name: "name",
    birthdate: "12-12-2000",
    phones_attributes: [
      {number: "phone1_infos"},
      {number: "phone2_infos"}
    ]
  }
}

'Dá para dar um update através do dado pai também, o payload é o mesmo que ppara cirar, porém, deve ser passado o id dos
dados filhos que serão alterados também, se passar sem id, o aplicação vai criar um novo dado'
{
  contact: {
    name: "new name",
    birthdate: "12-12-2000",
    phones_attributes: [
      {
        id: 1,
        number: "new phone1_infos"
      },
      {
        id: 2,
        number: "new phone2_infos"
      }
    ]
  }
}

'Para poder apagar algum dado filho, tem que adicionar o parâmetro "allow_destroy: true" na função "accepts_nested_attributes_for"'
accepts_nested_attributes_for :phones, allow_destroy: true
'A requisição deve ser do tipo POST e tem o mesmo formato dos anteriores e para apagar o dado filho, basta colocar no JSON do
dado que você quer apagar o par "_destroy: 1"'
{
  contact: {
    name: "new name",
    birthdate: "12-12-2000",
    phones_attributes: [
      {
        id: 1,
        _destroy: 1
      }
    ]
  }
}

'No caso de um dado filho ser único para cada dado pai (has_one), para o update sempre dar update naquele único dado filho, 
ao invés de criar um novo que é o padrão, basta adicionar o parâmetro "update_only: true" na função "accepts_nested_attributes_for"'