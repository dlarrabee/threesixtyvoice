require "threesixtyvoice/version"
require 'net/http'
require 'nokogiri'

module Threesixtyvoice

  def self.badges_list_gamertags(badge_id)
    doc = get_xml_doc("/api/badges-list-gamertags.asp?id=#{badge_id}")
    BadgesListGamertags.new(doc)
  end

  def self.badge_list
    doc = get_xml_doc("/api/badges-list.asp")
    BadgeList.new(doc)
  end

  def self.popular
    doc = get_xml_doc("/api/popular.asp")
    Popular.new(doc)
  end

  def self.group_members(group_id)
    doc = get_xml_doc("/api/group-members.asp?id=#{group_id}")
    GroupMembers.new(doc)
  end

  private

  def self.get_xml_doc(api_path)
    uri = URI.parse("http://360voice.gamerdna.com")
    http = Net::HTTP.new(uri.host, uri.port)
    response = http.get(api_path).body
    Nokogiri::XML(response)
  end

end

require "threesixtyvoice/badge"
require "threesixtyvoice/badge_list"
require "threesixtyvoice/badges_list_gamertags"
require "threesixtyvoice/popular"
require "threesixtyvoice/group_members"
