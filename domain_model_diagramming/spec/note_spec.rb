require "note"

describe Note do
  subject(:note) { Note.new }
  describe "#create_contents" do

    it 'create note with a specific string'  do
      note.create_contents("a string")
      expect(note.contents).to eq "a string"
    end

    it 'create a note with another string' do
      note.create_contents("a different string")
      expect(note.contents).to eq "a different string"
    end

  end

  describe "#create_tag" do
    it 'create a tag for a note' do
      note.create_tag("a test tag")
      expect(note.tag).to eq "a test tag"
    end
  end


end
