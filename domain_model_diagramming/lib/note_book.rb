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

end
