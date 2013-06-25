module UsersHelper

def wisco_counties
  ["Dane"]
end

def counties(id)
  County.where(state_id: id).all.map {|s| [s.name, s.id]}
end

def wisconsin
  [     
    ['WI']
  ]
end

def us_states
  State.all.map {|s| [s.name, s.id]}
end

def us_state_names
    [
      ['Alabama', 'AL'],
      ['Alaska', 'AK'],
      ['Arizona', 'AZ'],
      ['Arkansas', 'AR'],
      ['California', 'CA'],
      ['Colorado', 'CO'],
      ['Connecticut', 'CT'],
      ['Delaware', 'DE'],
      ['District of Columbia', 'DC'],
      ['Florida', 'FL'],
      ['Georgia', 'GA'],
      ['Hawaii', 'HI'],
      ['Idaho', 'ID'],
      ['Illinois', 'IL'],
      ['Indiana', 'IN'],
      ['Iowa', 'IA'],
      ['Kansas', 'KS'],
      ['Kentucky', 'KY'],
      ['Louisiana', 'LA'],
      ['Maine', 'ME'],
      ['Maryland', 'MD'],
      ['Massachusetts', 'MA'],
      ['Michigan', 'MI'],
      ['Minnesota', 'MN'],
      ['Mississippi', 'MS'],
      ['Missouri', 'MO'],
      ['Montana', 'MT'],
      ['Nebraska', 'NE'],
      ['Nevada', 'NV'],
      ['New Hampshire', 'NH'],
      ['New Jersey', 'NJ'],
      ['New Mexico', 'NM'],
      ['New York', 'NY'],
      ['North Carolina', 'NC'],
      ['North Dakota', 'ND'],
      ['Ohio', 'OH'],
      ['Oklahoma', 'OK'],
      ['Oregon', 'OR'],
      ['Pennsylvania', 'PA'],
      ['Puerto Rico', 'PR'],
      ['Rhode Island', 'RI'],
      ['South Carolina', 'SC'],
      ['South Dakota', 'SD'],
      ['Tennessee', 'TN'],
      ['Texas', 'TX'],
      ['Utah', 'UT'],
      ['Vermont', 'VT'],
      ['Virginia', 'VA'],
      ['Washington', 'WA'],
      ['West Virginia', 'WV'],
      ['Wisconsin', 'WI'],
      ['Wyoming', 'WY']
    ]
end

# def us_states
#     [
#       ['AL'],
#       ['AK'],
#       ['AZ'],
#       ['AR'],
#       ['CA'],
#       ['CO'],
#       ['CT'],
#       ['DE'],
#       ['DC'],
#       ['FL'],
#       ['GA'],
#       ['HI'],
#       ['ID'],
#       ['IL'],
#       ['IN'],
#       ['IA'],
#       ['KS'],
#       ['KY'],
#       ['LA'],
#       ['ME'],
#       ['MD'],
#       ['MA'],
#       ['MI'],
#       ['MN'],
#       ['MS'],
#       ['MO'],
#       ['MT'],
#       ['NE'],
#       ['NV'],
#       ['NH'],
#       ['NJ'],
#       ['NM'],
#       ['NY'],
#       ['NC'],
#       ['ND'],
#       ['OH'],
#       ['OK'],
#       ['OR'],
#       ['PA'],
#       ['PR'],
#       ['RI'],
#       ['SC'],
#       ['SD'],
#       ['TN'],
#       ['TX'],
#       ['UT'],
#       ['VT'],
#       ['VA'],
#       ['WA'],
#       ['WV'],
#       ['WI'],
#       ['WY']
#     ]
#   end

  def humane_society_ips
    [
      "50.50.23.70" #Dane County HS
      #"127.0.0.1" #localhost at adam's house for testing
    ]
  end


end
