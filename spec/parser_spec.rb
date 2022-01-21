require_relative '../lib/parser'

describe Parser do
  describe 'file does not exist' do
    it 'and matches error' do
      expect { Parser.new('any.log') }.to raise_error('Arquivo não encontrado')
    end
  end

  describe 'first line' do
    it 'matches string in file' do
      data = Parser.new('games.log')
      expect(data.read_first_line).to match("  0:00 ------------------------------------------------------------\n")
    end
  end

  describe 'line count' do
    it 'returns correct output' do
      data = Parser.new('games.log')
      expect(data.line_count).to match("{\"games.log\":{\"lines\":5306}}")
    end
  end
end
