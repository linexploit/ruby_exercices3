def start
  puts "La partie commence, let's go ! Appuie sur entrer pour lancer le dé..."
  board_game = 0

while board_game < 10
  gets.chomp
  roll_of_dice = rand(1..6)
  puts "Le dé affiche : #{roll_of_dice}"

  if roll_of_dice == 5 || roll_of_dice == 6
    board_game += 1
    puts "Tu avances d'une marche et tu te trouves sur la case numéro #{board_game}"
  elsif roll_of_dice == 1
    board_game -= 1
    puts "Tu recules d'une marche et tu te trouves sur la case numéro #{board_game}"
  else
    puts "Dommage, tu stagnes et tu es toujours sur la case #{board_game}"
  end

end 

 puts " Victoire, tu as atteint les marches !"
end

start

def roll_dice
  return rand(6)+1
end
