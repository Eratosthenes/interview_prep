require_relative '../merge_sort'

describe Array do 
  describe '#merge_sort' do
    
    a = [*1..10].shuffle
    it "sorts #{a}" do
      expect(a.merge_sort).to eq [*1..10]
    end

  end
end
