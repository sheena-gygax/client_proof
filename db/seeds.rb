# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 
Client.destroy_all

Client.create!([{
  name: "Abernathy-Smitham",
  urn: "g5-c-j5a2rvls-abernathy-smitham",
  vertical: "Apartments" 
},
{
  name: "Adams, Crona and Oberbrunner",
  urn: "g5-c-1wuswprl-adams-crona-and-oberbrunner",
  vertical: "Apartments" 
},
{
  name: "Barrows Inc",
  urn: "g5-c-j5a2rvls-abernathy-smitham",
  vertical: "Apartments" 
},
{
  name: "Becker-West",
  urn: "g5-c-j5tpe4ok-becker-west",
  vertical: "Apartments" 
},
{
  name: "Casper and Sons",
  urn: "g5-c-1wuoi7np-casper-and-sons",
  vertical: "Apartments" 
}])


p "Created #{Client.count} clients"
