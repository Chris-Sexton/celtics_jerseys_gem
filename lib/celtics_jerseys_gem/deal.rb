class CelticsJerseysGem::Deal
  attr_accessor :name, :price, :url
  
  def self.today
    puts <<-DOC.gsub /^\s*/, ''
      1. Addidas Al Horford #42 Price: $99.99
      2. Addidas Isaiah Thomas #4 Price: $99.99
    DOC
    deal_1 = self.new
    deal_1.name = "Addidas Al Horford"
    deal_1.price = "$99.99"
    deal_1.url = "http://www.celticsstore.com/adidas-celtics-al-horford-replica-road-jersey/detail.php?p=1023356&v=celtics_jerseys_mens"
  
    deal_2 = self.new
    deal_2.name = "Addidas Isaiah Thomas"
    deal_2.price = "$99.99"
    deal_2.url = "http://www.celticsstore.com/adidas-celtics-isaiah-thomas-replica-road-jersey/detail.php?p=822950&v=celtics_jerseys_mens"
  
    [deal_1, deal_2]
  end

end