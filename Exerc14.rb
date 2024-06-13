# crie um programa que tenha uma receita de bolo
# esta receita precisa ter informações sobre o bolo feito!
# e informações pata todos os bolos

# crie uma classe onde vc terá propriedades de um bolo
# o método cozinhar o bolo instanciado
# e cozinha vários bolos passados por um array

# nome, cor, especial = Sim/Não
# cozinhar
# cozinharTodos




class Bolo
  attr_accessor :nome, :cor, :especial

  @@todos_bolos = []

  def initialize(nome, cor, especial = "Não")
    @nome = nome
    @cor = cor
    @especial = especial
    @@todos_bolos << self
  end

  def cozinhar
    puts "Cozinhando o bolo #{@nome} de cor #{@cor} (Especial: #{@especial})"
  end

  def self.cozinhar_todos
    puts "Cozinhando todos os bolos:"
    @@todos_bolos.each do |bolo|
      bolo.cozinhar
    end
  end

  def self.todos_bolos
    @@todos_bolos
  end
end

def menu
  puts "=== Menu ==="
  puts "1. Cadastrar novo bolo"
  puts "2. Cozinhar todos os bolos"
  puts "3. Exibir todos os bolos"
  puts "4. Sair"
  print "Escolha uma opção: "
  gets.chomp.to_i
end

def cadastrar_bolo
  print "Digite o nome do bolo: "
  nome = gets.chomp
  print "Digite a cor do bolo: "
  cor = gets.chomp
  print "O bolo é especial? (Sim/Não): "
  especial = gets.chomp
  Bolo.new(nome, cor, especial)
  puts "Bolo cadastrado com sucesso!"
end

loop do
  case menu
  when 1
    cadastrar_bolo
  when 2
    Bolo.cozinhar_todos
  when 3
    puts "=== Todos os Bolos ==="
    Bolo.todos_bolos.each do |bolo|
      puts "Nome: #{bolo.nome}, Cor: #{bolo.cor}, Especial: #{bolo.especial}"
    end
  when 4
    puts "Saindo..."
    break
  else
    puts "Opção inválida, tente novamente."
  end
  puts
end
