require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/statuses', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Status. As you add validations to Status, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    { title: Faker::Lorem.word }
  end

  let(:invalid_attributes) do
    { title: '' }
  end

  subject do
    FactoryBot.create(:user)
  end

  before(:each) do
    sign_in subject
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Status.create! valid_attributes
      get statuses_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      status = Status.create! valid_attributes
      get status_url(status)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_status_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      status = Status.create! valid_attributes
      get edit_status_url(status)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Status' do
        expect do
          post statuses_url, params: { status: valid_attributes }
        end.to change(Status, :count).by(1)
      end

      it 'redirects to the created status' do
        post statuses_url, params: { status: valid_attributes }
        expect(response).to redirect_to(status_url(Status.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Status' do
        expect do
          post statuses_url, params: { status: invalid_attributes }
        end.to change(Status, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post statuses_url, params: { status: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        { title: Faker::Lorem.word }
      end

      it 'updates the requested status' do
        status = Status.create! valid_attributes
        patch status_url(status), params: { status: new_attributes }
        status.reload
        expect(status.title).to eq(new_attributes[:title])
      end

      it 'redirects to the status' do
        status = Status.create! valid_attributes
        patch status_url(status), params: { status: new_attributes }
        status.reload
        expect(response).to redirect_to(status_url(status))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        status = Status.create! valid_attributes
        patch status_url(status), params: { status: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested status' do
      status = Status.create! valid_attributes
      expect do
        delete status_url(status)
      end.to change(Status, :count).by(-1)
    end

    it 'redirects to the statuses list' do
      status = Status.create! valid_attributes
      delete status_url(status)
      expect(response).to redirect_to(statuses_url)
    end
  end
end