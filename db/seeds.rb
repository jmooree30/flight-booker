Airport.delete_all
Flight.delete_all

#Airport seeds
airports = [
  ["Boston Logan International Airport", "BOS"],
  ["Gulfport", "GPT"],
  ["Jackson", "JAN"],
  ["Charleston", "CRW"]
]

airports.each do |full_name, name|
  Airport.create!( full_name: full_name, name: name )
end

#Flight seeds  
a = Airport.all[0..3]
b = Airport.all[0..3].reverse
c = Time.zone.now + 48.hours
d = c + 7.hours
e = "Seven hours"

a.each_with_index do |a, index|
  a.departing_flights.create!(
    arrival_airport_id: b[index].id,
    depature_date: c,
    arrival_date: d,
    duration: e
    )
end
