class Banner
  def initialize(message, length)
    @message = message
    @length = length > @message.size ? length : @message.size + 2
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    
    "+" + "-"* @length + "+"
  end

  def empty_line
    "|" + " " * @length + "|"
  end

  def message_line
    "|#{@message.center(@length)}|"
  end
end

banner = Banner.new('To boldly go where no one has gone before.', 10)
puts banner

banner = Banner.new('', 25)
puts banner
