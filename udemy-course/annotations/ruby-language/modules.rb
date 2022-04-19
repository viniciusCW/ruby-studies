#"Módulos" são declarados de forma parecida com classes, usando a palavra-chave "module".

#Métodos definidos dentro do módulo devem levar o nome da seguinte forma 'NomeDoModulo'.'nome_do_método' ou self.'nome_do_método'
#E então pra fazer o require em outro arquivo faz: require_relative 'path_to_module'
#Dá pra usar { require 'NomeDoModulo' } se o arquivo do módulo estiver no mesmo diretório

#Métodos em modulos, declarados da forma 'NomeDoModulo'.'nome_do_método' ou self.'nome_do_método' são chamados "métodos de classe",
#não é preciso instanciar a classe para usar este tipo de método.
#Se declarado apenas como um método, é chamado "métodos de instância" e então pode ser associado a um objeto

#Para incluir um módulo dentro de uma classe faz: include 'NomeDoModulo'
#Dessa forma, os métodos de instância estarão disponíveis para os objeto da classe
