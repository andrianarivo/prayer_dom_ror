require 'rails_helper'

RSpec.describe Tag, type: :model do
  subject do
    FactoryBot.create(:tag)
  end

  before { subject.save }

  it 'should have label' do
    subject.label = ''
    expect(subject).not_to be_valid
  end

  it 'color has default value' do
    tag = Tag.new(label: Faker::Lorem.word)
    expect(tag.color).to eq('#000000')
  end

  it 'color has default value' do
    tag = Tag.new(label: Faker::Lorem.word)
    expect(tag.bg_color).to eq('#808080')
  end
end
