class Ride < ActiveRecord::Base
    belongs_to :user
    belongs_to :attraction


def take_ride
    user = self.user
    attraction = self.attraction  
    ride_conditions ? ride_conditions : update_ride
end

def update_ride
    user.update(
        :tickets => user.tickets - attraction.tickets,
        :nausea => user.nausea + attraction.nausea_rating,
        :happiness => user.happiness + attraction.happiness_rating
      )
      "Thanks for riding the #{attraction.name}!"
end

def ride_conditions
    if user.tickets < attraction.tickets && user.height < attraction.min_height
        "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}." 
      elsif user.tickets < attraction.tickets
        "Sorry. You do not have enough tickets to ride the #{attraction.name}."
      elsif user.height < attraction.min_height
        "Sorry. You are not tall enough to ride the #{attraction.name}."
    end
end

end

