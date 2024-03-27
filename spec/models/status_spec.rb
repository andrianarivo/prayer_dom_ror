require 'rails_helper'

RSpec.describe Status, type: :model do
  subject do
    FactoryBot.create(:status)
  end

  before { subject.save }

  it 'should have title' do
    expect(subject).to be_valid
  end
end
