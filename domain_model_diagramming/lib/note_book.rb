require "note"

class NoteBook
    attr_reader :notes

    def initialize
      @notes = []
    end

  def add_note(note)
    @notes << note
    # a method to add a note to a notebook, calls note class
  end

  def search_notes_with_tag(tag)
    @notes
  end

end
