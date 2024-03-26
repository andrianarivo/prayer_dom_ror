require 'rails_helper'

RSpec.describe 'types/show', type: :view do
  before(:each) do
    assign(:type, FactoryBot.create(:type))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
