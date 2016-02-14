require_relative '../remove_dup.rb'
require 'yaml'

describe String do 

  describe "#remove_dup" do

    it "removes duplicates from hello" do
      str = "hello".remove_dup
      expect(str).to eq "helo"
    end

  end  

end
