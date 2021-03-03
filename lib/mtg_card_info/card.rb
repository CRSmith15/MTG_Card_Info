class MtgCardInfo::Card 
  
  @@all = []
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    save
  end
  
  def save 
    @@all << self
  end
  
  def self.all 
    api = MtgCardInfo::API.new
    api.fetch_cards if @@all.empty?
    @@all 
  end
  
  
end