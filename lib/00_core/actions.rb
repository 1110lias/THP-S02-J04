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
    puts arr_sorted
end

def action_06
    arr_handles = db_select(1)
    arr_sorted = arr_handles.sort_by { |var_iter| var_iter.length }
    puts arr_sorted
end