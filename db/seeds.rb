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
r2 = Region.create(:name => 'Hunter Valley', :state => 'NSW', :history => 'xxxxx', :image => 'https://d38b8me95wjkbc.cloudfront.net/uploads/blog/cover_image/172/2033251.jpg')
r3 = Region.create(:name => 'Barossa Valley', :state => 'SA', :history => 'xxxxx', :image => 'https://www.rydges.com/accommodation/adelaide-sa/adelaide-cbd/wp-content/uploads/sites/23/2016/09/barossa-roadtrips.jpg')
r4 = Region.create(:name => 'McLaren Vale', :state => 'SA', :history => 'xxxxx', :image => 'http://www.winedinerecline.com.au/wp-content/uploads/2013/02/McLaren-Vale.jpg')
r5 = Region.create(:name => 'Coonawarra', :state => 'SA', :history => 'xxxxx', :image => 'http://southaustralia.traveller.com.au/wp-content/uploads/2016/03/23416.jpg')
r6 = Region.create(:name => 'Clare Valley', :state => 'SA', :history => 'xxxxx', :image => 'https://s3-ap-southeast-2.amazonaws.com/staging.informa.com.au/wp-content/uploads/2014/08/17035836/clare-valley.jpg')
r7 = Region.create(:name => 'King Valley', :state => 'VIC', :history => 'xxxxx', :image => 'https://www.weekendnotes.com/im/009/07/king-valley-mt-bellevue1.jpg')
r8 = Region.create(:name => 'Yarra Valley', :state => 'VIC', :history => 'xxxxx', :image => 'https://rickliston.com/wp-content/uploads/2018/02/Stones-of-the-Yarra-Valley-Wedding-Venue-0010.jpg')
r9 = Region.create(:name => 'Swan Valley', :state => 'WA', :history => 'xxxxx', :image => 'https://x5inavsqz73c9bd317ybzhhz-wpengine.netdna-ssl.com/wp-content/uploads/2018/08/SwanValley-mistyvineyard-cr-1080x675.jpg')
r10 = Region.create(:name => 'Margaret River', :state => 'WA', :history => 'xxxxx', :image => 'https://www.winetraveler.com/wp-content/uploads/2017/07/margaret-river-australia-wine-country-tips.jpg')




puts "Creating wineries"

Winery.destroy_all
w1 = Winery.create(:name => 'Lowe Wines', :year => '1825-01-01', :founder => 'Robert Lowe', :history => 'xxxxx', :image => 'https://media.timeout.com/images/104683661/image.jpg', :region_id => r1.id)

w2 = Winery.create(:name => 'Robert Stein', :year => '1976-01-01', :founder => 'Robert “Bob” Stein', :history => 'The Stein Family has a long history of Viticulture in Australia, dating back to 1838 when Johann Stein arrived from Germany bringing with him the first cuttings of Rhine Riesling to survive in Australia. Over a century later, the tradition was revived when in 1976 Robert “Bob” Stein purchased 75 acres of prime wine-growing country on the current site on Pipeclay Lane in Mudgee NSW. From the first plantings of Shiraz the vineyard has grown to 10ha in size with plantings of Chardonnay, Riesling, Semillon, Gewürztraminer, Cabernet Sauvignon, Merlot and Muscat Today the Winery is in the capable hands of second generation Drew Stein, and his son Jacob. This is a true family business with the grapes being grown, wine made and bottled on site. Jacob returned to Mudgee in 2009 after seven vintages away from home, including Germany and Italy, gaining experience essential to winemaking and viticulture.', :image => 'https://media.timeout.com/images/104682751/image.jpg', :region_id => r1.id)

w3 = Winery.create(:name => 'Pieter van Gent Winery', :year => '1979-01-01', :founder => 'Pieter van Gent', :history => 'The founder, Pieter van Gent, had determination and passion. He made the first Chardonnay wine in Australia in 1971 at Craigmoor Winery, before going on to win every wine medal possible during his career, including the coveted Adelaide Wine Show`s Montgomery Trophy in 1974 for Best Burgundy. In 1979, Pieter set up his own Winery and Vineyard, bringing Chardonnay cuttings from Craigmoor Vineyard- the oldest in Australia. Pieter retired in 2006 after achieving a successful career and building a sound business.Philip van Gent, son and winemaker, leads this company forward with his own determination and passion.', :image => 'https://media.timeout.com/images/103064875/image.jpg', :region_id => r1.id)

w4 = Winery.create(:name => 'Lowe Wines', :year => '1825-01-01', :founder => 'Robert Lowe', :history => 'xxxxx', :image => 'https://media.timeout.com/images/104683661/image.jpg', :region_id => r1.id)


