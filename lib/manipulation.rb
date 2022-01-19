class Parser
  def initialize(file)
    @file = file
    unless File.exist?(@file)
      p "Arquivo não encontrado"
      exit
    end
  end
    
  def get_first_line
      data = File.open(@file, &:readline)
      p data
  end
end
