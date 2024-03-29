require 'rails_helper'

RSpec.describe 'notes/new', type: :view do
  before(:each) do
    assign(:note, Note.new)
  end

  it 'renders new note form' do
    render

    assert_select 'form[action=?][method=?]', notes_path, 'post' do
      assert_select 'input[name=?]', 'note[prayer_id]'

      assert_select 'input[name=?]', 'note[title]'

      assert_select 'input[name=?]', 'note[content]'
    end
  end
end
