require_relative "../../lib/age_calculator"

class CalculationsController < ApplicationController
  def age
    render json: resp_body
  end

  protected

  def calculated_age
    ::AgeCalculator.new(profile_params.fetch(:birthdate)).get_age!
  end

  def resp_body
    {
      request: {
        first_name: profile_params.fetch(:first_name, nil),
        last_name:  profile_params.fetch(:last_name, nil),
        birthdate:  profile_params.fetch(:birthdate)
      },
      age: calculated_age
    }.to_json
  end

  def profile_params
    params.require(:data).permit(:first_name, :last_name, :birthdate)
  end
end
