require_relative 'lib/manipulation'

class Main
    file = Parser.new('games.log')
    file.openfile
end
