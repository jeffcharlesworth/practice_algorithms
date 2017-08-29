def build_array(length)
  new_array = []
  length.times { new_array << rand(1..10000) }
  new_array
end

#binary search
array = [6, 7, 2, 1, 10, 9, 5, 18, 17, 20, 21, 42, 64, 86]

def binary_search(array, num)
  counter = 0
  middle = array[(array.length/2)]
  return false if num > array[(array.length) -1]
  return false if num < array[0]
  while array.length > 2
    if num < middle
      array = array[0..array.length/2]
      middle = array[(array.length/2)]
      counter += 1
    elsif num > middle
      array = array[array.length/2..(array.length) -1]
      middle = array[(array.length/2)]
      counter +=1
    elsif num == middle
      counter += 1
      puts counter
      return true
    end
  end
  puts counter
  array.each{ |number| return true if number == num }
  false
end

binary_search(array, 10)
