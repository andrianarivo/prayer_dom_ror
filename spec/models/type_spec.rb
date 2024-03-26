require 'rails_helper'

RSpec.describe Type, type: :model do
  subject do
    FactoryBot.create(:type)
  end

  before { subject.save }

  it 'should have label' do
    expect(subject).to be_valid
  end

  it 'should have description' do
    expect(subject).to be_valid
  end

  it 'should have subject' do
    expect(subject).to be_valid
  end

  it 'should have positive integer prayer_duration' do
    expect(subject).to be_valid
  end

  it 'should have topic' do
    expect(subject).to be_valid
  end

  it 'tag is optional' do
    expect(subject).to be_valid
  end
end
