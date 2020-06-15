pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  # create a new hash
  new_hash = {}
  #iterate over each nested hash
  data.each do |color_gender_lives, values|
    #iterate over each key+value pair in hash
    values.each do |value, array|
      #iterate over each element in array
      array.each do |name|
        #create a new hash for color, gender and lives
        new_hash[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end

  x = new_hash.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name == item
          new_hash[item][:color] << bird_color.to_s
        end
      end
    end
  end
  data[:gender] do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name == item
          new_hash[item][:gender] << gender.to_s
        end
      end
    end
  end
  data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name == item
          new_hash[item][:lives] << location
        end
      end
    end
  end

  return new_hash

end
