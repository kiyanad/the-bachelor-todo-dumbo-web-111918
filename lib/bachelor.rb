require 'pry'
def get_first_name_of_season_winner(data, season)
data[season].each do |contestant|
  if contestant["status"] = "Winner"
    return contestant["name"].split(" ")[0]
end
end



    end




def get_contestant_name(data, occupation)
data.each do |season, contestant|
  contestant.each do |a|
    a.each do |job|
# binding.pry
  if a["occupation"] == occupation
    return a["name"]
end
end
end
end
end


def count_contestants_by_hometown(data, hometown)
  person = []
 data.each do |season, contestants|
   contestants.each do |contestant|
     if contestant["hometown"] == hometown
       person << season
     end
   end
 end
 person.length
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant['occupation']
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  contestants = 0
   data[season].each do |contestant|
     age += (contestant["age"]).to_i
     contestants += 1
   end
   (age / contestants.to_f).round(0)
 end
