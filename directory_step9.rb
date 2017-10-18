def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #we're creating an empty array
  students = []
  #let's get the first name
  name = gets.chomp
  #while the name is not empty, reapeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "We now have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The Students of Villains Academy"
  puts "--------------------"
end

=begin
def print(students, letter)
  # letter could be an actual letter like 'a' or could be nil
  # if letter is an actual letter I only want to print the students that start with that letter
  # if letter is nil, then I want to print ALL the students
  students.each_with_index do |student, index|
    if student[:name][0] == letter || letter.nil? # letter given by the user
      # the name starts with letter a
      # print it
      puts "#{index}, #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end
=end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def ask_which_letter_you_want_to_filter_with
  puts 'Which letter you want to filter with? Input 0 to not filter at all'
  user_input = gets.chomp[0]

  # input == '0' ? nil : input
  return nil if user_input == '0'
  user_input
end

# main function
def interactive_menu
  students = []
  loop do
    #1. print the manu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    #2. read the input and save it into a variable
    selection = gets.chomp
    #3. Do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit #this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end

interactive_menu

# students = input_students
# print_header
# letter = ask_which_letter_you_want_to_filter_with # returns the letter the user want to filter with, or nil
# print(students, letter)
# print_footer(students)
