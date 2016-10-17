class CelticsJerseysGem::Deal
  attr_accessor :name, :price, :url

  def self.today
    self.scrape_deals
  end

  def self.scrape_deals
    deals = []
    
    deals << self.scrape_horford
    deals << self.scrape_thomas
    deals << self.scrape_brown
    deals << self.scrape_smart
    deals << self.scrape_crowder
    deals
  end

  def self.scrape_horford
    doc = Nokogiri::HTML(open("http://www.celticsstore.com/adidas-celtics-al-horford-replica-road-jersey/detail.php?p=1023356&v=celtics_jerseys_mens"))
    
    deal = self.new
    deal.name = doc.search("h1.prodInfoTitle").text.strip
    deal.price = doc.search("span.yourPrice").text.strip
    deal.url = doc.search("a.productLink")

    deal
  end

  def self.scrape_thomas
    doc = Nokogiri::HTML(open("http://www.celticsstore.com/adidas-celtics-isaiah-thomas-replica-road-jersey/detail.php?p=822950&v=celtics_jerseys_mens"))
    deal = self.new
    deal.name = doc.search("h1.prodInfoTitle").text.strip
    deal.price = doc.search("span.yourPrice").text.strip
    deal.url = doc.search("a.productLink")

    deal
  end

  def self.scrape_brown
    doc = Nokogiri::HTML(open("http://www.celticsstore.com/adidas-celtics-jaylen-brown-replica-home-jersey/detail.php?p=1023336&v=celtics_jerseys_mens"))
    deal = self.new
    deal.name = doc.search("h1.prodInfoTitle").text.strip
    deal.price = doc.search("span.yourPrice").text.strip
    deal.url = doc.search("a.productLink")

    deal
  end

  def self.scrape_smart
    doc = Nokogiri::HTML(open("http://www.celticsstore.com/adidas-celtics-marcus-smart-revolution-30-replica-home-jersey/detail.php?p=604294&v=celtics_jerseys_mens"))
    deal = self.new
    deal.name = doc.search("h1.prodInfoTitle").text.strip
    deal.price = doc.search("span.yourPrice").text.strip
    deal.url = doc.search("a.productLink")

    deal
  end

  def self.scrape_crowder
    doc = Nokogiri::HTML(open("http://www.celticsstore.com/adidas-celtics-jae-crowder-swingman-20-road-jersey/detail.php?p=821692&v=celtics_jerseys_mens"))
    deal = self.new
    deal.name = doc.search("h1.prodInfoTitle").text.strip
    deal.price = doc.search("span.yourPrice").text.strip
    deal.url = doc.search("a.productLink")

    deal
  end
end