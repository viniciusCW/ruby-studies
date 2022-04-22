class ListsController < ApplicationController

  require 'csv'

  def index
    @list = CSV.read('/mnt/c/Users/vinic/Documents/Programação/Ruby/projects/api-csv/db/teste.csv')
  end

  def show
    @list = CSV.read('/mnt/c/Users/vinic/Documents/Programação/Ruby/projects/api-csv/db/teste.csv')

    @list.each do |row|
      if row[0] == params[:id]
        @iten = row
        break
      end
    end
  end

  def new
  end

  def create
    @food = params.require(:list)["name"]

    if @food == ""
      return redirect_to '/list/new'
    end

    @list = CSV.read('/mnt/c/Users/vinic/Documents/Programação/Ruby/projects/api-csv/db/teste.csv')

    new_id = @list[-1][0].to_i + 1
    @list.append([new_id,@food])

    csv_content = @list.map { |row| row.join(",")}.join("\n")
    File.write('/mnt/c/Users/vinic/Documents/Programação/Ruby/projects/api-csv/db/teste.csv', csv_content)

    redirect_to '/lists'
  end

end
