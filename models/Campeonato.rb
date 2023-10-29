class Campeonato

    attr_accessor :titulo, :qtd_participantes, :lista_participantes
    attr_reader :duelos

    def initialize(titulo:, qtd_participantes:)
        @titulo = titulo
        @qtd_participantes = qtd_participantes
        @lista_participantes = []
        @duelos = []
    end

    def addParticipante(participante)
        @lista_participantes << participante
    end

    def removeParticipante(participante)
        @lista_participantes.delete(participante)
    end

    def showParticipantes()
        @lista_participantes.each do |p|
            puts p.nome
        end
    end


    def gerarDuelos()
        participantes = @lista_participantes
        duelos = []
        while participantes.length > 0
            indice = rand(participantes.length)
            duelos.push(participantes[indice])
            if duelos.length % 2 == 0
                @duelos.push(duelos.clone)
                duelos.clear()
            end
            participantes.delete(participantes[indice])
        end
        return @duelos
    end

end