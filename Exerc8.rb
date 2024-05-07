# Danilo é o fundador do torne-se um programador
# Ele precisa calcular a satisfação de seus alunos
# Faça um programa que calcule o NPS do seu negócio

puts "Qual seu nome?"
nome = gets.chomp

puts "Olá, #{nome}!"

notas = []

loop do
  puts "Digite a sua nota de satisfação (de 1 a 5) ou 'sair' para encerrar:"
  input = gets.chomp.downcase

  break if input == 'sair'

  nota = input.to_i
  if nota >= 1 && nota <= 5
    notas << nota
  else
    puts "Por favor, digite uma nota válida (de 1 a 5)!"
  end
end

if notas.empty?
  puts "Nenhuma nota foi inserida."
else
  media = notas.sum.to_f / notas.size
  puts "Média das notas: #{media.round(2)}"
end
