# Luciano Hang é um empresário do varejo
# O mesmo tem uma empresa chamada Havan
# E ele está querendo vacinar os eus colaboradores
# faça um programa que tenha as caracteristicas de um
# colaborador (nome, sobrenome, cpf)
# e coloque uma opção neste colaborador marcando se ele
# já tomou ou não a vacina
# Ter um item de consulta para saber se aquele CPF foi vacinado
# passos:
# cadastra, porem antes do cadastro, verificar se o CPF já foi vacinado
#   Se o cpf já foi vacinado, mostrar a mensagem colaborador já tomou a primeira dose
#   Se não pedir os outros dados do cadastro do colaborador

class Colaborador
  attr_accessor :nome, :sobrenome, :cpf, :vacinado

  def initialize(nome, sobrenome, cpf, vacinado = false)
    @nome = nome
    @sobrenome = sobrenome
    @cpf = cpf
    @vacinado = vacinado
  end

  def detalhes
    puts "Nome: #{@nome} #{@sobrenome}"
    puts "CPF: #{@cpf}"
    puts "Vacinado: #{@vacinado ? 'Sim' : 'Não'}"
  end
end

class SistemaVacinas
  def initialize
    @colaboradores = []
  end

  def cadastrar_colaborador
    puts "Digite o CPF do colaborador:"
    cpf = gets.chomp

    colaborador_existente = @colaboradores.find { |colaborador| colaborador.cpf == cpf }

    if colaborador_existente
      puts "Colaborador já tomou a primeira dose"
    else
      puts "Digite o nome do colaborador:"
      nome = gets.chomp
      puts "Digite o sobrenome do colaborador:"
      sobrenome = gets.chomp
      puts "O colaborador já foi vacinado? (s/n):"
      vacinado = gets.chomp.downcase == 's'

      novo_colaborador = Colaborador.new(nome, sobrenome, cpf, vacinado)
      @colaboradores << novo_colaborador
      puts "Colaborador cadastrado com sucesso!"
    end
  end

  def consultar_vacinacao
    puts "Digite o CPF do colaborador para verificar a vacinação:"
    cpf = gets.chomp

    colaborador = @colaboradores.find { |colaborador| colaborador.cpf == cpf }

    if colaborador
      colaborador.detalhes
    else
      puts "Colaborador não encontrado."
    end
  end
end

sistema = SistemaVacinas.new

loop do
  puts "1. Cadastrar colaborador"
  puts "2. Consultar vacinação"
  puts "3. Sair"
  escolha = gets.chomp.to_i

  case escolha
  when 1
    sistema.cadastrar_colaborador
  when 2
    sistema.consultar_vacinacao
  when 3
    break
  else
    puts "Opção inválida. Tente novamente."
  end
end
