require_relative "./00b_journalists_db.rb"

def xxxx = puts "-" * 10

def stringsNum(array) 
    puts "there are #{array.length} journalists in the database."
end

def shorteststring(array)
    min = array.min_by {|string| string.length}
    puts "the shortest handle is #{min}."
end

def fiveChar(array)
    newArray = array.map {|string| string.length}
    newArray.delete_if{|num| num != 6}
        puts "there are #{newArray.length} handle with 5 characters"
end

def startWithCap(array)
    newArray = array.map {|string| string[1] =~ /[A-Z]/}   
    puts "there are #{newArray.count(0)} handles that start with a cap"
end

def alphabeticalSort(array)
    newArray = array.sort
    puts newArray[0, 10].inspect
end

def sizeSort(array)
    newArray = array.sort_by {|string| string.length}
    puts newArray[0, 10].inspect
end

def epenser(array)
    index = array.index("@epenser")
    puts "@epenser is at the index: #{index}" 
end 

# def sizeDistrib(array)
#     #newArray = array.map {|string| string.length}
#     newArray = array.sort_by {|string| string.length}

#     newArray.each do |i|
#         if 
#             newArray[]
#         end
#     end 

#     puts newArray.inspect
# end

# 3 char = 1 / 32 char = 1

def output
    xxxx
    stringsNum($journalists)
    xxxx
    shorteststring($journalists)
    xxxx
    fiveChar($journalists)
    xxxx
    startWithCap($journalists)
    xxxx
    alphabeticalSort($journalists)
    xxxx
    sizeSort($journalists)
    xxxx
    epenser($journalists)
    xxxx
    #sizeDistrib($journalists)
end

output
