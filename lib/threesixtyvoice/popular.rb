module Threesixtyvoice
  class Popular
    attr_reader :version, :popular_blogs

    def initialize(doc)
      @version = doc.xpath('//api/info/version').text
      @popular_blogs = doc.xpath('//api/mostpopular/gamer').map do |i|
        PopularBlog.new(i.xpath('rank').text, i.xpath('gamertag').text,i.xpath('url').text)
      end
    end

  end

  class PopularBlog < Struct.new("PopularBlog", :rank, :gamertag, :url)
  end
end
