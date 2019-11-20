Plane.destroy_all
p1 = Plane.create :name => 'Boeing 747', :rows => 10, :columns => 3
p2 = Plane.create :name => 'Airbus A380', :rows => 15, :columns => 4
puts "#{ Plane.count } planes created."

User.destroy_all
u1 = User.create :name => 'Jeffrey', :email => 'jeffrey@ga.co', :admin => true
u2 = User.create :name => 'Nick', :email => 'nick@ga.co', :admin => false
u3 = User.create :name => 'Kian', :email => 'kian@ga.co', :admin => false
puts "#{ User.count } users created."

Flight.destroy_all
f1 = Flight.create :flight_no => 'JQ12', :origin => 'Sydney', :destination => 'London', :date => '2019-11-20'
f2 = Flight.create :flight_no => 'NC09', :origin => 'Hobart', :destination => 'Gold Coast', :date => '2019-11-21'
f3 = Flight.create :flight_no => 'KI23', :origin => 'Hawaii', :destination => 'Dublin', :date => '2019-11-19'
f4 = Flight.create :flight_no => 'AB45', :origin => 'Taipei', :destination => 'Montreal', :date => '2019-11-24'
f5 = Flight.create :flight_no => 'OP98', :origin => 'Sydney', :destination => 'London', :date => '2019-11-25'
f6 = Flight.create :flight_no => 'TQ33', :origin => 'London', :destination => 'Sydney', :date => '2019-11-22'
puts "#{ Flight.count } flights created."

Reservation.destroy_all
r1 = Reservation.create :row => 2, :column => 3
r2 = Reservation.create :row => 4, :column => 2
r3 = Reservation.create :row => 5, :column => 1
r4 = Reservation.create :row => 4, :column => 1
r5 = Reservation.create :row => 1, :column => 2
r6 = Reservation.create :row => 6, :column => 3

f1.reservations << r1 << r2
f2.reservations << r3 << r4
f3.reservations << r5 << r6
puts "Flights and Reservations."

p1.flights << f1 << f2 << f3
p2.flights << f4 << f5 << f6
puts "Planes and Flights."

u1.reservations << r1 << r2
u2.reservations << r3 << r4
u3.reservations << r5 << r6
puts "Users and Reservations."
