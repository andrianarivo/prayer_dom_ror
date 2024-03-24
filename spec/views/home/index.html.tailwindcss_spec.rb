require 'rails_helper'

RSpec.describe 'home/index.html.erb', type: :view do
  subject do
    FactoryBot.create(:user)
  end

  before(:each) do
    sign_in subject
  end

  it 'renders the page' do
    render
    expect(rendered).to match(/Hello world!/)
  end
end
