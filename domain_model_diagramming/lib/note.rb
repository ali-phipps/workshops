class Note
  attr_reader :contents, :tag

  def create_contents(x)
  # set a notes contents
   @contents = x
  end

  def create_tag(tag)
    @tag = tag
  end
end
