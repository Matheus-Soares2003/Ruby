require './models/Campeonato.rb'
require './models/Participante.rb'

opcoes = [2, 4, 8, 16, 32]

print "Título do campeonato: "
titulo = gets.chomp
puts """Quantidade de Participantes
    ========================
    [1] - 2 Participantes
    [2] - 4 Participantes
    [3] - 8 Participantes
    [4] - 16 Participantes
    [5] - 32 Participantes
    ========================
    """
print "Opção: "
opcao = gets.chomp.to_i
qtd_participantes = opcoes[opcao - 1]

camp = Campeonato.new(titulo: titulo, qtd_participantes: qtd_participantes)

camp.qtd_participantes.times do
    participante = Participante.new
    print "Nome do Participante: "
    participante.nome = gets.chomp
    camp.addParticipante(participante)
end

print camp.gerarDuelos


