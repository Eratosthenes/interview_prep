require_relative '../anagram'

describe String do

  describe "#is_anagram?" do 

    it "returns true for 'madam' and 'daamm'" do
      ans = "madam".is_anagram?("daamm")
      expect(ans).to eq true
    end

    it "returns true for 'daamm' and 'madam'" do
      ans = "daamm".is_anagram?("madam")
      expect(ans).to eq true
    end

    it "returns false for 'hello' and 'mello'" do
      expect("hello".is_anagram?("mello")).to eq false
    end

    it "immediately returns false for strings of different length" do
      expect("hello".is_anagram?("mellow")).to be_falsey
    end
  end
end
