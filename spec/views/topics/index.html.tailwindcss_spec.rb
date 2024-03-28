require 'rails_helper'

RSpec.describe 'topics/index', type: :view do
  before(:each) do
    assign(:topics, FactoryBot.create_list(:topic, 2))
  end

  it 'renders a list of topics' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Title'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Description'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Tag'.to_s), count: 2
  end
end
