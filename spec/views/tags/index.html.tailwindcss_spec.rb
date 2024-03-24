require 'rails_helper'

RSpec.describe 'tags/index', type: :view do
  before(:each) do
    assign(:tags, [
             Tag.create!(
               label: 'Label'
             ),
             Tag.create!(
               label: 'Label'
             )
           ])
  end

  it 'renders a list of tags' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Label'.to_s), count: 2
  end
end
