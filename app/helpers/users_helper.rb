module UsersHelper
  def universities
    [
        ['University of Ghana', 1],
        ['Kwame Nkrumah University of Science and Technology (KNUST)', 2],
        ['Valley View University', 3],
        ['Ashesi University', 4],
        ['University of Cape Coast', 5],
        ['University of Education, Winneba', 6],
        ['University of Development Studies', 7],
        ['University of Professional Studies', 8],
        ['University of Mines and Technology', 9],
        ['University of Health and Allied Sciences', 10],
        ['University of Energy and Natural Resources', 11],
        ['Accra Technical University', 12],
        ['Cape Coast Technical University', 13],
        ['Kumasi Technical University', 14],
        ['Koforidua Technical University', 15],
        ['Tamale Technical University', 16],
        ['Ho Technical University', 17],
        ['Takoradi Technical University', 18],
        ['Sunyani Technical University', 19],
        ['Ghana Armed Forces Command and Staff College', 20],
        ['Ghana Institute of Journalism', 21],
        ['Ghana Institute of Languages', 22],
        ['Ghana Institute of Management and Public Administration', 23],
        ['Ghana Institute of Surveying and Mapping', 24],
        ['Institution of Local Government Studies', 25],
        ['University of Professional Studies, Accra', 26],
        ['Kofi Annan International Peacekeeping Training Centre', 27],
        ['National Film and Television Institute', 28],
        ['Regional Maritime University', 29],
        ['Akrofi-Christaller Institute of Theology, Mission and Culture', 30],
        ['Accra Institute of Technology', 31],
        ['African University College of Communications', 32],
        ['Anglican University College of Technology', 33],
        ['Catholic University College of Ghana', 34],
        ['Family Health Medical School', 35],
        ['Good News Theological Seminary', 36],
        ['Islamic University College', 37],
        ['Knutsford University College', 38],
        ['Lancaster University', 39],
        ['Methodist University College Ghana', 40],
        ['Pentecost University College', 41],
        ['Presbyterian University College', 42],
        ['Wisconsin International University College', 43],
        ['Central University College', 44],
        ['Catholic Institute of Business and Technology', 45],
        ['National Film and Television Institute', 46],
        ['Institute Of Accountancy Training', 47],
        ['Narh-Bita School Of Nursing', 48],
        ['Ghana Institute of Languages', 49],
        ['Blue Crest College', 50],
        ['KAAF University College', 51],
        ['Osei Tutu II Institute for Advanced ICT Studies', 52],
        ['All Nations University College', 53],
        ['Radford University College', 54],
        ['Garden City University College', 55],
        ['Regent University College of Science and Technology', 56],
        ['Technical University College', 57],
        ['Spiritan University College', 58],
        ['Data Link University College', 59],
        ['Mountcrest University College', 60],
        ['University College of Agriculture and Environmental Studies', 61],
        ['Wisconsin International University College', 62],
        ['Kings University College', 63],
        ['Ghana Baptist University College', 64],
        ['Deltas University College	', 65],
        ['Webster University Ghana Campus', 66],
        ['Sikkim Manipal University', 67],
        ['Ghana Christian University College', 68],
        ['Christian Service University College', 69],
        ['Zenith University College', 70]
    ]
  end

  def levels
    [
        ['100L', 1],
        ['200L', 2],
        ['300L', 3],
        ['400L', 4]
    ]
  end

  def regions
    [
        ['Ashanti', 1],
        ['Brong-Ahafo', 2],
        ['Greater Accra ', 3],
        ['Central', 4],
        ['Eastern', 5],
        ['Northern', 6],
        ['Western', 7],
        ['Upper East', 8],
        ['Upper West', 9],
        ['Volta', 10]
    ]
  end

  def name(user)
    user.name unless user.blank?
  end

  def user_city(user)
    selected = user.city
    selected = selected.to_i

    if selected <= regions.length && selected > 0
      "#{regions[selected.to_i - 1][0]}, Ghana."
    else
      return
    end
  end

  def level(user)
    selected = user.level
    selected = selected.to_i

    if selected <= levels.length && selected > 0
      levels[selected.to_i - 1][0]
    else
      return
    end
  end

  def bio(user)
    user.bio unless user.blank?
  end

  def skill(user)
    user.skill unless user.blank?
  end

  def objective(user)
    user.objective unless user.blank?
  end

  def university(user)
    selected = user.university
    selected = selected.to_i

    if selected <= universities.length && selected > 0
      universities[selected.to_i - 1][0]
    else
      return
    end
  end

  def major(user)
    user.major unless user.blank?
  end

  def website_url(user)
    user.website unless user.blank?
  end

  def linkedin_url(user)
    name = user.linkedin
    if name =~ %r{\Ahttps?:\/\/(www\.)?linkedin\.com\/in\/}
      name
    else
      "https://www.linkedin.com/in/#{name}"
    end
  end
  
  def twitter_url(user)
    name = user.twitter
    if name =~ %r{\Ahttps?:\/\/(www\.)?twitter\.com\/}
      name
    else
      "https://www.twitter.com/#{name}" 
    end
  end
end
