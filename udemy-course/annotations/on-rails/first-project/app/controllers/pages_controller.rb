class PagesController < ApplicationController

  def home
  end

  def about
    #Se comentar/apagar a linha abaixo, será renderizado a página do arquivo 'about.html.erb'
    render html: "Agora estamos na rota /about"
  end
end
