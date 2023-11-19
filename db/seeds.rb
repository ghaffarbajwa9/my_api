# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'httparty'

url = 'http://universities.hipolabs.com/search?country=United+States'

response = HTTParty.get(url)
data = JSON.parse(response.body)

data.each do |d|
    Unidatum.create!(
        alph_two_code: d["alph_two_code"],
        domain: d["domains"][0],
        web_pages: d["web_pages"][0],
        name: d["name"],
        state_province: d["state-province"],
        country: d["country"],
    )
end