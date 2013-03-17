require "threesixtyvoice/version"
require 'net/http'
require 'nokogiri'

module Threesixtyvoice

  class Badge < Struct.new("Badge",:id, :title, :owners, :imae, :description,
                           :category, :category_id, :threshold, :categoryname,
                           :badgescore_old, :badgescore, :badgescorecount)
  end

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

  def self.badges_list_gamertags(badge_id)
    uri = URI.parse("http://360voice.gamerdna.com")
    http = Net::HTTP.new(uri.host, uri.port)
    response = http.get("/api/badges-list-gamertags.asp?id=#{badge_id}").body
    doc = Nokogiri::XML(response)
    BadgesListGamertags.new(doc)
  end

  def self.badge_list
    uri = URI.parse("http://360voice.gamerdna.com/api/badges-list.asp")
    http = Net::HTTP.new(uri.host, uri.port)
    response = http.get(uri.path).body
    doc = Nokogiri::XML(response)
    BadgeList.new(doc)
  end

end
