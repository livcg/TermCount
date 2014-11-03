
Given n terms, print the k most frequent terms in descending order of their frequency.

From Question #2 on http://evernote.com/careers/challenge.php


--------------------------------------------------
Psuedo code

# Collect & process input
Input => int n
Check if n is w/in constraints
termCountHash = {}
For i = 1..n
  Input => String term
  Check if term length is w/in constraints
  int count = termCountHash{term}
  termCountHash{term} = count++
  # termCountHash{term}++ ?
Input => int k

# Convert hash into array of arrays (count, term)
termCountArray = []
int index = 0
termCountHash.each( { term, count
  termCountArray[index++] = [ count, term ]
} )

# Sort array
termCountArray.sort( { a, b
  if (a[0] == b[0])
    return (a[1]).compare(b[1])
  return (a[0] > b[0])
} )

# Print the k most frequent terms
for i = 1..k
  print termCountArray[i][1] + "\n"


--------------------------------------------------
Test

Sample input
n <= 0
n >= 300000
term length <= 0
term length > 25
k = 0
If two terms have same frequency, print them in lexicographical order

--------------------------------------------------
