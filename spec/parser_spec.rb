# frozen_string_literal: true

require_relative '../lib/parser'

describe Parser do
  describe '#initialize' do
    it 'raises error' do
      expect { Parser.new('any.log') }.to raise_error('Arquivo não encontrado')
    end
  end

  describe '#read_first_line' do
    it 'matches string in file' do
      data = Parser.new('spec/fixture/games_test.log')
      expect(data.read_first_line).to match("  0:00 ------------------------------------------------------------\n")
    end
  end

  describe '#log_json' do
    it 'returns correct output' do
      data = Parser.new('spec/fixture/games_test.log')
      expect(data.log_json.to_json).to match("{\"games.log\":{\"lines\":158,\"players\":" +
        "[\"Isgalamido\",\"Mocinha\",\"Zeh\",\"DonodaBola\"]}}")
    end
  end
end
