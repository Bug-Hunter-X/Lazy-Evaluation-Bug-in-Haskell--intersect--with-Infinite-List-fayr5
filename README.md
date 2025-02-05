# Haskell Lazy Evaluation Bug

This repository demonstrates a subtle bug in Haskell code stemming from lazy evaluation and the use of infinite lists. The program uses `Data.List.intersect` to find the intersection of two lists. When one list is infinite, the program hangs because `intersect` attempts to fully traverse the infinite list before returning any results. 

The `bug.hs` file contains the buggy code. The solution in `bugSolution.hs` addresses this by using a more efficient approach to finding common elements that avoids the infinite list traversal issue.  The solution uses explicit pattern matching to ensure the evaluation process is finite.