require 'rails_helper'

RSpec.describe CalculationsController, type: :controller do
  let(:request_body) {
    { data: { birthdate: "1990-12-16T00:00:00Z" } }
  }

  let(:headers) {
    { "Content-Type" => "application/json" }
  }

  describe "GET #age" do
    it "returns http success" do
      post :age, request_body, headers
      expect(response).to have_http_status(:success)
    end
  end

end
