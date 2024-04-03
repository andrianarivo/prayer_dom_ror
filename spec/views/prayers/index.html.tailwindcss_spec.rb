require 'rails_helper'

RSpec.describe 'prayers/index', type: :view do
  before(:each) do
    assign(:prayers, FactoryBot.create_list(:prayer, 2))
  end

  it 'renders a list of prayers' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Description'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Status'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Type'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('User'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Tag'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Location'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Summary'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Priority'.to_s), count: 2
  end
end
