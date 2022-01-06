# Problem Template

```python gibberish
def helper(subproblem definition, partial solution ie slate):
    #Base Case: Leaf Worker
    if subproblem definition is empty:
        # partial solution = complete permutation/combination
        add to global bag
        return
    # Recursive Case: Internal Node Workers
    let n choices for filling into the left most blank
    for each of those choices n(i)
        add n(i) to the slate
            helper(slightly reduced subproblem size, slightly enlarged slate)
```