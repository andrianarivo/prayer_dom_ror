require 'rails_helper'

RSpec.describe Prayer, type: :model do
  subject do
    FactoryBot.create(:prayer)
  end

  before { subject.save }

  it 'should have description' do
    subject.description = ''
    expect(subject).to_not be_valid
  end

  it 'should have status' do
    subject.status = nil
    expect(subject).to_not be_valid
  end

  it 'should have type' do
    subject.type = nil
    expect(subject).to_not be_valid
  end

  it 'should have user' do
    subject.user = nil
    expect(subject).to_not be_valid
  end

  it 'datetime_to_pray has default value' do
    expect(subject.datetime_to_pray).to_not be_nil
    expect(subject).to be_valid
  end

  it 'location has default value' do
    expect(subject.location).to_not be_nil
    expect(subject).to be_valid
  end

  it 'notes_count is greater than or equal to 0' do
    expect(subject.notes_count).to be >= 0
  end

  it 'answers_count is greater than or equal to 0' do
    expect(subject.answers_count).to be >= 0
  end

  it 'should update the prayer\'s notes_count' do
    FactoryBot.create(:note, prayer: subject)
    expect(subject.notes_count).to eq(1)
  end

  it 'should update the prayer\'s answers_count' do
    FactoryBot.create(:answer, prayer: subject)
    expect(subject.answers_count).to eq(1)
  end
end
