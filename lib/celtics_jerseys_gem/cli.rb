# CLI Controller
class CelticsJerseysGem::CLI

  def call
    list_prices
    menu
  end

  def list_prices
    puts "Today's Boston Celtics Jersey Prices:"
    puts <<-DOC.gsub /^\s*/, ''
      1. Addidas Al Horford #42 Price: $99.99
      2. Addidas Isaiah Thomas #4 Price: $99.99
    DOC

  end

  def menu
    puts "Enter the number of the jersey you would like to learn more about:"
    input = gets.strip
    case input
    when "1"
      puts "Al Horford Jersey"
    when "2"
      puts "Isaiah Thomas Jersey"
    end
  end
end