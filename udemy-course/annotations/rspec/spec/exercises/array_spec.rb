RSpec.describe Array do
  it "test" do
    expect(subject.length).to eq(0)
    subject.append("aaaa")
    expect(subject.length).to eq(1)
  end
end