class SecretDiary
  def initialize
   @locked = true
 end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

  def add_entry(entry)
    if @locked
      raise "Diary is locked, unlock to add entries"
    else
      @entry = entry
    end
  end

  def get_entries
    @entry
  end
end
