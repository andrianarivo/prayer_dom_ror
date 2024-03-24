require 'rails_helper'

RSpec.describe 'Home', type: :request do
  subject do
    FactoryBot.create(:user)
  end

  before(:each) do
    sign_in subject
  end

  describe 'GET /index' do
    it 'returns http success' do
      get '/'
      # it is :found (302) because it redirects to /users/sign_in
      expect(response).to have_http_status(:success)
    end
  end
end
