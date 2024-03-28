require 'rails_helper'

RSpec.describe 'types/index', type: :view do
  before(:each) do
    assign(:types, FactoryBot.create_list(:type, 2))
  end

  it 'renders a list of types' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Label'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Subject'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Description'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Topic'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Tag'.to_s), count: 2
  end
end
