require 'rails_helper'

RSpec.describe 'prayers/show', type: :view do
  let(:prayer) { FactoryBot.create(:prayer) }

  before(:each) do
    assign(:prayer, prayer)
    render
  end

  it 'renders the prayer details' do
    expect(rendered).to have_selector("div#prayer_#{prayer.id}.m-6")

    # Check for tags
    prayer.tags.each do |tag|
      expect(rendered).to have_selector("span[style='background-color: #{tag.bg_color}; color: #{tag.color}']",
                                        text: tag.label.capitalize)
    end

    # Check for prayer summary and description
    expect(rendered).to have_selector('div', text: prayer.summary)
    expect(rendered).to have_selector('p', text: prayer.description)

    # Check for notes count and answers count
    expect(rendered).to have_selector('p', text: "#{prayer.notes_count} notes")
    expect(rendered).to have_selector('p', text: "#{prayer.answers_count} answers")

    # Check for user details
    expect(rendered).to have_selector('div#avatar', text: prayer.user.username[0].upcase)
    expect(rendered).to have_selector('p', text: prayer.user.username.capitalize)

    # Check for formatted date
    expect(rendered).to have_selector('p', text: formatted_date(prayer.datetime_to_pray))
  end
end
