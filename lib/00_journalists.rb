require_relative "00_core/databases.rb"
require_relative "00_core/actions.rb"

def perform 
        puts ""
        puts "=======[Initialisation]======="
        arr_menu = db_select (2)
        for i in (1..15)
            print ". "
            sleep 0.1
        end
    puts puts ""
    puts "\e[31m**************MENU**************\e[0m"
    puts arr_menu
    puts puts "\e[31m********************************\e[0m"
    puts "\e[32mVeuillez saisir le N° de l'action souhaitée au format ''00''\e[0m"
    print "\e[32m> \e[0m"
    user_req = gets.chomp.to_s
    puts puts "Vous avez séléctionné: #{arr_menu[user_req.to_i - 1]} "
    sleep 0.6
    name_action = "action_#{user_req.to_s}"
    call_action = send(name_action)
    puts "\e[31m= REPONSE ================================================================\e[0m"  
    sleep 0.6
    puts call_action
    sleep 0.6
    puts puts "\e[31m= FIN ====================================================================\e[0m"
end

perform