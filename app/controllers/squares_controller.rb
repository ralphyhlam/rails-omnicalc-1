class SquaresController < ApplicationController
  def square 
    render({:template => "squares_template/square"})
  end

  def square_result
    @input = params.fetch("user_square").to_f
    @output = @input ** (2)

    render({:template => "squares_template/square_result"})
  end


end
