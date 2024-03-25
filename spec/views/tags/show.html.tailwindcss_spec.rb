require 'rails_helper'

RSpec.describe 'tags/show', type: :view do
  let(:tag) { FactoryBot.create(:tag) }

  before(:each) do
    assign(:tag, tag)
  end

  it 'renders attributes in <p>' do
    render

    expect(rendered).to match(tag.label)
  end
end
