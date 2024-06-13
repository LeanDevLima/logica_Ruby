# Para usar esta classe crie algumas instancias
# nomes:
# leao, cachorro, gato, pato

# utilize os metodos de instancia criado neste exemplo

# Utilize as funções de classe para buscar os animais, obs: não precisa ter o código que busca em memoria
# quero somente validar o uso da classe.


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

leao = Animal.new("Leão", "Felino", "Grande", 60, "Amarelo", 5)
cachorro = Animal.new("Cachorro", "Pastor Alemão", "Médio", 30, "Marrom", 3)
gato = Animal.new("Gato", "Siamês", "Pequeno", 15, "Cinza", 2)
pato = Animal.new("Pato", "Doméstico", "Pequeno", 5, "Branco", 1)

leao.correr
cachorro.andar
gato.falar("Miau")
pato.relacionar

puts "Todos os animais:"
Animal.todos_os_animais.each do |animal|
  puts "ID: #{animal.id}, Nome: #{animal.nome}, Raça: #{animal.raca}, Tamanho: #{animal.tamanho}, Cor: #{animal.cor}, Idade: #{animal.idade}"
end

animal_encontrado = Animal.buscar_animal_por_id(2)
puts "Animal encontrado por ID 2: Nome: #{animal_encontrado.nome}, Raça: #{animal_encontrado.raca}" if animal_encontrado

animais_encontrados = Animal.buscar_animal_por_nome("Gato")
puts "Animais encontrados com o nome 'Gato':"
animais_encontrados.each do |animal|
  puts "ID: #{animal.id}, Nome: #{animal.nome}, Raça: #{animal.raca}"
end
