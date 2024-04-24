require 'rails_helper'

RSpec.describe 'notes/show', type: :view do
  before(:each) do
    assign(:note, FactoryBot.create(:note))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Note id/)
    expect(rendered).to match(/Title/)
  end
end
