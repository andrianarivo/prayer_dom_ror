require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:prayer) { FactoryBot.create(:prayer) }

  subject do
    FactoryBot.create(:answer, prayer:)
  end

  before { subject.save }

  it 'should have prayer' do
    subject.prayer = nil
    expect(subject).to_not be_valid
  end

  it 'should have content' do
    subject.content = ''
    expect(subject).to_not be_valid
  end

  it 'should update the prayer\'s answers_count' do
    FactoryBot.create(:answer, prayer:)
    expect(prayer.answers_count).to eq(2)
  end
end
