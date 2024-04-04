require_relative "databases.rb"



#attention il faut mettre .to_f a la variable! 

def fct01 (hash_crypto)
    a_crypto = hash_crypto.sort_by { |a, b| b.to_f }.last(5)
    return a_crypto
end


def fct02 (hash_crypto)
    b_crypto = hash_crypto.sort_by { |a, b| b.to_f }.first(5)
    return b_crypto
end

def fct03 (hash_crypto)
    c_crypto = []
hash_crypto.each do |varnom, varval|
    if varval.to_f > 6000
      str_add = "#{varnom}: #{varval}"
      c_crypto << str_add
    end
end
    return c_crypto
end

def fct04 (hash_crypto)
    d_crypto = []
d_crypto = hash_crypto.select { |varnom, varval| varval.to_f < 6000 }.sort_by { |varnom, varval| -varval }
return d_crypto
end

def fct05 (hash_crypto)
filtered_crypto = hash_crypto.select { |varnom, varval| varval.to_f < 6000 }
highest_crypto_6000 = filtered_crypto.sort_by { |a, b| b.to_f }.last(1)
puts highest_crypto_6000
end