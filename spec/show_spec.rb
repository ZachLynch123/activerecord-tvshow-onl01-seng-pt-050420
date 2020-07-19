require_relative 'spec_helper'

describe Show do

  after(:each) do
    Show.destroy_all
  end

  before(:each) do
    @rick_and_morty = Show.create(:name => "Rick and Morty", :day => "Thursday", :network => "Adult Swim", :rating => 10)
    @law_and_order = Show.create(:name => "Law & Order", :day => "Monday", :network => "NBC", :rating => 7)
    @the_cleveland_show = Show.create(:name => "The Cleveland Show", :day => "Monday", :network => "Fox", :rating => 2)
    @fear_the_walking_dead = Show.create(:name => "Fear the Walking Dead", :day => "Sunday", :network => "AMC", :rating => 3)
  end

  describe "attributes" do
    it "has data attributes given to it from a migration file" do
    #TODO: You'll need to create a new migration to add
    #the necessary columns to the shows table
      expect(@rick_and_morty.name).to eq("Rick and Morty")
      expect(@rick_and_morty.day).to eq("Thursday")
      expect(@rick_and_morty.network).to eq("Adult Swim")
      expect(@rick_and_morty.rating).to eq(10)
    end

  end
end
