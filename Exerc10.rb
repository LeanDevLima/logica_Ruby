# Roberto é um diretor de uma escola de música
# ele precisa de um programa que tenha as seguintes opções
# 1 - Cadastrar aluno (nome, matricula, notas)
# 2 - Cadastrar Nota de aluno
# 3 - Relatório das notas em média dos alunos
# 4 - Sair
# Faça o programa em app console utilizando
# variáveis, loop, hash, condicionais e array

alunos = []

puts "\nOlá Roberto!"
puts "O que gostaria de fazer?"

loop do
  puts "\nEscolha uma opção:"
  puts "1 - Cadastrar aluno"
  puts "2 - Cadastrar Nota de aluno"
  puts "3 - Relatório das notas em média dos alunos"
  puts "0 - Sair"

  opcao = gets.chomp.to_i

  case opcao
  when 1
    puts "Digite o nome do aluno:"
    nome = gets.chomp
    puts "Digite a matrícula do aluno:"
    matricula = gets.chomp
    alunos << { nome: nome, matricula: matricula, notas: [] }
    puts "Aluno cadastrado com sucesso!"
  when 2
    puts "Digite a matrícula do aluno para cadastrar a nota:"
    matricula = gets.chomp
    aluno = alunos.find { |a| a[:matricula] == matricula }
    if aluno
      puts "Digite a nota do aluno #{aluno[:nome]}:"
      nota = gets.chomp.to_f
      aluno[:notas] << nota
      puts "Nota cadastrada com sucesso!"
    else
      puts "Aluno não encontrado!"
    end
  when 3
    puts "\nRelatório de notas em média dos alunos:"
    alunos.each do |aluno|
      media = aluno[:notas].empty? ? "Sem notas cadastradas" : aluno[:notas].sum / aluno[:notas].length
      puts "#{aluno[:nome]} (Matrícula: #{aluno[:matricula]}) - Média: #{media}"
    end
  when 0
    puts "Saindo do programa..."
    break
  else
    puts "Opção inválida. Tente novamente."
  end
end
