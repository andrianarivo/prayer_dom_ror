require 'rails_helper'

RSpec.describe 'tags/show', type: :view do
  before(:each) do
    assign(:tag, Tag.create!(
                   label: 'Label'
                 ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Label/)
  end
end
