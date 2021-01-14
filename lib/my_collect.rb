def my_collect(arr)
    if block_given?
        i = 0
        new_arr = []
        while i < arr.length
            new_arr.push(yield(arr[i]))
            i += 1
        end
        new_arr
    end
end

# array = ["Tim Jones", "Tom Smith", "Jim Campagno"]

# p my_collect(array) do |name|
#   name.split(" ").first
# end 

# p my_collect(array) {|name| name}
# p my_collect(array) {|name| "Hey, #{name.split(" ").first}!" }