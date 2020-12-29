def input_students
  puts "Please enter the names of the students".center(150)
  puts "To exit, just hit enter four times".center(150)
  # create an empty array
  @students = []

  name = gets.strip

  puts "Please enter the students cohort".center(150)
  cohort = gets.strip

  puts "Please enter the country of birth".center(150)
  country_of_birth = gets.strip

  puts "Please enter your height in cm".center(150)
  height = gets.strip

  # while the name is not empty, repeat this code
  while !name.empty? do # && !height.empty? && !country_of_birth.empty?
    # add the student hash to the array
    @students << {name: name.capitalize, height: height, country_of_birth: country_of_birth, cohort: cohort.capitalize}

    puts "Now we have #{@students.count} students".center(150)

    puts "Please enter the names of the students".center(150)
    name = gets.strip
# put in a if the is exit = break the loop.


    puts "Please enter the students cohort".center(150)
    cohort = gets.strip

    puts "Please enter the country of birth".center(150)
    country_of_birth = gets.strip

    puts "Please enter your height in cm".center(150)
    height = gets.strip

    # if (name || cohort || country_of_birth || height) == 'exit'
    # exit
end
@students
end






def print_header
  puts "The students of Villians Academy".center(150)
  puts "-------------".center(150)
end
# create instance variable
@cohorts = "placeholder"
# print cohort by group
# get list of students
def print_by_cohort(students)
  @cohorts = students.map do |student|
    student[:cohort]
  end
  # take out duplicates for cohort groups
  @cohorts.uniq.each do |cohort|
    puts "#{cohort} cohort".upcase.center(150)
    students.each do |student|
      # if student cohort matches the cohort of the group put them in that list.
      if student[:cohort] == cohort
        puts "#{student[:name]}, #{student[:height]}cm, #{student[:country_of_birth].upcase}".center(150)
      end
    end
  end
end
# def print(students)
#       students.each_with_index do |student, index|
#       puts "#{index + 1}. #{student[:name]}, Height: #{student[:height]}cm, Country of birth: #{student[:country_of_birth]} (#{student[:cohort]} cohort)".center(150)
#     end
#   end

def print_footer(names)
  if @cohorts.length == 1
    puts "Overall, we have #{names.count} great student".center(150)
  elsif @cohorts.length < 1
    puts "Overall, we have #{names.count} great students!".center(150)
  end
end



# nothing happens until we call the methods.
@students = input_students
print_header
print_by_cohort(@students)
print_footer(@students)
