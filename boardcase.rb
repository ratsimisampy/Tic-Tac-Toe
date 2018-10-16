class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
  attr_accessor :status, :content, :position
  
  def initialize
    # par defaut la case est vide au depart
    @status = true 
    # 'content' peut prendre les valeurs suivantes : X, O ou 'vide'
    @content = " " 
    # 'position'correspond à l'indice du tableau de Board
    @position = 0
  end
  
  def to_s
    #TO DO : doit renvoyer la valeur au format string
  end

end