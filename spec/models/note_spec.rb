require 'rails_helper'

RSpec.describe Note, type: :model do
  let(:prayer) { FactoryBot.create(:prayer) }

  subject do
    FactoryBot.create(:note, prayer:)
  end

  before { subject.save }

  it 'should have content' do
    subject.content = ''
    expect(subject).to_not be_valid
  end

  it 'should have prayer' do
    subject.prayer = nil
    expect(subject).to_not be_valid
  end

  it 'should have title' do
    subject.title = ''
    expect(subject).to_not be_valid
  end

  it 'should update the prayer\'s notes_count' do
    FactoryBot.create(:note, prayer:)
    expect(prayer.notes_count).to eq(2)
  end
end
