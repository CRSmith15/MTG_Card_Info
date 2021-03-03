class MtgCardInfo::CLI 
  def call 
    puts "\nWelcome to MTG Card Info!\n"
    get_card_list
    list_cards
    get_user_card
  end
  
  def get_card_list 
    @cards = MtgCardInfo::Card.all
  end
  
  def list_cards
    puts "\nSelect a number to view the card\n"
    @cards.each.with_index(1) do |card, index|
      puts "#{index}. #{card.name}"
    end
  end
  
  def get_user_card
    chosen_card = gets.strip.to_i
    if valid_input(chosen_card, @cards) 
      show_card_for(chosen_card)
    else 
      puts "Sorry that was not a vaild input. Choose another number."
    end
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def show_card_for(chosen_card)
    card = @cards[chosen_card - 1]
    puts "\nHere is info on #{card.name}!\n"
    puts "\nColor(s): #{card.colors}\n"
    puts "Converted Mana Cost: #{card.mana}"
    puts "Power: #{card.power}"
    puts "Toughness: #{card.toughness}"
    puts "Type: #{card.types}"
    puts "Description: #{card.text}"
  end
end