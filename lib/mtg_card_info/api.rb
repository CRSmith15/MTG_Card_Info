require "httparty"
require "pry"
class MtgCardInfo::API 
  include HTTParty 
  
  def fetch_cards 
    url = "https://api.magicthegathering.io/v1/cards"
    response = HTTParty.get(url)
    response["cards"].each do |card|
      name = card["name"]
      MtgCardInfo::Card.new(name)
    end
      
  end
end


