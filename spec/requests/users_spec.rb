require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:role) { FactoryBot.create(:role) }
  let(:user) { FactoryBot.create(:user) }

  let(:sign_in_valid_attributes) do
    { email: user.email, password: 'admin1234' }
  end

  let(:sign_in_invalid_attributes) do
    { email: '', password: '' }
  end

  describe 'GET /' do
    it 'redirects to login page' do
      get root_path
      expect(response).to redirect_to(new_user_session_path)
    end
  end

  describe 'GET /users/sign_in' do
    it 'renders a successful response' do
      get new_user_session_path
      expect(response).to be_successful
    end
  end

  describe 'GET /users/sign_up' do
    it 'renders a successful response' do
      get new_user_registration_path
      expect(response).to be_successful
    end
  end

  describe 'POST /users/sign_in' do
    context 'with valid parameters' do
      it 'creates a new user session' do
        post new_user_session_path, params: { user: sign_in_valid_attributes }
        expect(response).to redirect_to(root_path)
      end

      it 'redirects to the home page' do
        post new_user_session_path, params: { user: sign_in_valid_attributes }
        follow_redirect!
        expect(response.body).to include('Signed in successfully.')
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new user session' do
        post new_user_session_path, params: { user: sign_in_invalid_attributes }
        expect(response).to_not redirect_to(root_path)
      end

      it 'renders a response with 422 status' do
        post new_user_session_path, params: { user: sign_in_invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
