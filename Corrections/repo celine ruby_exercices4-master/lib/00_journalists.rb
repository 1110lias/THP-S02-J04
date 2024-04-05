require_relative "./00_array.rb" 

#Choix de la question
def welcome 
  puts "Welcome ! Choisis ce que tu veux savoir en tapant le numéro correspondant..."
  puts "1. Nombre de handle"
  puts "2. Handle le plus court"
  puts "3. Handle contenant 5 caractères"
  puts "4. Handle commencant par une majuscule"
  puts "5. Handle par ordre alphabétique"
  puts "6. Handle trié du plus petit au plus grand"
  puts "7. Handle trié du plus grand au plus petit"
  puts "8. La position du handle epenser"
  puts "9. Répartitions des tailles de Handle"
  puts "10. Surprise..."
  print "> "
  user_input = gets.chomp.to_i
end

# 1. Combien y a-t-il de handle dans cette array ?
def length
  length = $handle_twitter.length
  puts "Il y a #{length} handles dans cette array"
end 

# 2. Quel est le handle le plus court de cette liste ?
def min
  min = $handle_twitter.min_by {|handle| handle.length}
  puts "Le handle le plus court de la liste est #{min}"
end 

# 3. Combien y-a-t'il de handle contenant 5 caractères (le @ ne compte pas pour un caractère)
def five_char
  count = $handle_without_at.count {|handle| handle.length == 5}
  puts "Il y a #{count} handles contenant 5 caractères"
end

# 4. Combien commencent par une majuscule (première lettre juste après le @) ?
def upper
  uppercase_count = $handle_without_at.count {|handle| handle [1] =~ /[A-Z]/}
  puts "Il y a #{uppercase_count} handles commencant par une majuscule"
end

# 5. Trie la liste de handle par ordre alphabétique.
def sorted
  handle_sorted = $handle_without_at.sort
  puts handle_sorted
end

# 6. Trie la liste de handle par taille des handle (les plus petits en premiers, les plus grands après)
def minmax
  handle_sorted_mintomax = $handle_without_at.sort_by {|handle| handle.length}
  puts handle_sorted_mintomax
end

# 7. Trie la liste de handle par taille des handle (les plus petits en premiers, les plus grands après)
def maxmin
  handle_sorted_maxtomin = $handle_without_at.sort_by {|handle| -handle.length}
  puts handle_sorted_maxtomin
end

# 8. Quelle est la position dans l'array de la personne @epenser ?
def position
  handle_epenser = "@epenser"
  position = $handle_twitter.find_index(handle_epenser)
  puts "Le handle @epenser se trouve à la position #{position} dans l'array."
end

# 9. Répartition des tailles
def repartition
  taille_handles = Hash.new(0)  #crée un nouvel objet de type Hash avec une valeur par défaut de 0
  $handle_without_at.each do |handle|
    taille = handle.length
    taille_handles[taille] += 1
  end
  taille_handles.sort.each do |taille, count|
  puts "Nombre de handles avec #{taille} caractères : #{count}"
end
end

# 10. Surprise
def surprise
  ascii_art = <<-ASCII
                       _.-**-._
                    _,(        ),_
                 .-"   '-^----'   "-.
              .-'                    '-.
            .'                          '.
          .'    __.--**'""""""'**--.__    '.
         /_.-*"'__.--**'""""""'**--.__'"*-._\
        /_..-*"'   .-*"*-.  .-*"*-.   '"*-.._\
       :          /       ;:       \          ;
       :         :     *  !!  *     :         ;
        \        '.     .'  '.     .'        /
         \         '-.-'      '-.-'         /
      .-*''.                              .'-.
   .-'      '.                          .'    '.
  :           '-.        _.._        .-'        '._
 ;"*-._          '-._  --___ `   _.-'        _.*'  '*.
:      '.            `"*-.__.-*"`           (        :
 ;      ;                 *|                 '-.     ;
  '---*'                   |                    ""--'
   :                      *|                      :
   '.                      |                     .'
     '.._                 *|        ____----.._-'
      \  """----_____------'-----"""         /
       \  __..-------.._        ___..---._  /
       :'"              '-..--''          "';
        '""""""""""""""""' '"""""""""""""""'
ASCII
  
  puts ascii_art
end


def perform
  user_input = welcome

  if user_input == 1
    length
  elsif user_input == 2
    min
  elsif user_input == 3
    five_char
  elsif user_input == 4
    upper
  elsif user_input == 5
    sorted
  elsif user_input == 6
    minmax
  elsif user_input == 7
    maxmin
  elsif user_input == 8
    position
  elsif user_input == 9
    repartition
  elsif user_input == 10
    surprise
  end
  
end

perform