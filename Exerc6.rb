# Se joão é um comerciante e ele precisa de um software que faça o calculo
# da porcentagem de desconto que ele dará para os seus clientes no valor
# total da compra, faça um software que solicite o valor total do pedido
# solicite o valor da porcentagem e logo após mostre o valor com desconto
# e o valor descontado
# se o valor total descontato der inferior a $ 3, oferecer um item a mais.
# de a opção para inserir produtos
# de a opção para inserir o nome do cliente
# adicionar preço por produto
# João ficará MUITO feliz se vc resolver o problema dele.

require 'byebug'

debugger

puts "Qual o nome do cliente?"
nome = gets.chomp

lista_de_produtos = []

resposta = "s"
while resposta.downcase == "s"
  puts "Qual produto o cliente comprou? "
  produto = gets.chomp

  puts "Qual o preço do produto #{produto}? "
  preco = gets.chomp.to_f

  lista_de_produtos << { produto: produto, preco: preco }

  print "O cliente comprou mais algum produto? (S/N) "
  resposta = gets.chomp
end

totalcompra = lista_de_produtos.sum { |item| item[:preco] }

puts "Qual percentual de desconto? (%)"
percentualdesconto = gets.to_f

percentual = percentualdesconto / 100
valordesconto = percentual * totalcompra

total = totalcompra - valordesconto

puts "Cliente #{nome}"
puts "\nLista dos produtos comprados:"
lista_de_produtos.each do |item|
  puts "#{item[:produto]} - $ #{item[:preco]}"
end

if total <= 3
  puts "========================"
  puts "O valor com desconto a ser pago pelo cliente é $ #{total.round(2)}"
  puts "========================"
  puts "Ofereça um item a mais"
else
  puts "========================"
  puts "O valor com desconto a ser pago pelo cliente é $ #{total.round(2)}"
  puts "========================"
end

puts "O percentual de desconto é #{percentualdesconto.to_i}% "
puts "O total de desconto concedido é $ #{valordesconto.round(2)}"
puts "O valor original sem desconto é #{totalcompra.round(2)}"
