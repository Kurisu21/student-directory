@students = []

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    
    name = gets.chomp

    while !name.empty? do
        # add the student has to the array
        @students << {name: name, cohort: :november}
        puts "Now we have #{@students.count} students"
        
        name = gets.chomp
    end
    @students
end

@students = input_students

def print_header
    puts "The students of Villains Academy"
puts "---------------"
end

def print(students)
  @students.each_with_index do |student, index|
      puts "#{index+1} #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
    puts "Overall we have #{@students.count} great students"
end

def interactive_menu
  # @students = []
  loop do

    print_menu
    selection = gets.chomp

    case selection
    when "1"
      @students = input_students
    when "2"

    show_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
    end
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" 
end


def show_students
  print_header
  print(@students)
  print_footer(@students)
end


interactive_menu
print_header
print(students)
print_footer(students)