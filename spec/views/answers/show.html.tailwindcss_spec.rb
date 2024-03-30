require 'rails_helper'

RSpec.describe 'answers/show', type: :view do
  before(:each) do
    assign(:answer, FactoryBot.create(:answer))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Content/)
  end
end
