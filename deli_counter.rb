# Write your code here.
def line(deli_counter)
  if deli_counter.length == 0
    puts "The line is currently empty."
  else
    line_array = []
    deli_counter.each_with_index do |name, i|
      line_array.push ("#{i + 1}. #{name}")
    end
    puts "The line is currently: #{line_array.join(" ")}"
  end
end

def take_a_number(deli_counter, customer)
  deli_counter.push(customer)
  puts "Welcome, #{customer}. You are number #{deli_counter.length} in line."
end

def now_serving(deli_counter)
  if deli_counter.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_counter[0]}."
    deli_counter.shift
  end
end
line([])
now_serving(["James","Lena","Rio"])
take_a_number(["James"], "Mike")
