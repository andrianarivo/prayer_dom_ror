require 'rails_helper'

RSpec.describe 'tags/new', type: :view do
  before(:each) do
    assign(:tag, Tag.new)
  end

  it 'renders new tag form' do
    render

    assert_select 'form[action=?][method=?]', tags_path, 'post' do
      assert_select 'input[name=?]', 'tag[label]'
      assert_select 'input[name=?]', 'tag[color]'
      assert_select 'input[name=?]', 'tag[bg_color]'
    end
  end
end
