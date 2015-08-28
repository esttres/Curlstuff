# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do

  (1..3).each do |range|

    Gnote.create(title: Faker::Lorem.sentence, body: Faker::Lorem.sentence(3, true, 4), tag_id: range)

  end


end

%w(Terrible Horrible Waste_of_Time).each do |tag|

  Tag.create(name: tag)

end
