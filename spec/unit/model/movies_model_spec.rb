RSpec.describe Movie, type: :model do
  subject {
    described_class.new(title: 'Test',
                        release_date: Date.parse('Mar 17 1998'),
                        synopsis: 'Test',)
  }
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a release_date' do
    subject.release_date = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a synopsis' do
    subject.synopsis = nil
    expect(subject).to_not be_valid
  end
end