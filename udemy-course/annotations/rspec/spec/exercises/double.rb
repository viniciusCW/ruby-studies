RSpec.describe "doubles" do
  it "database connection" do
    db = double("Database Connection", connect: true, disconnect: "Goodbye", )

    expect(db.connect).to be true
    expect(db.disconnect).to eq("Goodbye")
  end

  it "file system" do
    fs = double("File System")
    allow(fs).to receive(:read).and_return("Romeo and Juliet")
    allow(fs).to receive(:write).and_return(false)

    expect(fs.read).to eq("Romeo and Juliet")
    expect(fs.write).to be false
  end
end