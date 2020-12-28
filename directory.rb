def input_students
  puts "Please enter the names of the students".center(150)
  puts "To exit, just enter 'exit'".center(150)
  # create an empty array
  @students = []

  name = gets.chomp

  puts "Please enter the students cohort".center(150)
  cohort = gets.chomp

  puts "Please enter the country of birth".center(150)
  country_of_birth = gets.chomp

  puts "Please enter your height in cm".center(150)
  height = gets.chomp

  # while the name is not empty, repeat this code
  while true do # && !height.empty? && !country_of_birth.empty?
    # add the student hash to the array
    @students << {name: name.capitalize, height: height, country_of_birth: country_of_birth, cohort: cohort}

    puts "Now we have #{@students.count} students".center(150)

    puts "Please enter the names of the students".center(150)
    name = gets.chomp
# put in a if the is exit = break the loop.
    if name == 'exit'
    exit


    puts "Please enter the students cohort".center(150)
    cohort = gets.chomp

    puts "Please enter the country of birth".center(150)
    country_of_birth = gets.chomp

    puts "Please enter your height in cm".center(150)
    height = gets.chomp
end
@students
end
end





def print_header
  puts "The students of Villians Academy".center(150)
  puts "-------------".center(150)
end

def print(students)
      students.each_with_index do |student, index|
      puts "#{index + 1}. #{student[:name]}, Height: #{student[:height]}cm, Country of birth: #{student[:country_of_birth]} (#{student[:cohort]} cohort)".center(150)
    end
  end

def print_footer(names)
  if @students.length == 1
    puts "Overall, we have #{names.count} great student".center(150)
  elsif @students.length < 1
    puts "Overall, we have #{names.count} great students!".center(150)
  end
end


# nothing happens until we call the methods.
@students = input_students
print_header
print(@students)
print_footer(@students)
