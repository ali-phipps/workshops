require "SecretDiary"

describe SecretDiary do
  test_diary = SecretDiary.new


  it "test that SecretDiary has a add_entry method" do
     expect(test_diary).to respond_to(:add_entry)
  end

  it "test that SecretDiary has a get_entries method" do
      expect(test_diary).to respond_to(:get_entries)
  end
  it "test that SecretDiary has a unlock method" do
      expect(test_diary).to respond_to(:unlock)
  end

  it "test adding an entry throws an exception when lock is activated" do
    expect{test_diary.add_entry("test_entry")}.to raise_exception(RuntimeError,
      "Diary is locked, unlock to add entries")
  end

  it "test getting entries  throws an exception when lock is activated" do
    expect{test_diary.get_entries}.to raise_exception(RuntimeError,
      "Diary is locked, unlock to get entries")
  end

  it "test adding 1 entry stores the entry after unlocking and returns it when asked" do
    test_diary.unlock
    test_diary.add_entry("test_entry")
    expect(test_diary.get_entries).to eq (["test_entry"])
  end

  it "test locking the diary again stops entries from being added" do
    test_diary.unlock
    test_diary.add_entry("test_entry")
    test_diary.lock
    expect{test_diary.add_entry("test_entry")}.to raise_exception(RuntimeError,
      "Diary is locked, unlock to add entries")
  end

end

describe DiaryLock do
  test_lock = DiaryLock.new
  it "test that DiaryLock has a lock method" do
    expect(test_lock).to respond_to(:lock)
  end

  it "test that DiaryLock has an unlock method" do
    expect(test_lock).to respond_to(:unlock)
  end

  it "test lock is locked when after instance created" do
    expect(test_lock.locked).to eq (true)
  end

  it "test lock is unlocked after setting unlocked" do
    test_lock.unlock
    expect(test_lock.locked).to eq (false)
  end
end
