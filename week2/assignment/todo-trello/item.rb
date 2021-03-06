class Item
  attr_reader :name

  def initialize(name, done = false)
    @name = name
    @done = done
  end

  def done?
    @done
  end

  def status
    done? ? 'done' : 'undone'
  end

  def display_html
    if done?
      %(<li style="color:blue">
          <input type="checkbox" checked="checked" disabled />
          #{name}
        </li>)
    else
      %(<li style="color:brown">
          <input type="checkbox" disabled />
          #{name}
        </li>)
    end
  end

  def display_line
    if done?
      '- [x] ' + name
    else
      '- [ ] ' + name
    end
  end

  def mark_done!
    @done = true
  end

  def mark_undone!
    @done = false
  end

  def self.new_from_line(line)
    new(line[6..-1], line[3] == 'x')
  end
end
