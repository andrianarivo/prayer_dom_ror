require 'rails_helper'

RSpec.describe 'Home', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/'
      # it is :found (302) because it redirects to /users/sign_in
      expect(response).to have_http_status(:found)
    end
  end
end
