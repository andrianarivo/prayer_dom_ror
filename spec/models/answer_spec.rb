require 'rails_helper'

RSpec.describe Answer, type: :model do
  subject do
    FactoryBot.create(:answer)
  end

  before { subject.save }

  it 'should have prayer' do
    expect(subject).to be_valid
  end

  it 'should have content' do
    expect(subject).to be_valid
  end
end
