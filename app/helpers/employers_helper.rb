module EmployersHelper

  def industries
    [ 
      ['Agriculture', 1],
      ['Banking & Finance', 2],
      ['Health', 3],
      ['Information Technology', 4],
      ['Education', 5],
      ['Communication', 6],
      ['Construction', 7],
      ['Engineering', 8],
      ['Arts & Design', 9],
      ['Business & Marketing', 10]
    ]
  end

  def position_role
    [['Internship', 1],
     ['Full-time', 2],
     ['Part-time', 3],
     ['Remote', 4] ]
  end

  def employer_name(name)
    name.company_name
  end

  def about_employer(text)
    text.about
  end

  def selected_role(role)
    selected = role
    selected = selected.to_i

    if selected <= position_role.length && selected > 0
      position_role[selected.to_i - 1][0]
    else
      return
    end
  end

end
