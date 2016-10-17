class CelticsJerseysGem::Deal
  attr_accessor :name, :price, :url

  def self.today
    self.scrape_deals
  end

  def self.scrape_deals
    deals = []
    
    deals << self.scrape_celtics
    deals
  end

  def self.scrape_celtics
    doc = Nokogiri::HTML(open("http://www.celticsstore.com/mens/index.php?v=celtics_jerseys_mens"))
    name = doc.search("div.prodName").text
    price = doc.search("span.originalPrice").text
    url = doc.search("a.productLink")
    
    binding.pry
  end
end