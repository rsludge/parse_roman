require 'parse_roman'

describe 'ParseRoman' do
  it "raises exception on invalid string" do
    expect(-> {"qweqweqe".parse_roman}).to raise_error(ParseRoman::BadFormatError)
  end

  it "raises exception on empty string" do
    expect(-> {"".parse_roman}).to raise_error(ParseRoman::BadFormatError)
  end

  it "raises exception on invalid order of literals" do
    expect(-> {"CMM".parse_roman}).to raise_error(ParseRoman::BadFormatError)
  end

  it "returns correct numbers for roman literals" do
    { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }.each do |k, val|
      expect(k.parse_roman).to eq val
    end
  end

  it "returns sum of literals" do
    expect("III".parse_roman).to eq 3
    expect("XV".parse_roman).to eq 15
    expect("LI".parse_roman).to eq 51
  end

  it "handles left position of literals" do
    expect("IV".parse_roman).to eq 4
    expect("IX".parse_roman).to eq 9
    expect("CM".parse_roman).to eq 900
  end
end
