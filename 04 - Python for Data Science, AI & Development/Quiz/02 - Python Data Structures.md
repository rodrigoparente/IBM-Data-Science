1. Examine the tuple `A=((11,12),[21,22])`, which involves a tuple and list. What is the outcome of the following operation `A[1]`?

- [ ] (11,12)
- [ ] 11
- [x] [21,22]
- [ ] ((11,12),[21,22])

**Correct**  
Correct. The outcome is the list in index 1.

2. Consider the tuple `A=((1),[2,3],[4])`, that contains a tuple and list. What is the result of the following operation `A[2]`?

- [ ] 3
- [x] [4]
- [ ] 1
- [ ] [2,3]

**Correct**  
Correct. The outcome is the list in index 2.

3. If `L = ['c', 'd']`, then the output of the statement `L.append(['a', 'b'])` is:

- [ ] ['c', 'd', 'a', 'b']
- [ ] [['a', 'b'], 'c', 'd']
- [x] ['c', 'd', ['a', 'b']]
- [ ] ['a', 'b', 'c', 'd']

**Correct**  
Correct! The statement will add the list as a single element in `L`.

4. Consider the following list: `A=["hard rock",10,1.2]`  
What will list `A` contain after the following command is run? `del(A[0])`

- [x] [10,1.2]
- [ ] ["hard rock",10]
- [ ] ["hard rock",10,1.2]
- [ ] Syntax error

**Correct**  
Correct! The element in index 0 will be deleted.

5. If `A` is a list, what does the following syntax do? `B=A[:]`

- [x] Creates a new reference variable `B` that points to a copy or clone of the original list `A`
- [ ] `B` gets a transposed form of the list `A`
- [ ] Assigns list `A` to list `B`
- [ ] List `A` gets converted to a set and is loaded to `B`

**Correct**  
Correct. Creates a new reference variable `B` that points to a copy or clone of the original list `A`.

6. What is the result of the following? `len(("disco",10))`

- [ ] 5
- [ ] 7
- [ ] 6
- [x] 2

**Correct**  
Correct! The function `len` returns the number of elements in a list.

7. Consider the following dictionary:

```python
{"The Bodyguard":"1992", "Saturday Night Fever":"1977"}
```

Select the values.

- [x] "1977"
  
  **Correct**  
  Partially correct! This is one of the values.

- [x] "1992"
  
  **Correct**  
  Partially correct! This is one of the values.

- [ ] "The Bodyguard"
  
- [ ] "Saturday Night Fever"

8. The variable `release_year_dict` is a Python dictionary. What is the outcome of applying the following method? `release_year_dict.values()`

- [ ] Changes the dictionary to a list
- [ ] Retrieves the keys of the dictionary
- [x] Retrieves the values of the dictionary
- [ ] Retrieves the entire contents of the dictionary

**Correct**  
Correct! This method returns the values.

9. Consider the set: `V={'A','B'}`, what is the result of `V.add('C')`?

- [ ] {'AC', 'BC'}
- [ ] {'A','B'}
- [ ] Error
- [x] {'A','B','C'}

**Correct**  
Correct! The method will add a new value to the current set.

10. What is the result of the following? `'A' in {'A','B'}`

- [ ] False
- [x] True
- [ ] 1
- [ ] 0

**Correct**  
Correct! The conditional statement is true.