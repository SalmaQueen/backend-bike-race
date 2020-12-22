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
      slogan = Slogan.new(firstname:'First',lastname:'Last', slogan: 'sometext').save
      expect(slogan).to eq(false)
    end

    it "ensures slogan presence" do
      slogan = Slogan.new(firstname:'First',lastname:'Last', email:'sample@gmail.com').save
      expect(slogan).to eq(false)


    end
    # it { should ensure_length_of(:slogan).is_at_most(50) }

  # it "slogan should not be more than 50" do
  #   slogan = Slogan.new(firstname:'First',lastname:'Last',slogan:"sometext" email:'sample@gmail.com').save

  #   expect(slogan).is_at_most(50)
  # end

  describe "length validation" do
  it "should not allow a slogan more than 5o characters" do
    @slogan = Slogan.create(firstname:'First',lastname:'Last', slogan: "sometext", email:'sample@gmail.com')
    @slogan.slogan= "j" * 51
    expect(@slogan).to_not be_valid
  end
  end
    

  

    it "should save successfully" do
      slogan = Slogan.new(firstname:'First',lastname:'Last',email:'sample@gmail.com', slogan: 'sometext').save
      expect(slogan).to eq(true)
    end


    context 'when email is not unique' do
      before { described_class.create!(firstname:'First',lastname:'Last',slogan: 'sometext', email:'sample@gmail.com') }
      it {expect(subject).to be_invalid}
    end
  end


end
