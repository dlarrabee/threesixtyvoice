module Threesixtyvoice

  class BadgesListGamertags
    attr_reader :version, :title, :id, :count, :owners

    def initialize(doc)

      @version = doc.xpath('//api/info/version').text
      @title = doc.xpath('//api/info/title').text
      @count = doc.xpath('//api/info/count').text
      @id = doc.xpath('//api/info/id').text

      @owners = doc.xpath('//api/owners/owner').map { |i| i.text }

    end

  end
end
