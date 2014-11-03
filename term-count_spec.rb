describe TermCount, "#n" do
  termCount = TermCount.new

  it "returns 14 for n after it's set" do
    termCount.n=(14)
    termCount.n.should eq(14)
  end

  it "returns 3 for k after it's set" do
    termCount.k=(3)
    termCount.k.should eq(3)
  end

  it "returns 14 for terms.length" do
    termCount.terms=([ "Fee", "Fi", "Fo", "Fum", "Fee", "Fo", "Fee", "Fee", "Fo", "Fi", "Fi", "Fo", "Fum", "Fee" ])
    termCount.terms.length.should eq(14)
  end

=begin
=end

end


