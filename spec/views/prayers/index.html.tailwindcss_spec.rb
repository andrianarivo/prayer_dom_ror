require 'rails_helper'

RSpec.describe 'prayers/index', type: :view do
  let(:prayers) { FactoryBot.create_list(:prayer, 2) }

  before(:each) do
    assign(:prayers, prayers)
    render
  end

  it 'renders a list of prayers' do
    assert_select 'div#prayers' do
      prayers.each do |prayer|
        assert_select 'div.relative' do
          assert_select '.card' do
            assert_select '.card-body' do
              assert_select '.font-medium', text: prayer.summary
              assert_select '.text-gray-500', text: prayer.description
              assert_select '.card-action' do
                assert_select 'button.btn.btn-transparent>p.text-sm', text: "#{prayer.notes_count} notes"
                assert_select 'button.btn.btn-transparent>p.text-sm', text: "#{prayer.answers_count} answers"
              end
              assert_select '.flex' do
                assert_select '.text-base', text: prayer.user.username.capitalize
                assert_select '.text-lg', text: formatted_date(prayer.datetime_to_pray)
              end
            end
          end
        end
      end
    end
  end
end
