# 1) Create a function that prints the sum of an array and returns the array with all values below a threshold removed
arr = [3, 5, 1, 2, 7, 9, 8, 13, 25, 32]
def sum_of(arr, low, sum=0)
    arr.each {|i| sum = i += i }
    p sum
    p arr.reject { |i| i<low }
end
sum_of(arr, 10)

# 2) Create a function that takes an array of strings. Have it return the array shuffled, and a second array with lengths above a threshold removed
arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
def shuffle_array(arr, high)
    p arr.shuffle
    p arr.reject { |i| i.length>high}
end
shuffle_array(arr, 5)

# 3) Create an array containing the alphabet; shuffle this array and print the letter at the 0 and 25th index, display a message if the value at the 0th index is a vowel
arr = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
def alphabet(arr)
    first = arr.shuffle.values_at(0,25) 
    p first
    p "#{first[0]} is a vowel!" if ["a", "e", "i", "o", "u", "y"].include? first[0]
end
alphabet(arr)

#4) Generate an array with 10 random numbers between 55-100
def random_arr()
   p 10.times.map{ 55 + Random.rand(46) }
end
random_arr

# 5) Generate an array with 10 random numbers between 55-100. Order and print this array, also printing the lowest and the highest value.
def sorted_random()
    arr = 10.times.map{ 55 + Random.rand(46) }.sort
    p arr
    p arr[0]
    p arr[9]
end
sorted_random

# 6) Generate a random string that is 5 characters long
def random_str()
    p (0...5).map { (65 + rand(26)).chr }.join
end
random_str

# 7) Generate 10 random strings that are 5 characters long
def many_random()
    10.times do
        p (0...5).map { (65 + rand(26)).chr }.join
    end
end
many_random


