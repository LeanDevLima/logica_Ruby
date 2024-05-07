# Dado que eu tenha algumas opções
# - Banana
# - Maça
# - Laranja
# e digite algum dos items listados acima
# ao escolher coloque um valor diferente para fruta, este valor estará no bloco selecionado
# no final do programa mostre o valor de acordo com a escolha da fruta.

puts ("Digite uma das frutas - Banana - Maçã - Laranja ")

fruta = gets.chomp

case fruta
when 'Banana'
  puts("Banana = 10 ")
when 'Maçã'
  puts("Banana = 15 ")
when 'Laranja'
  puts("Laranja = 20 ")
end
