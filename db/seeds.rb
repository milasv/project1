# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating regions"

Region.destroy_all
r1 = Region.create(:name => 'Mudgee', :state => 'NSW', :history => 'xxxxx', :image => 'https://www.visitnsw.com/sites/visitnsw/files/styles/gallery_full_width/public/2017-06/150100.jpg?itok=Ypkcatu5')
r2 = Region.create(:name => 'Barossa Valley', :state => 'SA', :history => 'xxxxx', :image => 'https://www.rydges.com/accommodation/adelaide-sa/adelaide-cbd/wp-content/uploads/sites/23/2016/09/barossa-roadtrips.jpg')



puts "Creating wineries"

Winery.destroy_all
w1 = Winery.create(:name => 'Lowe Wines', :year => '1825-01-01', :founder => 'Robert Lowe', :history => 'xxxxx', :image => 'https://d2el55nln86dcs.cloudfront.net/wine-walk-and-cycle-trail-lowe-vineyard/TrailMapWeb.jpg', :region_id => r1.id)
w2 = Winery.create(:name => 'Yalumba', :year => '1849-01-01', :founder => 'Samuel Smith', :history => 'xxxxx', :image => 'https://i.pinimg.com/originals/3c/d4/65/3cd465af47ecb06ffef8cd74d4b22d7b.jpg', :region_id => r2.id)



puts "Creating varieties"

Variety.destroy_all
v1 = Variety.create(:name => 'Zinfandel', :color => 'Red', :origin => 'Croatia', :food => 'Pork ribs, lamb, pasta', :history => 'xxxxx', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Zinfandel_grapes.jpg/220px-Zinfandel_grapes.jpg')
v2 = Variety.create(:name => 'Shiraz', :color => 'Red', :origin => 'Southeast France', :food => 'Roast beef, lamb, kangaroo, strong hard cheeses', :history => 'xxxxx', :image => 'https://winedharma.com/sites/winedharma.com/files/imagecache/auto-768/Syrah%2C%20bunches%20of%20Shiraz%2C%20French%20vines%2C%20guide%20to%20the%20best%20red%20wines%20in%20the%20world.jpg')


r1.varieties << v1 << v2
v1.wineries << w1
