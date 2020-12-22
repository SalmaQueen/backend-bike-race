require 'rails_helper'

RSpec.describe Slogan, type: :model do
 context "validation test" do

      it "ensures first name presence" do
        slogan = Slogan.new(lastname:'Last',email:'sample@gmail.com', slogan: 'sometext').save
        expect(slogan).to eq(false)
    end

    it "ensures last name presence" do
      slogan = Slogan.new(firstname:'First',email:'sample@gmail.com', slogan: 'sometext').save
      expect(slogan).to eq(false)
    end

    it "ensures email presence" do
      slogan = Slogan.new(firstname:'First',email:'sample@gmail.com', slogan: 'sometext').save
      expect(slogan).to eq(false)
    end

    it "ensures slogan presence" do
      slogan = Slogan.new(firstname:'First',email:'sample@gmail.com', slogan: 'sometext').save
      expect(slogan).to eq(false)
    end

    it "should save successfully" do
      slogan = Slogan.new(firstname:'First',lastname:'Last',email:'sample@gmail.com', slogan: 'sometext').save
      expect(slogan).to eq(true)
    end
  end
end