# w2 = Winery.create(:name => 'Yalumba', :year => '1849-01-01', :founder => 'Samuel Smith', :history => 'xxxxx', :image => 'https://i.pinimg.com/originals/3c/d4/65/3cd465af47ecb06ffef8cd74d4b22d7b.jpg', :region_id => r3.id)




puts "Creating varieties"

Variety.destroy_all
v1 = Variety.create(:name => 'Zinfandel', :color => 'Red', :origin => 'Croatia', :food => 'Pork ribs, lamb, pasta, pates, mosses and terrines', :history => 'Studies indicate that the grape used for making California Zinfandel probably originated in Croatia. Historians believe that in the 1820s, a nursery owner brought Zinfandel cuttings that were Croatian in origin to the United States from an Austrian collection. The Zinfandel name, however, is truly American—the earliest and only documented use of the name is in America where a Boston nursery owner advertised Zinfandel for sale in 1832.', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Zinfandel_grapes.jpg/220px-Zinfandel_grapes.jpg')
v2 = Variety.create(:name => 'Shiraz', :color => 'Red', :origin => 'France, Rhone', :food => 'Roast beef, lamb, strong hard cheeses, highly spiced dishes', :history => 'XXX', :image => 'https://winedharma.com/sites/winedharma.com/files/imagecache/auto-768/Syrah%2C%20bunches%20of%20Shiraz%2C%20French%20vines%2C%20guide%20to%20the%20best%20red%20wines%20in%20the%20world.jpg')
v3 = Variety.create(:name => 'Cabernet Sauvignon', :color => 'Red', :origin => 'France, Bordeaux', :food => 'Red meats, burgers, moussaka, hard and blue cheeses', :history => 'XXX', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Zinfandel_grapes.jpg/220px-Zinfandel_grapes.jpg')
v4 = Variety.create(:name => 'Merlot', :color => 'Red', :origin => 'France, Bordeaux', :food => 'Slow-cooked or rustic style dishes, tapas', :history => 'XXX', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Zinfandel_grapes.jpg/220px-Zinfandel_grapes.jpg')
v5 = Variety.create(:name => 'Grenache', :color => 'Red', :origin => 'Spain, Aragon', :food => 'Stewed and braised pork, veal, beef, chicken, sausage', :history => 'XXX', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Zinfandel_grapes.jpg/220px-Zinfandel_grapes.jpg')
v6 = Variety.create(:name => 'Pinot Noir', :color => 'Red', :origin => 'France, Burgundy', :food => 'Duck, dishes with mushrooms, truffles', :history => 'XXX', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Zinfandel_grapes.jpg/220px-Zinfandel_grapes.jpg')
v7 = Variety.create(:name => 'Sauvignon Blanc', :color => 'White', :origin => 'France, Bordeaux', :food => 'Fried food, raw seafood, asian dishes', :history => 'XXX', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Zinfandel_grapes.jpg/220px-Zinfandel_grapes.jpg')
v8 = Variety.create(:name => 'Verdelho', :color => 'White', :origin => 'Madeira', :food => 'Poultry, pork, rich seafood, oysters and other shellfish', :history => 'XXX', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Zinfandel_grapes.jpg/220px-Zinfandel_grapes.jpg')
v9 = Variety.create(:name => 'Semillon', :color => 'White', :origin => 'France, Bordeaux', :food => 'Crab, clams, sashimi, light seafood salads, simple mediterranean food', :history => 'XXX', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Zinfandel_grapes.jpg/220px-Zinfandel_grapes.jpg')
v10 = Variety.create(:name => 'Chardonnay', :color => 'White', :origin => 'France, Burgundy', :food => 'Fatty fish, cream or cheese based pastas', :history => 'XXX', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Zinfandel_grapes.jpg/220px-Zinfandel_grapes.jpg')
v11 = Variety.create(:name => 'Riesling', :color => 'White', :origin => 'Germany, Rheingau', :food => 'Duck, sweet and spicy dishes', :history => 'XXX', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Zinfandel_grapes.jpg/220px-Zinfandel_grapes.jpg')
v12 = Variety.create(:name => 'Pinot Gris', :color => 'White', :origin => 'France, Burgundy', :food => 'Light fish dishes, tapas, light pasta, salads', :history => 'XXX', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Zinfandel_grapes.jpg/220px-Zinfandel_grapes.jpg')



r1.varieties << v1
r3.varieties << v2
v1.wineries << w1
v2.wineries << w2
