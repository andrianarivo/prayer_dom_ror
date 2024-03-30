require 'rails_helper'

RSpec.describe 'answers/index', type: :view do
  before(:each) do
    assign(:answers, FactoryBot.create_list(:answer, 2))
  end

  it 'renders a list of answers' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Prayer'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Content'.to_s), count: 2
  end
end
