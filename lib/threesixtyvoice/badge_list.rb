module Threesixtyvoice
  class BadgeList
    attr_reader :version, :title, :badges

    def initialize(doc)
      @version = doc.xpath('//api/info/version').text
      @title = doc.xpath('//api/info/title').text

      @badges = doc.xpath('//api/badges/badge').map do |i|
        Badge.new(i.xpath('id').text, i.xpath('title').text,
                  i.xpath('owners').text, i.xpath('image').text,
                  i.xpath('description').text, i.xpath("category").text,
                  i.xpath("category_id").text, i.xpath('threshold').text,
                  i.xpath('categoryname').text, i.xpath('badgescore_old').text,
                  i.xpath('badgescore').text, i.xpath('badgescorecount').text
                 )
      end
    end
  end
end
