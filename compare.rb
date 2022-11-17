require_relative 'website'

class Compare
  def initialize(one, two)
    @
  end
end

cc_url = 'https://cleancapture.co.uk//'
cc_pages = ['', 'home-alt', 'product-service-industry', 'hotel-and-property-industry',
            'social-media-marketing', 'about-us/', 'portfolio-2-2', 'contact-us']
tr_url = 'https://www.thinreelmedia.com/'
tr_pages = ['', 'services', 'portfolio', 'blog', 'about', 'loop', 'contact']

cc = Website.new(cc_url)
tr = Website.new(tr_url)
