require_relative '../lib/parser'

describe '#get_first_line' do
  context 'if file exists' do
    it 'and matches error' do 
      expect { Parser.new('any.log') }.to raise_error("Arquivo não encontrado")
    end
  end

  context 'first line' do
    it 'matches string in file' do 
        data = Parser.new('games.log')
        expect(data.get_first_line).to match("  0:00 ------------------------------------------------------------\n")
    end
  end
end
