require 'rails_helper'

RSpec.describe 'statuses/index', type: :view do
  before(:each) do
    assign(:statuses, FactoryBot.create_list(:status, 2))
  end

  it 'renders a list of statuses' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Title'.to_s), count: 2
  end
end
