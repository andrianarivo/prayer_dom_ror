require 'rails_helper'

RSpec.describe 'statuses/show', type: :view do
  before(:each) do
    assign(:status, FactoryBot.create(:status))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
  end
end
