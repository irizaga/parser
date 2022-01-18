require_relative '../lib/manipulation'


describe Parser do
    it 'file exists' do
        expect(File.exist?('games.log')).to be(true)
    end

    it 'print first line' do
        data = File.open('games.log')
        expect(data.readline.rstrip).to match("  0:00 ------------------------------------------------------------")
        data.close
    end
end
