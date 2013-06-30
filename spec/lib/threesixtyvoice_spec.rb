require 'spec_helper'

describe Threesixtyvoice do

  describe "#badges_list_gamertags" do
    let(:badge_id) { 1 }
    before do
      stub_request(:get, "http://360voice.gamerdna.com/api/badges-list-gamertags.asp?id=#{badge_id}").
        to_return(:status => 200, :body => "", :headers => {})

    end
    it "Initialize the BadgeListGamertags" do
      Threesixtyvoice::BadgesListGamertags.stub(:new)
      Threesixtyvoice.badges_list_gamertags(badge_id)
      Threesixtyvoice::BadgesListGamertags.should have_received(:new)
    end
  end
end

