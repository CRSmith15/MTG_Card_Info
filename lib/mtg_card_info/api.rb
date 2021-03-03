require "httparty"
require "pry"
class MtgCardInfo::API 
  include HTTParty 
  
  def fetch_data 
    url = "https://api.magicthegathering.io/v1/cards"
    response = HTTParty.get(url)
    response["cards"].each do |card|
      name = card["name"]
      mana = card["cmc"]
      colors = card["colors"]
      types = card["types"]
      power = card["power"]
      toughness = card["toughness"]
      text = card["text"]
      MtgCardInfo::Card.new(name, mana, colors, types, power, toughness, text)
    end
      
  end
end


