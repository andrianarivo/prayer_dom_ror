require 'rails_helper'

RSpec.describe 'roles/show', type: :view do
  before(:each) do
    assign(:role, FactoryBot.create(:role))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
  end
end
