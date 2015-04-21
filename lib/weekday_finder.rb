class Daychecker
  define_method(:get_day) do |target_date|
    target_date_array = target_date.split("/") # ["7", "11", "2014"]
    target_month      = target_date_array[0].to_i
    target_day        = target_date_array[1].to_i
    target_year       = target_date_array[2].to_i

    # error checking
    if target_month.<(1) || target_month.>(12)
      return "Invalid date"
    elsif target_day.<(1) || target_day.>(31)
      return "Invalid date"
    elsif target_year.<(1900)
      return "Invalid date"
    end

    target_date = Time.new(target_year, target_month, target_day)

    if target_date.monday?
      "Monday"
    elsif target_date.tuesday?
      "Tuesday"
    elsif target_date.wednesday?
      "Wednesday"
    elsif target_date.thursday?
      "Thursday"
    elsif target_date.friday?
      "Friday"
    elsif target_date.saturday?
      "Saturday"
    elsif target_date.sunday?
      "Sunday"
    end
  end
end
