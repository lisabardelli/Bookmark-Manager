describe Bookmark do

  describe '#all' do
    let(:bookmarks) { ['http://www.makersacademy.com', 'http://www.destroyallsoftware.com', 'http://www.google.com'] }
    it "returns a list of all saved bookmarks" do
      expect(described_class.all).to eq bookmarks
    end
  end

end
