require 'spec_helper'

describe Threesixtyvoice do

  describe "#badges_list_gamertags" do
    let(:badge_id) { 1 }
    before do
      stub_request(:get, "http://360voice.gamerdna.com/api/badges-list-gamertags.asp?id=#{badge_id}").
        to_return(:status => 200, :body => "", :headers => {})
    end
    it "should initialize the BadgeListGamertags" do
      Threesixtyvoice::BadgesListGamertags.stub(:new)
      Threesixtyvoice.badges_list_gamertags(badge_id)
      Threesixtyvoice::BadgesListGamertags.should have_received(:new)
    end
  end

  describe "#badge_list" do
    before do
      stub_request(:get, "http://360voice.gamerdna.com/api/badges-list.asp").
        to_return(:status => 200, :body => "", :headers => {})
    end
    it "should initialize the BadgeList" do
      Threesixtyvoice::BadgeList.stub(:new)
      Threesixtyvoice.badge_list
      Threesixtyvoice::BadgeList.should have_received(:new)
    end
  end

  describe "#popular" do
    before do
      stub_request(:get, "http://360voice.gamerdna.com/api/popular.asp").
        to_return(:status => 200, :body => "", :headers => {})
    end
    it "should initialize the Popular object" do
      Threesixtyvoice::Popular.stub(:new)
      Threesixtyvoice.popular
      Threesixtyvoice::Popular.should have_received(:new)
    end
  end

  describe "#group_members" do
    let(:group_id) { 1 }
    before do
      stub_request(:get, "http://360voice.gamerdna.com/api/group-members.asp?id=#{group_id}").
        to_return(:status => 200, :body => "", :headers => {})
    end
    it "should initialize the Popular object" do
      Threesixtyvoice::GroupMembers.stub(:new)
      Threesixtyvoice.group_members(group_id)
      Threesixtyvoice::GroupMembers.should have_received(:new)
    end
  end
end
