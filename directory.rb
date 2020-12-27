def input_students
  puts "Please enter the names of the students".center(150)
  puts "To finish, just hit enter twice".center(150)
  # create an empty array
  students = []
  # get the first names
  name = gets.chomp

  puts "Please enter the country of birth".center(150)
  country_of_birth = gets.chomp

  puts "Please enter your height in cm".center(150)
  height = gets.chomp

  # while the name is not empty, repeat this code
  while  !name.empty? # && !height.empty? && !country_of_birth.empty?
    # add the student hash to the array
    students << {name: name, height: height, country_of_birth: country_of_birth, cohort: :november}

    puts "Now we have #{students.count} students".center(150)

    puts "Please enter the names of the students".center(150)
    # get another name from the user
    name = gets.chomp

    if name.empty?
      break
    else
    puts "Please enter the country of birth".center(150)
    country_of_birth = gets.chomp

    puts "Please enter your height in cm".center(150)
    height = gets.chomp
  end
end
  # return the array of students
students
end


def print_header
  puts "The students of Villians Academy".center(150)
  puts "-------------".center(150)
end

def print(students)
  count = 0
    until count >= students.count
      students.each_with_index do |student, index|
      puts "#{index + 1}. #{student[:name]}, height: #{student[:height]}cm, country of birth: #{student[:country_of_birth]} (#{student[:cohort]} cohort)".center(150)
count += 1
    end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(150)
end

# nothing happens until we call the methods.
students = input_students
print_header
print(students)
print_footer(students)
