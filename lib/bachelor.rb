def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |this_season, contestants|
    if this_season == season
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          return contestant["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
        if contestant["occupation"] == occupation
          return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  number_from_hometown = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        number_from_hometown += 1
      end
    end
  end
  number_from_hometown
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages_summed = 0
  data.each do |this_season, contestants|
    if this_season == season
      contestants.each do |contestant|
        ages_summed += contestant["age"].to_f
      end
    end
  end
 average_age = (ages_summed.to_f / data[season].length).round

end
