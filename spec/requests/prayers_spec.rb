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

RSpec.describe '/prayers', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Prayer. As you add validations to Prayer, be sure to
  # adjust the attributes here as well.
  let(:status) { FactoryBot.create(:status) }
  let(:type) { FactoryBot.create(:type) }
  let(:author) { FactoryBot.create(:author) }

  let(:valid_attributes) do
    { description: Faker::Lorem.sentence, status_id: status.id, type_id: type.id, user_id: author.id,
      datetime_to_pray: Faker::Date.backward(days: 30), location: Faker::Address.city,
      summary: Faker::Lorem.sentence(word_count: rand(2..8)), priority: PriorityLevels::LEVELS.sample,
      color: '#3b82f6' }
  end

  let(:invalid_attributes) do
    { description: '', status_id: nil, type_id: nil, user_id: nil,
      datetime_to_pray: nil, location: '', summary: '', priority: nil, color: '' }
  end

  before(:each) do
    sign_in author
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Prayer.create! valid_attributes
      get prayers_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      prayer = Prayer.create! valid_attributes
      get prayer_url(prayer)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_prayer_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      prayer = Prayer.create! valid_attributes
      get edit_prayer_url(prayer)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Prayer' do
        expect do
          post prayers_url, params: { prayer: valid_attributes }
          puts response.body
        end.to change(Prayer, :count).by(1)
      end

      it 'redirects to the created prayer' do
        post prayers_url, params: { prayer: valid_attributes }
        expect(response).to redirect_to(prayer_url(Prayer.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Prayer' do
        expect do
          post prayers_url, params: { prayer: invalid_attributes }
        end.to change(Prayer, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post prayers_url, params: { prayer: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        { description: Faker::Lorem.sentence, status_id: status.id, type_id: type.id, user_id: author.id,
          datetime_to_pray: Faker::Date.backward(days: 30), location: Faker::Address.city,
          summary: Faker::Lorem.sentence(word_count: rand(2..8)), priority: PriorityLevels::LEVELS.sample,
          color: '#3b82f6' }
      end

      it 'updates the requested prayer' do
        prayer = Prayer.create! valid_attributes
        patch prayer_url(prayer), params: { prayer: new_attributes }
        prayer.reload
        prayer_attributes = prayer.attributes.slice(*new_attributes.keys.map(&:to_s)).symbolize_keys
        expect(prayer_attributes).to include(new_attributes)
      end

      it 'redirects to the prayer' do
        prayer = Prayer.create! valid_attributes
        patch prayer_url(prayer), params: { prayer: new_attributes }
        prayer.reload
        expect(response).to redirect_to(prayer_url(prayer))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        prayer = Prayer.create! valid_attributes
        patch prayer_url(prayer), params: { prayer: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested prayer' do
      prayer = Prayer.create! valid_attributes
      expect do
        delete prayer_url(prayer)
      end.to change(Prayer, :count).by(-1)
    end

    it 'redirects to the prayers list' do
      prayer = Prayer.create! valid_attributes
      delete prayer_url(prayer)
      expect(response).to redirect_to(prayers_url)
    end
  end
end
