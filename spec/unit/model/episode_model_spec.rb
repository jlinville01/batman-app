RSpec.describe Episode, type: :model do
  subject {
    described_class.new(number: 'Test',
                        season: 'Test',
                        title: 'Test',
                        synopsis: 'Hero')
  }
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without a number' do
    subject.number = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a season' do
    subject.season = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a synopsis' do
    subject.synopsis = nil
    expect(subject).to_not be_valid
  end
end