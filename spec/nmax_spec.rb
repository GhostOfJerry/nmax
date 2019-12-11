RSpec.describe Nmax do
  it "has a version number" do
    expect(Nmax::VERSION).not_to be nil
  end

  context '.maximum_numbers' do
    it "return maximum numbers with N limit" do
      result = Nmax.maximum_numbers(3, IO.read('spec/test.txt'))
      expect(result).to eq([1234567890987654321, 12345678987654321, 123456787654321])
    end
  end
end
