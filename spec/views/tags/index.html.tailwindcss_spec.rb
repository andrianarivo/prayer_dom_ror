require 'rails_helper'

RSpec.describe 'tags/index', type: :view do
  let(:tags) { FactoryBot.create_list(:tag, 2) }

  before(:each) do
    assign(:tags, tags)
    render
  end

  it 'renders a list of tags' do
    assert_select 'div#tags' do
      tags.each do |tag|
        assert_select 'span', text: tag.label.capitalize
      end
    end
  end
end
