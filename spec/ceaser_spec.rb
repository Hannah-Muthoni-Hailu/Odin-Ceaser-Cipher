require_relative "../ceaser_cipher"

describe "#ceaser_cipher" do
  let(:str) { "What a string!" }
  let(:num) { 5 }
  let(:result) { "Bmfy f xywnsl!" }
  it "returns a string" do
    expect(ceaser_cipher(str, num)).to be_a(String)
  end

  it "Does not return the original string" do
    expect(ceaser_cipher(str, num)).not_to eql(str)
  end
  
  it "Does not modify punctuation marks" do
    expect(ceaser_cipher(str, num)[-1]).to eql("!")
  end
end
