# Danilo é um dos professores do torne-se um programador
# Para fixar o conteúdo de orientação a objetos, solicita uma classe onde terá algumas propriedades
# e métodos

# Classe Animal
# priedadades e métodos
# nome, raça, tamanho, velocidade, correr, andar, cor, falar, idade,
# relacionar, todos_os_animais, buscar_animal_por_id, buscar_animal_por_nome

# Obs:
# Não precisa desenvolver tela, seja simples ... quero só a classe




class Animal
  attr_accessor :id, :nome, :raca, :tamanho, :velocidade, :cor, :idade

  @@todos_os_animais = []
  @@id_counter = 1

  def initialize(nome, raca, tamanho, velocidade, cor, idade)
    @id = @@id_counter
    @@id_counter += 1
    @nome = nome
    @raca = raca
    @tamanho = tamanho
    @velocidade = velocidade
    @cor = cor
    @idade = idade
    @@todos_os_animais << self
  end

  def correr
    puts "#{@nome} está correndo a #{@velocidade} km/h."
  end

  def andar
    puts "#{@nome} está andando."
  end

  def falar(som)
    puts "#{@nome} faz: #{som}"
  end

  def relacionar
    puts "#{@nome} está se relacionando com outros animais."
  end

  def self.todos_os_animais
    @@todos_os_animais
  end

  def self.buscar_animal_por_id(id)
    @@todos_os_animais.find { |animal| animal.id == id }
  end

  def self.buscar_animal_por_nome(nome)
    @@todos_os_animais.select { |animal| animal.nome.downcase == nome.downcase }
  end
end
