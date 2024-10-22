require 'rails_helper'

RSpec.describe 'answers/new', type: :view do
  before(:each) do
    assign(:answer, Answer.new)
  end

  it 'renders new answer form' do
    render

    assert_select 'form[action=?][method=?]', answers_path, 'post' do
      assert_select 'input[name=?]', 'answer[prayer_id]'

      assert_select 'input[name=?]', 'answer[content]'
    end
  end
end
