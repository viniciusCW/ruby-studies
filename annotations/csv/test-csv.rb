require 'csv'

#CSV.parse("1,chocolate\n2,bacon\n3,apple")
#CSV.read(File.join(File.dirname(__FILE__), 'teste.csv'))

list = CSV.read('C:\Users\vinic\Documents\Programação\Ruby\annotations\csv\teste.csv')
p list
list.append([6, "potato"])

listMapped = list.map { |row| row.join(",")}.join("\n")

p listMapped

File.write('C:\Users\vinic\Documents\Programação\Ruby\annotations\csv\teste.csv', listMapped)