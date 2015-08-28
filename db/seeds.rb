# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do

  gnote = Gnote.create(title: FFaker::Lorem.sentence, body: FFaker::Lorem.sentence)

  3.times do

    tag = Tag.create(name: FFaker::Lorem.word)
    gnote.tags << tag

  end

end
