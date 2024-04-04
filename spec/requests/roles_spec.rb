require 'rails_helper'

RSpec.describe 'Roles', type: :request do
  let(:author) { FactoryBot.create(:author) }

  let(:valid_attributes) do
    { title: RoleConstants::ROLES.sample }
  end

  let(:invalid_attributes) do
    { title: '' }
  end

  before(:each) do
    sign_in author
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      get roles_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      role = Role.create! valid_attributes
      get role_url(role)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_role_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      role = Role.create! valid_attributes
      get edit_role_url(role)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Role' do
        expect do
          post roles_url, params: { role: valid_attributes }
          puts response.body
        end.to change(Role, :count).by(1)
      end

      it 'redirects to the created role' do
        post roles_url, params: { role: valid_attributes }
        expect(response).to redirect_to(role_url(Role.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Role' do
        expect do
          post roles_url, params: { role: invalid_attributes }
        end.to change(Role, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post roles_url, params: { role: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        { title: RoleConstants::ROLES.sample }
      end

      it 'updates the requested role' do
        role = Role.create! valid_attributes
        patch role_url(role), params: { role: new_attributes }
        role.reload
        expect(role.title).to eq(new_attributes[:title])
      end

      it 'redirects to the role' do
        role = Role.create! valid_attributes
        patch role_url(role), params: { role: new_attributes }
        role.reload
        expect(response).to redirect_to(role_url(role))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        role = Role.create! valid_attributes
        patch role_url(role), params: { role: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested role' do
      role = Role.create! valid_attributes
      expect do
        delete role_url(role)
      end.to change(Role, :count).by(-1)
    end

    it 'redirects to the prayers list' do
      role = Role.create! valid_attributes
      delete role_url(role)
      expect(response).to redirect_to(roles_url)
    end
  end
end
