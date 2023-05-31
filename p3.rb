# frozen_string_literal: true

# solver class for p3
class Solve3
  def add_char(char_to_add)
    add_cnt = @res.end_with?(char_to_add) ? 1 : 2
    case char_to_add
    when 'a' then add_a(add_cnt)
    when 'b' then add_b(add_cnt)
    when 'c' then add_c(add_cnt)
    end
  end

  def add_a(add_cnt)
    add_cnt = @a_cnt if add_cnt > @a_cnt
    @res.concat('a' * add_cnt)
    @a_cnt -= add_cnt
    if @b_cnt >= @c_cnt
      @res.concat('b')
      @b_cnt -= 1
    else
      @res.concat('c')
      @c_cnt -= 1
    end
  end

  def add_b(add_cnt)
    add_cnt = @b_cnt if add_cnt > @b_cnt
    @res.concat('b' * add_cnt)
    @b_cnt -= add_cnt
    if @a_cnt >= @c_cnt
      @res.concat('a')
      @a_cnt -= 1
    else
      @res.concat('c')
      @c_cnt -= 1
    end
  end

  def add_c(add_cnt)
    add_cnt = @c_cnt if add_cnt > @c_cnt
    @res.concat('c' * add_cnt)
    @c_cnt -= add_cnt
    if @a_cnt >= @b_cnt
      @res.concat('a')
      @a_cnt -= 1
    else
      @res.concat('b')
      @b_cnt -= 1
    end
  end

  def add_ending(char_to_add)
    count =
      case char_to_add
      when 'a' then @a_cnt
      when 'b' then @b_cnt
      when 'c' then @c_cnt
      end
    return if count.zero?

    if can_add_two(char_to_add) then @res.concat(char_to_add * (count >= 2 ? 2 : 1))
    elsif can_add(char_to_add) then  @res.concat(char_to_add)
    end
  end

  def can_add(char_to_add)
    @res.size == 1 || !@res.end_with?(char_to_add * 2)
  end

  def can_add_two(char_to_add)
    @res.empty? || !@res.end_with?(char_to_add)
  end

  def solve(a_cnt, b_cnt, c_cnt)
    @res = String.new
    @a_cnt = a_cnt
    @b_cnt = b_cnt
    @c_cnt = c_cnt

    while (@a_cnt.nonzero? ? 1 : 0) + (@b_cnt.nonzero? ? 1 : 0) + (@c_cnt.nonzero? ? 1 : 0) > 1
      if @a_cnt >= @b_cnt && @a_cnt >= @c_cnt
        add_char('a')
      elsif @b_cnt >= @a_cnt && @b_cnt >= @c_cnt
        add_char('b')
      else
        add_char('c')
      end
    end

    add_ending('a')
    add_ending('b')
    add_ending('c')

    @res
  end
end

if __FILE__ == $PROGRAM_NAME
  s = Solve3.new
  puts s.solve(5, 6, 1)
end
