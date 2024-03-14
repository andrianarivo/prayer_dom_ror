require 'rails_helper'

RSpec.describe User, type: :model do
  let(:role) { Role.find_or_create_by(title: 'admin') }

  subject do
    User.new(email: 'qS6Z8@example.com', username: 'test', role: role)
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
