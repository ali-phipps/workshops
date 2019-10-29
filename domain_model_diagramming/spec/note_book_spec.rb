require "note_book"
require "note"

describe NoteBook do
  subject(:notebook) { NoteBook.new }
before do
  @note = instance_double("Note", :tag => "a tag")
  notebook.add_note(@note)
end

  describe 'add_note' do
    it 'add_note' do
      expect(notebook.notes).to eq [@note]
    end
  end

    describe 'search_notes_with_tag' do
      it 'search all notes for a specific tag, 1 note' do
        expect(notebook.search_notes_with_tag("a tag")).to eq [@note]
      end

      it 'search all notes for a tag, multiple matches' do 
    end
  end
