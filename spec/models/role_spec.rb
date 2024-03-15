require 'rails_helper'

RSpec.describe Role, type: :model do
  subject do
    Role.new(title: 'admin')
  end

  before do
    subject.save
  end

  it 'should have a title' do
    expect(subject).to be_valid
  end
end
