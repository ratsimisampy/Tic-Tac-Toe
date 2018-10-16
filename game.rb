class Game
  load "player.rb"
  load "board.rb"
  load "boardcase.rb"

  def initialize
    #initialise les variables
    @b_start = true
    @jeton = 1 # prend la valeur 1 ou 2
    #initialise le jeu
    init_player
    init_board
    init_boardcase
  end

  def init_player
    puts "Player1, what's your name ?:"
    @name1 = gets.chomp 
    puts "Player2, what's your name ?:"
    @name2 = gets.chomp

    @player1 = Player.new   
    @player1.name = @name1
    @player1.piece = "X"

    @player2 = Player.new 
    @player2.name = @name2
    @player2.piece = "O"
  end

  def init_board
    @my_board = Board.new
    @my_board.display
  end

  def init_boardcase
    #instancie les 9 cases

    case1 = BoardCase.new #(true, "", 1)
    case1.position = 1
    case2 = BoardCase.new #(true, "", 2)
    case2.position = 2
    #case2.status = true
    case3 = BoardCase.new #(true, "", 3)
    case3.position = 3
    #case3.status = true
    case4 = BoardCase.new #(true, "", 4)
    case4.position = 4
    #case4.status = true
    case5 = BoardCase.new #(true, "", 5)
    case5.position = 5
    #case5.status = true
    case6 = BoardCase.new #(true, "", 6)
    case6.position = 6
    #case6.status = true
    case7 = BoardCase.new #(true, "", 7)
    case7.position = 7
    #case7.status = true
    case8 = BoardCase.new #(true, "", 8)
    case8.position = 8
    #case8.status = true
    case9 = BoardCase.new #(true, "", 9)
    case9.position = 9
    #case9.status = true

  end

  def go
    i = 0
    while @b_start do
      puts "#{i} eme tour"
      
      case @jeton 
        when 1 # Le joueur 1 joue
          print "#{@player1.name.capitalize} à vous de jouer. Choisissez votre case (entre 1 à 9) svp: " 
          
          @position = gets.chomp.to_i
          @my_board.play(@player1.piece,@position) 
          if @my_board.victory? 
            #on change le statut du joueur à "gagnant"
            @player1.is_winner = true 
            #Le jeu s'arrete
            @b_start = false
            
            break
          end
            #le jeu continue et on passe le tour
            puts "Apres le if"
          @jeton = 2
        when 2 # Le joueur 2 joue
          print "#{@player2.name.capitalize} à vous de jouer. Choisissez votre case (entre 1 à 9) svp: "   
          
          @position = gets.chomp.to_i
          @my_board.play(@player2.piece,@position) 
          if @my_board.victory? 
            #on change le statut du joueur à "gagnant"
            @player2.is_winner = true 
            #Le jeu s'arrete
            @b_start = false
            break
          end
            #le jeu continue et on passe le tour

          @jeton = 1
      end
      #apres avoir joue, on display
          @my_board.display
        
    end
    i += 1
  end

end