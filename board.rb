class Board
	attr_accessor :board
	include Enumerable

def initialize
	@board = []
	@board[0] = " "
	@board[1] = " "
	@board[2] = " "
	@board[3] = " "
	@board[4] = " "
	@board[5] = " "
	@board[6] = " "
	@board[7] = " "
	@board[8] = " "
end

def display

	puts "|====================================== Welcome to  ================================================|"
	puts "|=============================== Tic Tac Toe Game World Tour =======================================|"
	puts
	puts
	puts "					 #{@board[0]} | #{@board[1]} | #{@board[2]} 								"
	puts "					-----------																	"
    puts "					 #{@board[3]} | #{@board[4]} | #{@board[5]} 								"
    puts "					-----------																	"
	puts "					 #{@board[6]} | #{@board[7]} | #{@board[8]} 								"
	puts "																								"
	puts "																								"
	puts "|===================================================================================================|"
	puts
end

def play(ma_piece,ma_position)

	@board[ma_position.to_i - 1] = ma_piece

end

def victory?
	@win_status = false
	if (@board[0] == @board[1] && @board[0] == @board[2]) 
		|| (@board[3] == @board[4]&& @board[3] == @board[5]) 
		|| (@board[7] == @board[8] && @board[7] == @board[9]) 
		|| (@board[0] == @board[4] && @board[0] == @board[8]) 
		|| (@board[6] == @board [4] && @board[6] == @board[2]) 
		|| (@board[0] == @board[3] && @board[0] == @board[6]) 
		|| (@board[1] == @board[4] && @board[1] == @board[7]) 
		|| (@board[2] == @board[5] && @board[2] == @board[8])
	@win_status = true
	end
	return @win_status
end

end

