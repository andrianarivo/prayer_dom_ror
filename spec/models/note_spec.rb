require 'rails_helper'

RSpec.describe Note, type: :model do
  subject do
    FactoryBot.create(:note)
  end

  before { subject.save }

  it 'should have content' do
    expect(subject).to be_valid
  end

  it 'should have prayer' do
    expect(subject).to be_valid
  end

  it 'should have title' do
    expect(subject).to be_valid
  end
end
