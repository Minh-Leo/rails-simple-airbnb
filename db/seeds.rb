# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.destroy_all
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  picture_url: 'https://source.unsplash.com/1600x900/?apartment'
)

Flat.create!(
  name: 'Premium & Luxury CBD Apartment is waiting for you!',
  address: '902/398 Lonsdale Street, Melbourne, Vic 3000',
  description: '398 Lonsdale Resident located on the busiest street in the Melbourne CBD with everything you will need for everyday living. Hardware lane just downstairs, all the famous cafe and brunch restaurants at your fingertips.',
  price_per_night: 175,
  number_of_guests: 4,
  picture_url: 'https://source.unsplash.com/1600x900/?interior'
)

Flat.create!(
  name: 'Perfectly Located One Bedroom Apartment for City Lifestyle!',
  address: '2306/36 La Trobe Street, Melbourne, Vic 3000',
  description: 'UNFURNISHED - Come inspect this one bedroom apartment in a highly sought after location at the ’Trillium’ complex! Only minutes walk from Melbourne Central, QV, ',
  price_per_night: 215,
  number_of_guests: 2,
  picture_url: 'https://source.unsplash.com/1600x900/?hotel'
)

Flat.create!(
  name: 'NEW YORK STYLE LIVING',
  address: 'G02/61 Mackenzie Street, Melbourne, Vic 3000',
  description: 'In the rarely offered Indigo Lofts art deco complex. which delivers brilliant modern living over two incredibly unique levels, this one bedroom loft apartment promises a slice of the New York good life in one of Melbourne’s most sought-after locations.',
  price_per_night: 345,
  number_of_guests: 5,
  picture_url: 'https://source.unsplash.com/1600x900/?hostel'
)
