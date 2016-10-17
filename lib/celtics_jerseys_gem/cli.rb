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
  end

  def menu
    puts "Enter the number of the jersey you would like to learn more about or type list to see all jersey prices or type exit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Al Horford Jersey"
      when "2"
        puts "Isaiah Thomas Jersey"
      when "list"
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