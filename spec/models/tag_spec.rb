require 'rails_helper'

RSpec.describe Tag, type: :model do
  subject do
    FactoryBot.create(:tag)
  end

  before { subject.save }

  it 'should have label' do
    expect(subject).to be_valid
  end
end
