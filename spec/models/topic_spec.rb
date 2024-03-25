require 'rails_helper'

RSpec.describe Topic, type: :model do
  subject do
    FactoryBot.create(:topic)
  end

  before { subject.save }

  it 'should have title' do
    expect(subject).to be_valid
  end

  it 'should have description' do
    expect(subject).to be_valid
  end

  it 'should have tag' do
    expect(subject).to be_valid
  end
end
