module ApplicationHelper
  def formatted_date(date)
    current_year = Date.today.year

    formatted_date = date.strftime('%d %b')
    formatted_date += " #{date.year}" if date.year != current_year

    formatted_date
  end

  def avatar_text(name)
    name[0].upcase
  end

  def get_or_default(size, default)
    size || default
  end
end
