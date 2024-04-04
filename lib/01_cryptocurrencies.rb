require_relative "01_core/databases.rb"
require_relative "01_core/actions.rb"

hash_crypto = Hash[$arr_crypto.zip($arr_value)]
puts ""
puts "\e[31m===================================================================================================\e"
puts "\e[31mfct01:\e[0m La ou les crypto qui ont la plus grosse valeur."
var01 = fct01 (hash_crypto)
puts var01
puts "\e[31m===================================================================================================\e"
puts ""
puts ""
puts "\e[31m===================================================================================================\e"
puts "\e[31mfct02:\e[0m La ou les crypto qui ont la plus petite valeur."
var02 = fct02 (hash_crypto)
puts var02
puts "\e[31m===================================================================================================\e"
puts ""
puts ""
puts "\e[31m===================================================================================================\e"
puts "\e[31mfct03:\e[0m Les devises dont le cours est inférieur à 6000 : Methode loop avec if + puts"
var03 = fct03 (hash_crypto)
puts var03
puts ""
puts "\e[31m===================================================================================================\e"
puts ""
puts ""
puts "\e[31m===================================================================================================\e"
puts "\e[31mfct04:\e[0mLes devises dont le cours est inférieur à 6000 : Methode select selon parametre"
var04 = fct04 (hash_crypto)
print var04
puts"" 
puts "\e[31m===================================================================================================\e"
puts ""
puts ""
puts "==================================================================================================="
puts "\e[31mfct05:\e[0m La devise la plus chère parmi celles dont le cours est inférieur à 6000."
var05 = fct05 (hash_crypto)
puts var05
puts "==================================================================================================="