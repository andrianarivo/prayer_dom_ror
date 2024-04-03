require 'rails_helper'

RSpec.describe 'prayers/show', type: :view do
  before(:each) do
    assign(:prayer, FactoryBot.create(:prayer))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Tag/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Summary/)
    expect(rendered).to match(/Priority/)
  end
end
