require 'rails_helper'

RSpec.describe Prayer, type: :model do
  subject do
    FactoryBot.create(:prayer)
  end

  before { subject.save }

  it 'should have description' do
    expect(subject).to be_valid
  end

  it 'should have status' do
    expect(subject).to be_valid
  end

  it 'should have type' do
    expect(subject).to be_valid
  end

  it 'should have user' do
    expect(subject).to be_valid
  end

  it 'datetime_to_pray has default value' do
    expect(subject).to be_valid
  end

  it 'location has default value' do
    expect(subject).to be_valid
  end
end
