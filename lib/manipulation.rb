class Parser
  def initialize(file)
    @file = file
  end
    
  def get_first_line
    unless File.exist?(@file)
      p "Arquivo não encontrado"
    else
      data = File.open(@file, &:readline)
      p data
    end
  end
end
