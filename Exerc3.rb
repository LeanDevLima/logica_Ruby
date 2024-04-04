# Se joão é um comerciante e ele precisa de um software que faça o calculo
# da porcentagem de desconto que ele dará para os seus clientes no valor
# total da compra, faça um software que solicite o valor total do pedido
# solicite o valor da porcentagem e logo após mostre o valor com desconto
# e o valor descontado

# João ficará MUITO feliz se vc resolver o problema dele.


puts "Qual foi o valor total da compra?"
totalcompra = gets.to_f

puts "Qual percentual de desconto? (%)"
percentualdesconto = gets.to_f

percentual = percentualdesconto / 100
valordesconto = percentual * totalcompra

total = totalcompra - valordesconto

puts ("O com desconto a ser pago pelo cliente é $ #{total.round(2)}")
puts ("O percentual de de conto é #{percentualdesconto.to_i} % ")
puts ("O total de desconto concedido  é $ #{valordesconto.round(2)}")
puts ("O valor original sem desconto é #{totalcompra.round(2)}")
