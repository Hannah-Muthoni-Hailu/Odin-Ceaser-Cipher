require_relative "../ceaser_cipher"

describe "#ceaser_cipher" do
  let(:str) { "What a string!" }
  let(:num) { 5 }
  it "returns a string" do
    expect(ceaser_cipher(str, num)).to be_a(String)
  end
end
