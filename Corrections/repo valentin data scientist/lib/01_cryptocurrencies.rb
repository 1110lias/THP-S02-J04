require_relative "./01b_cryptocurrencies_db.rb"

myHash = Hash[$cryptocurrencies.zip($prices)]

def xxxx = puts "-" * 10

def highestPrice(hash)
    highest = hash.max_by { |crypto, price| price.to_f }
    highestCrypto = highest[0]
    highestValue = highest[1]
    puts "the highest priced crypto is #{highestCrypto} with a value of #{highestValue}"
end 

def lowestPrice(hash)
    lowest = hash.min_by { |crypto, price| price.to_f }
    lowestCrypto = lowest[0]
    lowestValue = lowest[1]  
    puts "the lowest priced crypto is #{lowestCrypto} with a value of #{lowestValue}"
end 

def under6000(hash)
    lowHash = hash.select { |crypto, price| price.to_f < 6000 }
    lowHashSorted = lowHash.sort_by { |crypto, price| price.to_f }
    puts "the cryptos which are valued under 6000 are #{lowHashSorted.first(10)} etc."
end

def highestUnder6000(hash)
    lowHash = hash.select { |crypto, price| price.to_f < 6000 }
    lowHashSorted = lowHash.sort_by { |crypto, price| price.to_f }
    highestCrypto = lowHashSorted.last[0]
    highestValue = lowHashSorted.last[1]
    puts "the highest priced crypto valued under 6000 is #{highestCrypto} with a value of #{highestValue}"

end 

def output (myHash)
    xxxx
    highestPrice(myHash)
    xxxx
    lowestPrice(myHash)
    xxxx
    under6000(myHash)
    xxxx
    highestUnder6000(myHash)
    xxxx
end

output(myHash)
