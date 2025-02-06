class RandomsController < ApplicationController
  def random
    render({:template => "randoms_template/random"})
  end

  def random_result
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @output = rand(@min..@max)

    render({:template => "randoms_template/random_result"})
  end
end
