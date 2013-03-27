module Threesixtyvoice
  class GroupMembers
    attr_reader :version, :groupid, :groupname, :grouplink, :members

    def initialize(doc)
      @version = doc.xpath('//api/groupinfo/version').text
      @groupid = doc.xpath('//api/groupinfo/groupid').text
      @groupname = doc.xpath('//api/groupinfo/groupname').text
      @grouplink = doc.xpath('//api/groupinfo/grouplink').text
      @members = doc.xpath('//api/groupmembers/member').map do |i|
        GroupMember.new(i.xpath('gamertag').text, i.xpath('joindate').text, i.xpath('role').text)
      end
    end
  end

  class GroupMember < Struct.new("GroupMember", :gamertag, :joindate, :role)
  end
end

