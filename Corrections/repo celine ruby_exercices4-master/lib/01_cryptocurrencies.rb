require_relative "./01_array.rb" 

# zip pour combiner les deux tableaux en une seule série de paires de clés et valeurs
# to_h pour convertir ces paires en un hash

$my_hash = $array_name.zip($array_price).to_h


# La crypto qui a la plus grosse valeur
# IMPORTANT !!! la conversion de la value en .to_f
def max_max
  max_value = $my_hash.max_by { |_key, value| value.to_f } #'_' pour indiquer que la variable key n'est pas utilisée dans le bloc de code
  puts "La crypto qui a la plus grosse valeur : #{max_value.first} avec une valeur de #{max_value.last}" #first pour accéder à la clé et last à la valeur du hash
end

# Les 3 cryptos qui ont la plus grosse valeur
def max_3
  sorted_hash = $my_hash.sort_by { |_key, value| -value.to_f }
  top_3 = sorted_hash.first(3)
  top_3.each do |key, value|
     puts "Fait partie du Top 3 : la crypto #{key} avec une valeur de #{value}" 
  end
end

# La crypto qui a la plus petite valeur
def min_min
  min_value = $my_hash.min_by { |_key, value| value.to_f } 
  puts "La crypto qui a la plus grosse valeur : #{min_value.first} avec une valeur de #{min_value.last}" 
end

# La ou les cryptos qui ont la plus petite valeur
def min_3
  sorted_hash = $my_hash.sort_by { |key, value| value.to_f }
  top_3 = sorted_hash.first(3)
  top_3.each do |key, value|
    puts "Fait partie du Top 3 : la crypto #{key} avec une valeur de #{value}"
  end
end

# Les devises dont le cours est inférieur à 6000
def curr_inf_6000
  $my_hash.each do |key, value|
     if value.to_f < 6000
       puts "La crypto #{key} a une valeur inférieure à 6000 avec une valeur de #{value}"
     end
  end
 end

# La devise la plus chère parmi celles dont le cours est inférieur à 6000
def curr_inf_6000_max
  filtered_hash = $my_hash.select { |_key, value| value.to_f < 6000 }
  max_value_crypto = filtered_hash.max_by { |_key, value| value.to_f }
  puts "La crypto la plus chère parmi celles dont le cours est inférieur à 6000 est : #{max_value_crypto.first} avec une valeur de #{max_value_crypto.last}"
 end

def perform
  max_max
  puts "\n" #\n pr le retour à la ligne
  max_3
  puts "\n"
  min_min
  puts "\n"
  min_3
  puts "\n"
  #curr_inf_6000_max 
  puts "\n"
  curr_inf_6000_max
end

perform