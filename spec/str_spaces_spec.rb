require_relative '../str_spaces.rb'

describe String do
  describe '#replace_spaces' do

    it "replaces 'hello world' with 'hello%20world'" do
      str = "hello world"
      expect(str.replace_spaces).to eq "hello%20world"
    end

  end

  describe '#replace_spaces_2' do 

    it "replaces 'hello world' with 'hello%20world'" do
      str = "hello world"
      expect(str.replace_spaces_2).to eq "hello%20world"
    end

  end
end
