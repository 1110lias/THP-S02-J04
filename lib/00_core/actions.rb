require_relative "databases.rb"

def action_01
    arr_handles = db_select(1)
    qty_elmt = arr_handles.size.to_i
    stg_disp = "Il y a #{qty_elmt} handles dans votre base de donnée." 
    return stg_disp
end

def action_02
    arr_handles = db_select(1)
    shr_elmt = arr_handles.min_by { |var_iter| var_iter.length}
    stg_disp = "L'array le plus court est celui-ci: #{shr_elmt}. Il contient #{shr_elmt.size - 1} caractères, sans le ''@''"
    return stg_disp
end

def action_03
    arr_handles = db_select(1)
    nb_elmt = arr_handles.count { |var_iter| var_iter.length == 6}
    stg_disp = "Il y a #{nb_elmt} handles composés de 5 charactères, sans compter le ''@''"
    return stg_disp
end

def action_04
    arr_handles = db_select(1)
    nb_elmt = arr_handles.count { |var_iter| var_iter[1]=~/[A-Z]/ }
    stg_disp = "#{nb_elmt} handles comportent une majuscule juste après le ''@''"
    return stg_disp
end

def action_05
    arr_handles = db_select(1)
    arr_sorted = arr_handles.sort_by { |var_iter| var_iter.downcase }
    return arr_sorted
end

def action_06
    arr_handles = db_select(1)
    arr_sorted = arr_handles.sort_by { |var_iter| var_iter.length }
    return arr_sorted
end

def action_07
    arr_handles = db_select(1)
    pos_dat = arr_handles.index("@epenser")
    return "@epenser est en #{pos_dat} position dans l'array."
end

def action_08
    arr_handles = db_select(1)
    arr_cat = []
    max_length = arr_handles.max_by { |handle| handle.length }.length
    for y in (1 .. max_length)
    count_handles = arr_handles.count { |handle| handle.length == y }
    arr_cat << "Il y a \e[33m#{count_handles}\e[0m handle(s) qui comporte \e[33m#{y-1}\e[0m lettre(s), sans compter le ''@''"
    end
    return arr_cat
end

def action_09
    puts "Vous êtes sur le point de supprimer tous les handles et ça pue l'idée de merde!"
    user_rep = "o"
    var_vrm = ""
    until user_rep == "non"
        print "Etes-vous "
        print var_vrm 
        puts "sur de vouloir faire ça? (oui /non)"
        user_rep = gets.chomp
        print "> "
        var_vrm += "\e[31mvraiment\e[0m " 
    end
    print "\e[32mSage décision!\e[0m "
end

def action_10
    puts"Suppression des Handles en cours"
    for i in (1..15)
        print ". "
        sleep 0.1
    end
    sleep 1
    puts ""
    puts "Tous les handles ont été supprimés."
    puts puts "\e[31m= FIN ====================================================================\e[0m"
    exit
end




