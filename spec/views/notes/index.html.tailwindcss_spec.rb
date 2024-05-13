require 'rails_helper'

RSpec.describe 'notes/index', type: :view do
  let(:notes) { FactoryBot.create_list(:note, 2) }

  before(:each) do
    assign(:notes, notes)
    render
  end

  it 'renders a list of notes' do
    assert_select 'div#notes' do
      notes.each do |note|
        assert_select 'div.chat' do
          assert_select '.chat-image>.avatar'
          assert_select '.chat-bubble' do
            assert_select 'h3', text: note.title
            assert_select 'p', text: note.content
          end
          assert_select '.chat-footer' do
            assert_select "time[data-controller='timeago'][datetime='#{note.created_at}']"
          end
        end
      end
    end
  end
end
