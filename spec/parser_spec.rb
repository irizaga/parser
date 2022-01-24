require_relative '../lib/parser'

describe Parser do
  describe '.exist?' do
    it 'raises error' do
      expect { Parser.new('any.log') }.to raise_error('Arquivo não encontrado')
    end
  end

  describe '#read_first_line' do
    it 'matches string in file' do
      data = Parser.new('games.log')
      expect(data.read_first_line).to match("  0:00 ------------------------------------------------------------\n")
    end
  end

  describe '#line_count' do
    it 'returns correct output' do
      data = Parser.new('games.log')
      expect(data.line_count).to match("{\"games.log\":{\"lines\":5306}}")
    end
  end
end
