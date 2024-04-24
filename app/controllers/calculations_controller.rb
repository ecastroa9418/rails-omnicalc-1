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

def payment_new
  render({:template => "omnical_template/payment_new"})
end

def payment_results
  @apr = params.fetch("user_apr").to_f
  @apr_result = @apr.to_fs(:percentage, precision: 4)
  @r_pv = @apr/100/12

  @years = params.fetch("user_years").to_i
  @montly = @years*12

  @pv = params.fetch("user_pv").to_f
  @pv_result = @pv.to_fs(:currency)

  @num = @r_pv*@pv
  @den = 1-(1+@r_pv)**(-@montly)

  @result = (@num/@den).to_fs(:currency)

  render({:template => "omnical_template/payment_results"})
end

end
