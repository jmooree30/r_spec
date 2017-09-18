require "cipher.rb"

describe "cipher" do
  context "given an string and a number to shift" do
    it "returns the shifted letter" do 
      expect(cipher("a",1)).to eql("b")
    end
  end

  context "given 'z' with a shift of 1" do
    it "returns 'a'" do 
      expect(cipher("z",1)).to eql("a")
    end
  end 

  context "given 'A' with a shift of 1" do 
    it "returns 'B'" do 
     expect(cipher("A",1)).to eql("B")
    end 
  end

  context "given 'Z' with a shift of 1" do 
  	it "returns 'A'" do
      expect(cipher("Z",1)).to eql("A")
    end 
  end 

  context "given a string with a shift of 1" do 
  	it "returns the string with each letter shifted" do 
      expect(cipher("Dog",1)).to eql("Eph")
    end 
  end
end 