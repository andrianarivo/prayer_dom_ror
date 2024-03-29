require 'rails_helper'

RSpec.describe 'Home', type: :request do
  let(:author) { FactoryBot.create(:author) }

  before(:each) do
    sign_in author
  end

  describe 'GET /index' do
    it 'returns http success' do
      get '/'
      expect(response).to have_http_status(:success)
    end
  end
end
