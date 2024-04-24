class CalculationsController < ApplicationController

def square_new
  render({:template => "omnical_template/square_new"})
end

def square_results
  @the_num = params.fetch("number").to_f

  @the_result = @the_num**2
  render({:template => "omnical_template/square_results"})
end

def square_root_new
  render({:template => "omnical_template/square_root_new"})
end

def square_root_results
  @the_num = params.fetch("number").to_f

  @the_result = @the_num**(0.5)
  render({:template => "omnical_template/square_root_results"})
end

end
