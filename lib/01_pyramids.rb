puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
level_pyramid = gets.chomp.to_i

#FULL PYRAMID
def full_pyramide (level_pyramid)
while level_pyramid < 1 || level_pyramid > 25
  puts "Choisis un nombre entre 1 et 25"
  print "> "
  level_pyramid = gets.chomp.to_i
end

puts "Voici la pyramide :"
level_pyramid.times do |i|
  spaces = " " * (level_pyramid - i - 1)
  hashes = "#" * (2 * i + 1)
  puts spaces + hashes
end
end

#WTF PYRAMID
def wtf_pyramide(level_pyramid)
    # Needs to have an even number
    while level_pyramid < 1 || level_pyramid > 25 || level_pyramid % 2 == 0
       puts "Choisis un nombre impair entre 1 et 25"
       print "> "
       level_pyramid = gets.chomp.to_i
    end
   
    puts "Voici la pyramide :"
    # 1st part of the pyramid
    (level_pyramid / 2).times do |i|
       spaces = " " * (level_pyramid / 2 - i - 1)
       hashes = "#" * (2 * i + 1)
       puts spaces + hashes
    end
    # 2nd part of the pyramid
    (level_pyramid / 2).downto(1) do |i|
       spaces = " " * (level_pyramid / 2 - i)
       hashes = "#" * (2 * i - 1)
       puts spaces + hashes
    end
   end
   
   wtf_pyramide(level_pyramid)