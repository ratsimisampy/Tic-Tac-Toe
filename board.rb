class Board
	attr_accessor :board
	include Enumerable
	@@msg_output = "my output message"

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

	puts "|====================================== Bienvenu sur  ================================================|"
	puts "|=============================== Tic Tac Toe Game World Tour =======================================|"
	puts 
	puts " 								Voici les indices de positionnement :"
	puts																			
	puts "					 #{@board[0]} | #{@board[1]} | #{@board[2]} 			 1 | 2 | 3					"
	puts "					-----------			-----------					"
    puts "					 #{@board[3]} | #{@board[4]} | #{@board[5]} 			 4 | 5 | 6					"
    puts "					-----------			-----------					"
	puts "					 #{@board[6]} | #{@board[7]} | #{@board[8]} 			 7 | 8 | 9					"
	puts "																								"
	puts "																								"
	puts "|===================================================================================================|"
	puts
end

def play(player_symbol,my_position)

	@board[my_position.to_i - 1] = player_symbol

end

def has_win(symbol)
	@win_status = false
	
	#verifie si "symboles" alignés
	if (( @board[0] == symbol && @board[1] == symbol && @board[2] == symbol ) || (@board[3] == symbol && @board[4] == symbol && @board[5] == symbol ) || (@board[6] == symbol && @board[7] == symbol && @board[8] == symbol ) )
		@win_status = true
		@Msg_output = "Combinaison de '#{symbol}' gagnant sur une ligne"
	end
	#verifie si "symboles" alignés en colonne
	if ( (@board[0] == symbol && @board[3] == symbol && @board[6] == symbol) || (@board[1] == symbol && @board[4] == symbol && @board[7] == symbol) || (@board[2] == symbol && @board[5] == symbol && @board[8] == symbol ) )
		@win_status = true
		@Msg_output = "Combinaison de '#{symbol}' gagnant sur une colonne"
	end
	#verifie si "symboles" en alignés en diagonale
	if ( (@board[0] == symbol && @board[4] == symbol && @board[8] == symbol) || (@board[6] == symbol && @board[4] == symbol && @board[2] == symbol ) )
		@win_status = true
		@@Msg_output = "Combinaison de '#{symbol}' gagnant sur une diagonale"
	end

	return @win_status
end

end

