require 'rails_helper'

RSpec.describe 'tags/edit', type: :view do
  let(:tag) do
    FactoryBot.create(:tag)
  end

  before(:each) do
    assign(:tag, tag)
  end

  it 'renders the edit tag form' do
    render

    assert_select 'form[action=?][method=?]', tag_path(tag), 'post' do
      assert_select 'input[name=?]', 'tag[label]'
      assert_select 'input[name=?]', 'tag[color]'
      assert_select 'input[name=?]', 'tag[bg_color]'
    end
  end
end
