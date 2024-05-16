#mesmo exercício, com funções


def iniciar_programa
  alunos = []

  puts "\nOlá Roberto!"
  puts "O que gostaria de fazer?"

  loop do
    menu()
    opcao = gets.chomp.to_i

    case opcao
    when 1
      cadastrar_aluno(alunos)
    when 2
      cadastrar_nota_aluno(alunos)
    when 3
      relatorio(alunos)
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
  puts "1 - Cadastrar aluno"
  puts "2 - Cadastrar Nota de aluno"
  puts "3 - Relatório das notas em média dos alunos"
  puts "0 - Sair"
end

def cadastrar_aluno(alunos)
  puts "Digite o nome do aluno:"
  nome = gets.chomp
  puts "Digite a matrícula do aluno:"
  matricula = gets.chomp
  alunos << { nome: nome, matricula: matricula, notas: [] }
  puts "Aluno cadastrado com sucesso!"
end

def cadastrar_nota_aluno(alunos)
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
end

def relatorio(alunos)
  puts "\nRelatório de notas em média dos alunos:"
  alunos.each do |aluno|
    media = aluno[:notas].empty? ? "Sem notas cadastradas" : aluno[:notas].sum / aluno[:notas].length
    puts "#{aluno[:nome]} (Matrícula: #{aluno[:matricula]}) - Média: #{media}"
  end
end

iniciar_programa
