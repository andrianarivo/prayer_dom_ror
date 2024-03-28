require 'rails_helper'

RSpec.describe 'prayers/new', type: :view do
  before(:each) do
    assign(:prayer, Prayer.new)
  end

  it 'renders new prayer form' do
    render

    assert_select 'form[action=?][method=?]', prayers_path, 'post' do
      assert_select 'input[name=?]', 'prayer[description]'

      assert_select 'input[name=?]', 'prayer[status_id]'

      assert_select 'input[name=?]', 'prayer[type_id]'

      assert_select 'input[name=?]', 'prayer[user_id]'

      assert_select 'input[name=?]', 'prayer[tag_id]'

      assert_select 'input[name=?]', 'prayer[location]'
    end
  end
end
