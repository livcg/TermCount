#!/usr/bin/env ruby

class TermCount
  attr_accessor :n
  attr_accessor :terms
  attr_accessor :k
end

#...
termCount = TermCount.new
termCount.n=(14) ### Hardcode for now

# Collect & process input
termCountHash = {}
# termCount.terms=([ "Fee", "Fi", "Fo", "Fum", "Fee", "Fo", "Fee", "Fee", "Fo", "Fi", "Fi", "Fo", "Fum", "Fee" ]); ### Hardcode for now
terms =[ "Fee", "Fi", "Fo", "Fum", "Fee", "Fo", "Fee", "Fee", "Fo", "Fi", "Fi", "Fo", "Fum", "Fee" ]; ### Hardcode for now
terms.each_entry { | term |
  count = termCountHash[term]
  (count == nil ? count = 0 : count )
  termCountHash[term] = count + 1
  print term, " - ", termCountHash[term], "\n"
}
termCount.k=(3) ### Hardcode for now

# Convert hash into array of arrays (count, term)
termCountArray = termCountHash.to_a
print "\n\n", termCountArray, "\n\n"

# Sort array
termCountArray.sort! { | a, b |
  if (a[1] == b[1])
    b[0] <=> a[0]
  else
    b[1] <=> a[1]
  end
}

print "\n\nSorted array:\n", termCountArray, "\n\n"

# Print the k most frequent terms
print "k most frequent terms:\n"
for i in 0..(termCount.k - 1)
  print termCountArray[i][0] + "\n"
end

