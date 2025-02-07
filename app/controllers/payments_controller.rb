class PaymentsController < ApplicationController
  def payment
    render({:template => "payments_template/payment"})
  end

  def payment_result
    @input_apr = params.fetch("apr").to_f
    @format_apr = @input_apr.to_fs(:percentage, {:precision => 4})

    calc_apr = ((@input_apr) / (100)) / 12
  
    @input_period = params.fetch("years").to_i
    calc_period = (@input_period) * (12)

    @input_principal = params.fetch("principal").to_f
    @format_principal = @input_principal.to_fs(:currency)

    numerator = calc_apr * (@input_principal)
    @denominator = 1 - ((1 + calc_apr)**(-1 * calc_period))

    @payment = (numerator/@denominator).to_fs(:currency)

    render({:template => "payments_template/payment_results"})
  end
end
