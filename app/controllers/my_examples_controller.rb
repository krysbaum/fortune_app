class MyExamplesController < ApplicationController
  def show_method
    @my_examples.punch(request)
    # I tried to use punching bag and got confused and it doesn't work but I tried to get a hit count idk. :(
  end

  def fortune_method
    one = "You will have good luck all day tomorrow. Nice!"
    two = "Someone you care about will win a lot of money... and share some with you!"
    three = "You will be tired tomorrow; go easy on yourself."
    four = "Someone special will be thinking about you... this will only work if one of your lucky numbers is 9."
    lottery = "#{Random.rand(1...61)}, #{Random.rand(1...61)}, #{Random.rand(1...61)}, #{Random.rand(1...61)}, #{Random.rand(1...61)}, #{Random.rand(1...61)}"
    fortune = Random.rand(1...5)
    if fortune == 1
      render json: { message: "#{one} Your lucky numbers are: #{lottery}." }
    elsif fortune == 2
      render json: { message: "#{two} Your lucky numbers are: #{lottery}." }
    elsif fortune == 3
      render json: { message: "#{three} Your lucky numbers are: #{lottery}." }
    else
      render json: { message: "#{four} Your lucky numbers are: #{lottery}." }
    end
  end
end
