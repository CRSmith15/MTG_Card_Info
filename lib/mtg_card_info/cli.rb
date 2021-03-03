class MtgCardInfo::CLI 
  def call 
    puts "\nWelcome to MTG Card Info!\n"
    get_card_list
    list_cards
    get_user_card
  end
  
  def get_card_list 
    #get api data
    @cards = MtgCardInfo::Card.all
  end
  
  def list_cards
    puts "\nSelect a number to view the card\n"
    @cards.each.with_index(1) do |card, index|
      puts "#{index}. #{card}"
    end
  end
  
  def get_user_card
    chosen_card = gets.strip.to_i
    if valid_input(chosen_card, @cards) 
      show_card_for(chosen_card)
    end
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def show_card_for(chosen_card)
    card = @cards[chosen_card - 1]
    puts "Here is info on #{card}"
  end
end