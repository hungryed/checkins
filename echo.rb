require 'pry'
class Echo

  def initialize

  end

  def questioner(question)
    puts question + "\n"
    print "> "
    input = gets.chomp
  end

  def repeater(input)
    if input.length == 1
      puts "You said: #{input.join(" ")}"
    else
      multi_input(input)
    end
  end

  def then_you(input)
    puts "Then you said: #{input}"
  end

  def finally_you(input)
    puts "Finally you said: #{input}"
  end

  def input_eval(input)
    inputs = []
    if input.downcase == "nothing!"
      puts "Ok, Fine!"
      exit
    elsif input.downcase == 'i have a lot to say'
      puts "Ok, lets hear it!"
      inputs = input_looper
    else
      inputs << input
    end
    inputs
  end

  def multi_input(array_of_inputs)
    index = 0
    while index < array_of_inputs.length - 1
      if index == 0
        repeater([array_of_inputs[index]])
      elsif
        then_you(array_of_inputs[index])
      end
      index += 1
    end
    finally_you(array_of_inputs[index])
    print "Phew! Glad you got all #{array_of_inputs.length}"
    puts " of those things out"
  end

  def file_reader(user_named_file)

  end

  def input_looper
    inputs = []
    while true
      input = questioner("")
      break if input.downcase == 'done'
      inputs << input
    end
        # binding.pry
    inputs
  end

  def question_loop
    input = questioner("What would you like to say")
    input = input_eval(input)
    repeater(input)
  end
end

echo = Echo.new
echo.question_loop
