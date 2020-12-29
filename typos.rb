@students = []

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9.Exit"
end

def interactive_menu
  loop do
  print_menu
  process(STDIN.gets.chomp)
  end
end


def feedback(selection)
  options = ["1","2","3","4","9"]
    if options.include?(selection.chomp)
    puts "OK, let's do that"
  else
    puts "I don't know what you meant, try again"
  end
end


def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit #this will cause the program to terminate
  end
  feedback(selection)
end


def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = STDIN.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
  # add the student hash to the array
  add_to_students(name, :cohort)
  # @students << {name: name, cohort: :november}
  puts "Now we have #{@students.count} students"
  # get another name from the user
  name = STDIN.gets.chomp
  end
end

def show_students
  print_header
  print_students_list
  print_footer
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  # ask for a file to save to
  puts "Which file do you want to save to?"
  # save the user input to their chosen file
  chosen_file = STDIN.gets.chomp
  if chosen_file.empty?
    chosen_file = "students.csv"
  # open file for writing
  file = File.open(chosen_file, "w") do |file|
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
end
end
end

def load_students
  # ask for a file to save to
  puts "Which file do you want to save to?"
  # save the user input to their chosen file
  chosen_file = STDIN.gets.chomp
  if chosen_file.empty?
    chosen_file = "students.csv"
  file = File.open(chosen_file, "r") do |file|
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    add_to_students(name, :cohort)
      end
    end
  end
end


def add_to_students(name, cohort)
  @students << {name: name, cohort: :jan}
end

def try_load_students
  filename = ARGV.first #first argument from the command csv_line
  return if filename.nil? #get out of the method if it isnt given
  if File.exists?(filename) #if it exists
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else # if it doesnt exist
    puts "Sorry, #{filename} doesn't exist."
    exit # quit the program
  end
end

try_load_students
interactive_menu
