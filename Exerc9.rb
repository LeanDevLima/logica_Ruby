# Roberto é dono de uma faculdade
# Ele irá precisar organizar a grade do curso em alguns meses
# faça um programa que organize os dados do semestre da faculdade do Roberto
# o que teremos nesta organização, "nome da matéria", "temas até o mes 6" colocar
# nesta estrutura pelo menos 3 matérias

puts "Olá Roberto!"

grade_semestre = {
  "Matemática" => {
    "Mês 1" => ["Álgebra linear"],
    "Mês 2" => ["Geometria analítica"],
    "Mês 3" => ["Cálculo diferencial"],
    "Mês 4" => ["Cálculo integral"],
    "Mês 5" => ["Estatística"],
    "Mês 6" => ["Probabilidade"]
  },
  "História" => {
    "Mês 1" => ["Idade Antiga"],
    "Mês 2" => ["Idade Média"],
    "Mês 3" => ["Idade Moderna"],
    "Mês 4" => ["História Contemporânea"],
    "Mês 5" => ["História do Brasil"],
    "Mês 6" => ["História da América Latina"]
  },
  "Programação" => {
    "Mês 1" => ["Introdução à programação"],
    "Mês 2" => ["Estruturas de dados"],
    "Mês 3" => ["Algoritmos"],
    "Mês 4" => ["Desenvolvimento web"],
    "Mês 5" => ["Banco de dados"],
    "Mês 6" => ["Inteligência Artificial"]
  }
}

grade_semestre.each do |materia, meses|
  puts "Matéria: #{materia}"
  i = 1 # Reinicia a variável i para 1 para cada matéria

  meses.each do |mes, temas|
    puts "#{mes}"
    puts "Tema:"

    temas.each_with_index do |tema, index|
      puts "#{index + i}. #{tema}"
      i += 1
    end
    puts "-" * 20
  end
  puts "=" * 30
end
