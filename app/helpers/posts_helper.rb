module PostsHelper

  def is_date_valid?(date)
    todays_date = Date.today
    if todays_date > date
      true
    else
      false
    end
  end
end
