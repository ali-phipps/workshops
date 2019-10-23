class SecretDiary
  def initialize
   @entries=[]
   @locked = true
   @diary_lock = DiaryLock.new
 end

 def lock
   @locked = true
 end

 def unlock
   @locked = false
 end
  def add_entry(entry)
    if @locked
      fail "Diary is locked, unlock to add entries"
    else
      p entry
      @entries.push(entry)
    end
  end

  def get_entries
    if @locked
      fail "Diary is locked, unlock to get entries"
    else
    @entries
    end
  end
end

class DiaryLock
  attr_reader :locked

  def initialize
    @locked = true
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

 end
