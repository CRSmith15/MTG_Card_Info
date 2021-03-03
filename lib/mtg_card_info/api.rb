require "httparty"
class MtgCardInfoAPI 
  include HTTParty 
  base_uri "api.magicthegathering.io"
  
  def cards 
    self.class.get("/v1/cards.json")
  end
  
  
end

mtg_cards = MtgCardInfoAPI.new
puts mtg_cards.cards