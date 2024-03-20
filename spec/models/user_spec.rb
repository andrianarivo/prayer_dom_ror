require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    FactoryBot.create(:user)
  end

  before { subject.save }

  it 'should have email' do
    expect(subject).to be_valid
  end

  it 'should have username' do
    expect(subject).to be_valid
  end

  it 'should have role' do
    expect(subject).to be_valid
  end
end
