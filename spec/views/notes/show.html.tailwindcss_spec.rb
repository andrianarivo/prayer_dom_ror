require 'rails_helper'

RSpec.describe 'notes/show', type: :view do
  let(:note) { FactoryBot.create(:note) }

  before(:each) do
    assign(:note, note)
    render
  end

  it 'renders the note' do
    expect(rendered).to have_selector("div#note_#{note.id}")

    # Check for note title and content
    expect(rendered).to have_selector('h3', text: note.title)
    expect(rendered).to have_selector('p', text: note.content)

    # Check for prayer time
    expect(rendered).to have_selector("time[data-controller='timeago'][datetime='#{note.created_at}']")
  end
end
