class MtgCardInfo::CLI 
  def call 
    puts "\nWelcome to MTG Card Info!\n"
    get_card_list
    list_cards
    get_user_card
  end
  
  def get_card_list 
    #get api data
    @cards = ["Doom Blade", "Cancel", "Recall", "Plague Rats"]
  end
  
  def list_cards
    puts "\nSelect a number to view the card\n"
    @cards.each.with_index(1) do |card, index|
      puts "#{index}. #{card}"
    end
  end
  
  def get_user_card
    chosen_card = gets.strip
    #if valid_input(chosen_card, @cards) 
    #end
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
end