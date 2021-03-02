class MtgCardInfo::CLI 
  def call 
    puts "Welcome to MTG Card Info!"
    get_card_list
    list_cards
  end
  
  def get_card_list 
    #get api data
    @cards = ["Doom Blade", "Cancel", "Recall", "Plague Rats"]
  end
  
  def list_cards
    @cards.each_with_index do |card, index|
      puts "#{index + 1} #{card}"
    end
  end
end