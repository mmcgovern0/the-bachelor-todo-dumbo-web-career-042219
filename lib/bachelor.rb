def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      return contestants["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestants_hash|
      if contestants_hash["occupation"] == occupation
       return contestants_hash["name"]
     end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |contestants_hash|
      if contestants_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestants_hash|
      if contestants_hash["hometown"] == hometown
        return contestants_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  num_of_contestants = 0
  data[season].each do |contestants|
    age_total += (contestants["age"]).to_i
    
end
