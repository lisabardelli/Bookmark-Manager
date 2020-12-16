require 'bookmark'

describe Bookmark do
  describe '.all' do
    let(:bookmarks) { ["http://www.makersacademy.com", "http://www.twitter.com", "http://destroyallsoftware.com"] }
    it 'returns all booksmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      bookmarks = Bookmark.all
      expect(described_class.all). to eq bookmarks

    end

    describe "#create" do
      it "adds a bookmark" do
        connection = PG.connect(dbname: 'bookmark_manager_test')
        described_class.create(url: "www.bbc.com", title: "THE BBC")
        expect(described_class.all).to include("THE BBC")
      end
    end
  end
end
