require 'rails_helper'

RSpec.describe 'notes/index', type: :view do
  before(:each) do
    assign(:notes, FactoryBot.create_list(:note, 2))
  end

  it 'renders a list of notes' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Prayer'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Title'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Content'.to_s), count: 2
  end
end
