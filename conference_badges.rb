def badge_maker(name)
    "Hello, my name is #{name}."
  end

def batch_badge_creator(attendees)
    attendees.map{ |name| badge_maker(name)}
end


def assign_rooms(attendees)
    new_array = []
        attendees.each_with_index do |name, i|
            new_array << "Hello, #{name}! You'll be assigned to room #{i+1}!"
    end
    new_array
end

def printer(attendees)
    batch_badge_creator(attendees).each do |badge|
        puts badge
    end
    assign_rooms(attendees).each do |assignment|
        puts assignment
    end
end

