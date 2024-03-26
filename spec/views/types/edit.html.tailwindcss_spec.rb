require 'rails_helper'

RSpec.describe 'types/edit', type: :view do
  let(:type) do
    FactoryBot.create(:type)
  end

  before(:each) do
    assign(:type, type)
  end

  it 'renders the edit type form' do
    render

    assert_select 'form[action=?][method=?]', type_path(type), 'post' do
      assert_select 'input[name=?]', 'type[label]'

      assert_select 'input[name=?]', 'type[subject]'

      assert_select 'input[name=?]', 'type[description]'

      assert_select 'input[name=?]', 'type[topic_id]'

      assert_select 'input[name=?]', 'type[tag_id]'

      assert_select 'input[name=?]', 'type[prayer_duration]'
    end
  end
end
