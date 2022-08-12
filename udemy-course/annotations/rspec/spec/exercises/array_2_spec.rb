RSpec.describe Array do
  subject(:sally) do
    [1, 2]
  end

  it "has length equal to 2" do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it "sally have to be equal the subject" do
    expect(sally).to eq(subject)
  end
end