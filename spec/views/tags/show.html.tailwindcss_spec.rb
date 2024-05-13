require 'rails_helper'

RSpec.describe 'tags/show', type: :view do
  let(:tag) { FactoryBot.create(:tag) }

  before(:each) do
    assign(:tag, tag)
    render
  end

  it 'renders the tag' do
    expect(rendered).to have_selector('span', text: tag.label.capitalize)
  end
end
