class MtgCardInfo::Card 
  
  @@all = []
  
  attr_accessor :name, :mana, :colors, :types, :power, :toughness, :text
  
  def initialize(name, mana, colors, types, power, toughness, text)
    @name = name
    @mana = mana
    @colors = colors
    @types = types 
    @power = power 
    @toughness = toughness
    @text = text
    save
  end
  
  def save 
    @@all << self
  end
  
  def self.all 
    api = MtgCardInfo::API.new
    api.fetch_data if @@all.empty?
    @@all 
  end
  
  
  
end