# ontem aprendemos como criar classes e reaproveitar alguns metodos e propriedades
# referente a uma classe comum, ou um grupo de objetos
# faça um programa onde terá uma classe base onde esta classe tenha os atributos e metodos:
# id, nome, posicao, salvar, excluir, buscar, buscar_por_id, alterar_posicao
# tambem teremos uma classe filha que irá herdar os dados da classe pai
# na classe filha teremos as propriedades e metodos:
# processar, alterar_posicao, alertar, cargo, observacao

# apos criar os modelos, testar o seu uso criando um exemplo de criação e utilização das classes
# e instancias.


class ObjetoBase
    attr_accessor :id, :nome, :posicao

    @@todos_os_objetos = []
    @@id_counter = 1

    def initialize(nome, posicao)
      @id = @@id_counter
      @@id_counter += 1
      @nome = nome
      @posicao = posicao
      @@todos_os_objetos << self
    end

    def salvar
      puts "Objeto #{@nome} salvo com sucesso."
    end

    def excluir
      @@todos_os_objetos.delete(self)
      puts "Objeto #{@nome} excluído com sucesso."
    end

    def self.buscar
      @@todos_os_objetos
    end

    def self.buscar_por_id(id)
      @@todos_os_objetos.find { |obj| obj.id == id }
    end

    def alterar_posicao(nova_posicao)
      @posicao = nova_posicao
      puts "Posição do objeto #{@nome} alterada para #{@posicao}."
    end
  end

class ObjetoFilho < ObjetoBase
  attr_accessor :cargo, :observacao

  def initialize(nome, posicao, cargo, observacao)
    super(nome, posicao)
    @cargo = cargo
    @observacao = observacao
  end

  def processar
    puts "Processando o objeto #{@nome} com cargo #{@cargo}."
  end

  def alterar_posicao(nova_posicao)
    super(nova_posicao)
    puts "Posição do objeto #{@nome} alterada na classe filha para #{@posicao}."
  end

  def alertar
    puts "Alerta: #{@nome} com cargo #{@cargo} em posição #{@posicao}."
  end
end


  obj_base1 = ObjetoBase.new("ObjetoBase1", 1)
  obj_base2 = ObjetoBase.new("ObjetoBase2", 2)

  obj_base1.salvar
  obj_base2.salvar

  obj_base1.alterar_posicao(3)

  obj_base2.excluir

  puts "Todos os objetos base:"
  ObjetoBase.buscar.each do |obj|
    puts "ID: #{obj.id}, Nome: #{obj.nome}, Posição: #{obj.posicao}"
end

  obj_encontrado = ObjetoBase.buscar_por_id(1)
  puts "Objeto encontrado por ID 1: Nome: #{obj_encontrado.nome}, Posição: #{obj_encontrado.posicao}" if obj_encontrado

  obj_filho1 = ObjetoFilho.new("ObjetoFilho1", 1, "Gerente", "Observação 1")
  obj_filho2 = ObjetoFilho.new("ObjetoFilho2", 2, "Analista", "Observação 2")

  obj_filho1.salvar
  obj_filho2.salvar

  obj_filho1.processar
  obj_filho2.alertar

  obj_filho1.alterar_posicao(4)

  puts "Todos os objetos:"
  ObjetoBase.buscar.each do |obj|
    if obj.is_a?(ObjetoFilho)
      puts "ID: #{obj.id}, Nome: #{obj.nome}, Posição: #{obj.posicao}, Cargo: #{obj.cargo}, Observação: #{obj.observacao}"
    else
      puts "ID: #{obj.id}, Nome: #{obj.nome}, Posição: #{obj.posicao}"
    end
end
