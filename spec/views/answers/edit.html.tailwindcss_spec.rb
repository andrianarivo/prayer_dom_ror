require 'rails_helper'

RSpec.describe 'answers/edit', type: :view do
  let(:answer) do
    FactoryBot.create(:answer)
  end

  before(:each) do
    assign(:answer, answer)
  end

  it 'renders the edit answer form' do
    render

    assert_select 'form[action=?][method=?]', answer_path(answer), 'post' do
      assert_select 'input[name=?]', 'answer[prayer_id]'

      assert_select 'input[name=?]', 'answer[content]'
    end
  end
end
