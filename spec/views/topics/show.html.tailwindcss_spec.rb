require 'rails_helper'

RSpec.describe 'topics/show', type: :view do
  before(:each) do
    assign(:topic, FactoryBot.create(:topic))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
