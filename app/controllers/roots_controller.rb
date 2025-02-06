class RootsController < ApplicationController
  def root 
    render({:template => "/roots_template/root"})
  end

  def root_result
    @input = params.fetch("user_root").to_f
    @output = @input ** (0.5)

    render({:template => "/roots_template/root_result"})
  end
end
