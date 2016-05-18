lottery_array = []
answer = ""
until answer == "no"
  random_number = rand(0..59)
  puts "Select a number? 'yes' or 'no'"
  answer = gets.chomp.downcase
  if answer == "yes"
    if lottery_array == []
      lottery_array << random_number
    else
      lottery_length_max = lottery_array.length + 1
      lottery_array.each do |selection|
        if random_number <= selection  
          lottery_array.insert(lottery_array.index(selection), random_number)
          break  
        end
      end
      if lottery_array.length < lottery_length_max
        lottery_array.push(random_number)
      end
    end
  end
puts "#{lottery_array}"
end
        