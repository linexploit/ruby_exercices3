def signup
    puts "Définis un mot de passe"
    print "> "
    password = gets.chomp #si variable gloabale utlisé $password
end 

def login(password)
    puts "Quel est ton mdp ?"
    print "> "
    password_login = gets.chomp
    while password_login != password
        puts "Tu t'es trompé, recommence :"
        print "> "
        password_login = gets.chomp
    end
end

def welcome_screen
    puts "Bienvenue dans ta zone secrète ! Voici quelques informations top secrètes..."
end

def perform
    password = signup
    login(password)
    welcome_screen
end
  
perform
