def deviation(sequence, int)
  dev = 0
  working_array = sequence
  hold_array = []
  last = 0

  while working_array.length > 2
    last = working_array[0]
    hold_array.push(working_array[0..(int - 1)])
    dev = hold_array[0].max - hold_array[0].min if hold_array[0].max - hold_array[0].min > dev
    working_array.shift
    hold_array.clear
  end
  dev
end

deviation([8, 7, 5, 3, 3, 3, 3, 9, 10], 3)
deviation([6, 9, 4, 7, 4, 1], 3)

3

4

4
