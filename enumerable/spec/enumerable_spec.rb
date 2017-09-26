require "enumerable"

describe "my version of the enumerable methods" do 
  let (:array) {[1,2,3,4,5]}
  let (:answer) {[]}

  describe "my_each" do
    context "performs block on given elements" do
      it "returns each element" do
        array.my_each {|i| answer << i}
	   expect(answer).to eql([1,2,3,4,5])
      end 
    end
  end
  
  describe "my_each_with_index" do
    context "performs block on given elements" do
      it "returns each element with its index " do 
      	array.my_each_with_index {|i,index| answer << i && answer << index}
      	expect(answer).to eql([1,0,2,1,3,2,4,3,5,4])
      end
    end
  end 

  describe "my_select" do 
    context "performs block on given elements" do 
      it "returns the element if block conditions are true" do 
      	answer = array.my_select {|i| i > 2}
      	expect(answer).to eql([3,4,5])
      end
    end 
  end

  describe "my_all?" do 
  	context "performs block on given elements" do 
      it "returns true if all elements match block conditions" do 
      	answer = array.my_all? {|i| i > 0}
      	expect(answer).to eql(true)
      end
    end 
  end 

  describe "my_any?" do
    context "performs block on given elements" do 
      it "returns true if any element matches block conditions" do 
       answer = array.my_any? {|i| i > 4} 
       expect(answer).to eql(true)
      end
    end
  end 

  describe "my_none?" do 
    context "performs block on given elements" do 
      it "returns true if no elements match the block conditions" do 
        answer = array.my_none? {|i| i > 8}
        expect(answer).to be true 
      end
    end
  end
end
