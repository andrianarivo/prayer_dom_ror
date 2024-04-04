require 'rails_helper'

RSpec.describe 'roles/index', type: :view do
  before(:each) do
    assign(:roles, FactoryBot.create_list(:role, 2))
  end

  it 'renders a list of roles' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Title'.to_s), count: 2
  end
end
