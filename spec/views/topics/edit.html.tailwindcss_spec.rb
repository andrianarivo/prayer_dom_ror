require 'rails_helper'

RSpec.describe 'topics/edit', type: :view do
  let(:topic) do
    FactoryBot.create(:topic)
  end

  before(:each) do
    assign(:topic, topic)
  end

  it 'renders the edit topic form' do
    render

    assert_select 'form[action=?][method=?]', topic_path(topic), 'post' do
      assert_select 'input[name=?]', 'topic[title]'

      assert_select 'input[name=?]', 'topic[description]'

      assert_select 'input[name=?]', 'topic[tag_id]'
    end
  end
end
