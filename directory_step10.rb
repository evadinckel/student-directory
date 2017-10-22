@students = [] #this empty array is accessible to all methods

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  #let's get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "We now have #{@students.count} students"
    #get another name from the user
    name = gets.chomp
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts "I don't know what you mean, please try again"
  end
end

def print_header
  puts "The Students of Villains Academy"
  puts "--------------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]}cohort)"
  end
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


interactive_menu


#
# def ask_which_letter_you_want_to_filter_with
#   puts 'Which letter you want to filter with? Input 0 to not filter at all'
#   user_input = gets.chomp[0]
#
#   # input == '0' ? nil : input
#   return nil if user_input == '0'
#   user_input
# end
#
# # main function
# def interactive_menu
#   loop do
#     print_menu
#     process (gets.chomp)
#   end
# end
#     #3. Do what the user has asked
#     case selection
#     when "1"
#       students = input_students
#     when "2"
#       show_students
#     when "9"
#       exit #this will cause the program to terminate
#     else
#       puts "I don't know what you meant, try again"
#     end
#   end
# end
#
# def print_menu
#   puts "1. Input the students"
#   puts "2. Show the students"
#   puts "9. Exit"

# def show_students
#   print_header
#   print(students)
#   print_footer(students)
# end



# students = input_students
# print_header
# letter = ask_which_letter_you_want_to_filter_with # returns the letter the user want to filter with, or nil
# print(students, letter)
# print_footer(students)
