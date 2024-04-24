class SquareController < ApplicationController

def new
  render({:template => "omnical_template/square_new"})
end

def results
  @the_num = params.fetch("number").to_f

  @the_result = @the_num**2
  render({:template => "omnical_template/square_results"})
end

end
