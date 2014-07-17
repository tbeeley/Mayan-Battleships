require './lib/squares'
require './lib/board'
require './lib/ship'
require './lib/water'
require './lib/player'

puts "hello"
player1 = Player.new(name: "Dave")
player2 = Player.new(name: "Charlotte")
player1.board = Board.new
player2.board = Board.new

ship1=Ship.canoe
ship2=Ship.longboat
puts "end"