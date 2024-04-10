module ApplicationHelper
  def formatted_date(date)
    current_year = Date.today.year

    formatted_date = date.strftime('%d %b')
    formatted_date += " #{date.year}" if date.year != current_year

    formatted_date
  end

  def darken_color(hex_color, amount)
    # Darken the color by reducing each RGB component
    r = hex_color[0..1].to_i(16) * (1 - amount)
    g = hex_color[2..3].to_i(16) * (1 - amount)
    b = hex_color[4..5].to_i(16) * (1 - amount)

    # Convert RGB components back to hex and return the result
    format('#%<red>02x%<green>02x%<blue>02x', red: r, green: g, blue: b)
  end

  def avatar_text(name)
    name[0].upcase
  end
end
