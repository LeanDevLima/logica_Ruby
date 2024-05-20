# Danilo é um empresário que trabalha na empresa didox business
# Ele precisa de um programador que faça um software que tenha algums recursos
# 1 - Calcular a tabuada do número digitado
# 2 - ler um nome e mostrar este nome concatenado com a frase vamos lá guerreiros
# 3 - Calcular a tabuada e mostrar tambem a frase acima com o nome

def iniciar_programa

  puts "\nOlá Danilo"
  puts "O que gostaria de fazer?"

  loop do
    menu()
    opcao = gets.chomp.to_i

    case opcao
    when 1
      calcular_tabuada()
    when 2
      ler_nome()
    when 3
      calcular_e_ler()
    when 0
      puts "Saindo do programa..."
      break
    else
      puts "Opção inválida. Tente novamente."
    end
  end
end

def menu
  puts "\nEscolha uma opção:"
  puts "1 - Calcular a Tabuada"
  puts "2 - Ler um nome"
  puts "3 - Calcular a tabuada e mostrar tambem a frase acima com o nome"
  puts "0 - Sair"
end

def calcular_tabuada
  puts "Qual tabuada quer calcular?"
  numero = gets.chomp.to_i
  puts "Quer multiplicar até que número?"
  limite = gets.chomp.to_i

  (1..limite).each do |i|
    puts "#{numero} x #{i} = #{numero * i}"
  end
end

def ler_nome
puts "Digite um nome:"
nome = gets.chomp
puts "Olá guerreiro(a) #{nome} !"
end

def calcular_e_ler
  ler_nome()
  puts "\n"
  calcular_tabuada()
end

iniciar_programa
