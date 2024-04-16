require 'rails_helper'

RSpec.describe 'tags/index', type: :view do
  before(:each) do
    assign(:tags, FactoryBot.create_list(:tag, 2))
  end

  it 'renders a list of tags' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Label'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Text Color'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Background Color'.to_s), count: 2
  end
end
