require "note_book"
require "note"

describe NoteBook do
  subject(:notebook) { NoteBook.new }


    it 'add_note' do

      note = instance_double("Note")
      notebook.add_note(note)
      expect(notebook.notes).to eq [note]
    end
  end
