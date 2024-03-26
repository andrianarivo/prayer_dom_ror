require 'rails_helper'

RSpec.describe 'types/new', type: :view do
  before(:each) do
    assign(:type, Type.new)
  end

  it 'renders new type form' do
    render

    assert_select 'form[action=?][method=?]', types_path, 'post' do
      assert_select 'input[name=?]', 'type[label]'

      assert_select 'input[name=?]', 'type[subject]'

      assert_select 'input[name=?]', 'type[description]'

      assert_select 'input[name=?]', 'type[topic_id]'

      assert_select 'input[name=?]', 'type[tag_id]'

      assert_select 'input[name=?]', 'type[prayer_duration]'
    end
  end
end
