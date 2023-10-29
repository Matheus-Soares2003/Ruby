class Campeonato

    attr_accessor :titulo, :qtd_participantes, :lista_participantes

    def initialize(titulo:, qtd_participantes:)
        @titulo = titulo
        @qtd_participantes = qtd_participantes
        @lista_participantes = []
        @fases = {}
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

    def gerarFases()
        case @qtd_participantes
            when 32
                @fases = {final: [], semifinal: [], quartas: [], oitavas: [], fases_iniciais: []}
            when 16
                @fases = {final: [], semifinal: [], quartas: [], oitavas: []}
            when 8
                @fases = {final: [], semifinal: [], quartas: []}
            when 4
                @fases = {final: [], semifinal: []}
            when 2 
                @fases = {final: []}
        end
        
    end

    def gerarDuelos()
        gerarFases
        @fases.each do |k, v|
            @fases[k].push("Teste")
        end
        return @fases
    end

end