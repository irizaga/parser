require_relative '../lib/manipulation'

describe '#get_first_line' do
  context 'if file exists' do
    it 'it returns true' do 
      expect(File.exist?('games.log')).to be(true) 
    end
  end

  context 'first line' do
    it 'matches string in file' do 
        data = Parser.new('games.log')
        expect(data.get_first_line).to match("  0:00 ------------------------------------------------------------\n")
    end
  end
end
