class Parser
    def initialize(file)
        @file = file
    end
    
    def openfile
        unless File.exist?(@file)
            puts "Arquivo não encontrado"
        else
            data = File.open(@file, &:readline)
            puts data
        end
    end
end
