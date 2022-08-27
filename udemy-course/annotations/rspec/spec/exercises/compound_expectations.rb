RSpec.describe "Compound expectations" do
  it "tests" do
    expect("firetruck").to start_with("fire").and end_with("truck")
    expect(20).to be_even.and respond_to(:times)
    expect([4, 8, 15, 16, 23, 42]).to include(42).and start_with(4, 8, 15)
  end
end