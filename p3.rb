# frozen_string_literal: true

# solver class for p3
class Solve3
  def initialize
    @a_cnt = 0
    @b_cnt = 0
    @c_cnt = 0
    @res = String.new
  end

  def add_char(char_to_add)
    add_cnt = @res.end_with?(char_to_add) ? 1 : 2
    case char_to_add
    when 'a'
      add_cnt = @a_cnt if add_cnt > @a_cnt
      @res.concat(char_to_add * add_cnt)
      @a_cnt -= add_cnt
      if @b_cnt >= @c_cnt
        @res.concat('b')
        @b_cnt -= 1
      else
        @res.concat('c')
        @c_cnt -= 1
      end
    when 'b'
      add_cnt = @b_cnt if add_cnt > @b_cnt
      @res.concat(char_to_add * add_cnt)
      @b_cnt -= add_cnt
      if @a_cnt >= @c_cnt
        @res.concat('a')
        @a_cnt -= 1
      else
        @res.concat('c')
        @c_cnt -= 1
      end
    when 'c'
      add_cnt = @c_cnt if add_cnt > @c_cnt
      @res.concat(char_to_add * add_cnt)
      @c_cnt -= add_cnt
      if @a_cnt >= @b_cnt
        @res.concat('a')
        @a_cnt -= 1
      else
        @res.concat('b')
        @b_cnt -= 1
      end
    end
  end

  def addEnding(char_to_add)
    count = 0
    case char_to_add
    when 'a'
      count = @a_cnt
    when 'b'
      count = @b_cnt
    when 'c'
      count = @c_cnt
    end
    return unless count > 0

    if @res.size == 0 or !@res.end_with?(char_to_add)
      @res.concat(char_to_add * (count >= 2 ? 2 : 1))
    elsif @res.size == 1 or !@res.end_with?(char_to_add * 2)
      @res.concat(char_to_add)
    end
  end

  def solve(a_cnt, b_cnt, c_cnt)
    @res = String.new
    @a_cnt = a_cnt
    @b_cnt = b_cnt
    @c_cnt = c_cnt

    while (@a_cnt > 0 ? 1 : 0) + (@b_cnt > 0 ? 1 : 0) + (@c_cnt > 0 ? 1 : 0) > 1
      if @a_cnt >= @b_cnt and @a_cnt >= @c_cnt
        add_char('a')
      elsif @b_cnt >= @a_cnt && @b_cnt >= @c_cnt
        add_char('b')
      else
        add_char('c')
      end
    end

    addEnding('a')
    addEnding('b')
    addEnding('c')

    @res
  end
end

if __FILE__ == $PROGRAM_NAME
  s = Solve3.new
  puts s.solve(5, 6, 1)
end
