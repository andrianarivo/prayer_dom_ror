require 'rails_helper'

RSpec.describe 'prayers/show', type: :view do
  before(:each) do
    assign(:prayer, FactoryBot.create(:prayer))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Location/)
  end
end
