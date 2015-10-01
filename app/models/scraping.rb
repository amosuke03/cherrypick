class Scraping
#   def self.page_url
#     links = []
#     agent = Mechanize.new
#     page = agent.get('http://cherrypick.jp/category/%E8%96%AC%E5%89%A4/')
#     elements = page.search('.entry-title a')
#       elements.each do |ele|
#         # image_url = ele.get_attribute('src')
#         links << ele.get_attribute('href')
#       end
#       links.each do |link|
#         get_product(link)
#       end
#   end

#   def self.get_product(link)
#     agent = Mechanize.new
#     page = agent.get(link)
#     title = page.at('.entry-header h1').inner_text if page.at('.entry-header h1')
#     movie_url = page.at('ytp-title')[:href] if page.at('ytp-title')
#     image_url = page.at('ytp-title')[:src] if page.at('vytp-title')
#     product = Product.where(title: title,image_url: image_url,movie_url: movie_url).first_or_initialize
#     binding.pry
#     product.save

#   end
# end
def self.movie_url
    agent = Mechanize.new
    page = agent.get('http://cherrypick.jp/category/%E8%96%AC%E5%89%A4/')
    elements = page.search('h1 a')
      elements.each do |ele|
        title = ele.inner_text
        image_url = ele.get_attribute('src')
        product = Product.where(title: title,image_url: image_url).first_or_initialize
        product.save
      end
  end
end