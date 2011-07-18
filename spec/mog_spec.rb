require 'spec_helper'

describe Mog do

  use_vcr_cassette :record => :new_episodes, :match_requests_on => [:uri, :method]

  context "when delegating to a client" do
    it "should return the same results as a client" do
      Mog.artists.should == Mog::Client.new.artists
    end
  end

  describe '.client' do
    it 'should return an Mog::Client' do
      Mog.client.should be_a Mog::Client
    end
  end

  describe '.respond_to?' do
    it "should take an optional argument" do
      Mog.respond_to?(:new, true).should be_true
    end
  end

  describe ".new" do
    it "should return a Mog::Client" do
      Mog.new.should be_a Mog::Client
    end
  end

end