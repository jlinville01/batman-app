RSpec.describe Character, type: :model do
  subject {
    described_class.new(alter_ego: 'Test',
                        real_name: 'Test',
                        debut: 'Test',
                        status: 'Hero',
                        bio: 'Test')
  }
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without a alter_ego' do
    subject.alter_ego = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a real_name' do
    subject.real_name = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a debut' do
    subject.debut = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a status' do
    subject.status = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a bio' do
    subject.bio = nil
    expect(subject).to_not be_valid
  end
end