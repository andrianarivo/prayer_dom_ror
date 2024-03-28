require 'rails_helper'

RSpec.describe 'prayers/edit', type: :view do
  let(:prayer) do
    FactoryBot.create(:prayer)
  end

  before(:each) do
    assign(:prayer, prayer)
  end

  it 'renders the edit prayer form' do
    render

    assert_select 'form[action=?][method=?]', prayer_path(prayer), 'post' do
      assert_select 'input[name=?]', 'prayer[description]'

      assert_select 'input[name=?]', 'prayer[status_id]'

      assert_select 'input[name=?]', 'prayer[type_id]'

      assert_select 'input[name=?]', 'prayer[user_id]'

      assert_select 'input[name=?]', 'prayer[tag_id]'

      assert_select 'input[name=?]', 'prayer[location]'
    end
  end
end
