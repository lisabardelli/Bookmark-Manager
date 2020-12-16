describe Bookmark do

  describe '.all' do
    it "returns a list of all saved bookmarks" do
      #Add the test data
      Bookmark.create('Makers', 'http://www.makersacademy.com')
      Bookmark.create('DAS', 'http://www.destroyallsoftware.com')
      Bookmark.create('Google', 'http://www.google.com')

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end

  describe '.create(url)' do
    it 'should add a bookmark to list of saved bookmarks' do
      Bookmark.create('BBC', 'http://www.bbc.co.uk')
      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.bbc.co.uk')
    end
  end

end
