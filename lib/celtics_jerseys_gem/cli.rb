# CLI Controller
class CelticsJerseysGem::CLI

  def call
    list_prices
    menu
    goodbye
  end

  def list_prices
    puts "Today's Boston Celtics Jersey Prices:"
    @deals = CelticsJerseysGem::Deal.today
    @deals.each.with_index(1) do |deal, i|
      puts "#{i}. #{deal.name} - #{deal.price}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the jersey you would like to learn more about or type list to see all jersey prices or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_deal = @deals[input.to_i-1]
        puts "#{the_deal.name} - #{the_deal.price}"
      elsif input == "list"
        list_prices
      else
        puts "Please type a number of a Celtics jersey deal or type list or exit."
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more Celtics jersey deals!"
  end
end