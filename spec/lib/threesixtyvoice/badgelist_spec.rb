require 'spec_helper'

describe Threesixtyvoice::BadgeList do
  let(:xml_data) { Nokogiri::XML("<api><info><version>1<//version><title>the title</title></info></api>") }

  it "should set the version" do
    result = Threesixtyvoice::BadgeList.new(xml_data)
    expect(result.version).to eq("1")
  end

  it "should set the title" do
    result = Threesixtyvoice::BadgeList.new(xml_data)
    expect(result.title).to eq("the title")
  end
end
