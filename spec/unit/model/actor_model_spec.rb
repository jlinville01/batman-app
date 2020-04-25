RSpec.describe Actor, type: :model do
  subject {
    described_class.new(name: 'Test',
                        character: 'Test')
  }
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a character' do
    subject.character = nil
    expect(subject).to_not be_valid
  end
end