RSpec.describe View, type: :model do
  describe 'Factory' do
    it 'is expected to have valid basic Factory' do
      expect(create(:view)).to be_valid
    end
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'Associations' do
    it { is_expected.to have_many(:sections) }
  end

  describe 'Database' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
  end
end