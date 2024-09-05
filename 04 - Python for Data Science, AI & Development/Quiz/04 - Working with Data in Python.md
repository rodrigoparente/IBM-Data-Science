1. What is the outcome of the following lines of code?

```python
a = np.array([-1, 1])  
b = np.array([1, 1])  
np.dot(a, b)
```

- [x] `1`
- [ ] `0`
- [ ] `array([[-1, -1], [1, 1]])`
- [ ] `array([0, 2])`

**Correct!** The given code creates two Numpy arrays, `a` and `b`, and then calculates their dot product using `np.dot(a, b)`.

2. What does the value of `Z` become after executing the following code?

```python
X = np.array([[1, 0], [0, 1]])  
Y = np.array([[0, 1], [1, 0]])  
Z = X + Y
```

- [ ] `array([[0, 1], [1, 1]])`
- [ ] `array([[0, 0], [0, 0]])`
- [x] `array([[1, 1], [1, 1]])`
- [ ] `array([[1, 0], [0, 1]])`

**Correct!** The `+` operator corresponds to matrix addition.

3. If you run the following lines of code, what values will the variable `out` take?

```python
X = np.array([[1, 0, 1], [2, 2, 2]])  
out = X[0:2, 2]
```

- [ ] `array([0, 2])`
- [ ] `array([1, 0])`
- [x] `array([1, 1])`
- [ ] `array([1, 2])`

**Correct!** The first index corresponds to the rows; the second index corresponds to the columns.

4. After executing the given code, what value does `Z` hold?

```python
X = np.array([[1, 0], [0, 1]])  
Y = np.array([[2, 1], [1, 2]])  
Z = np.dot(X, Y)
```

- [ ] `array([[3, 1], [1, 3]])`
- [ ] `array([[1, 0], [0, 1]])`
- [x] `array([[2, 1], [1, 2]])`
- [ ] `array([[2, 0], [1, 0]])`

**Correct!** The `dot` function corresponds to matrix multiplication.

5. Consider the following text file: `Example1.txt`:

```
This is line 1
This is line 2
This is line 3
```

What is the output of the following lines of code?

```python
with open("Example1.txt", "r") as file1:  
    file_stuff = file1.readline()  
print(file_stuff)
```

- [ ] `This is line 1\nThis is line 2`
- [x] `This is line 1`
- [ ] Syntax error
- [ ] `This is line 1\nThis is line 2\nThis is line 3`

**Correct!** The `open` method helps to read a file.

6. Consider the following line of code:

```python
with open(example1, "r") as file1:
```

What mode is the file object in?

- [x] `read`
- [ ] `write`
- [ ] `append`
- [ ] `binary`

**Correct!** The mode is set to `'r'` for read.

7. What do the following lines of code do?

```python
with open("Example.txt", "w") as writefile:  
    writefile.write("This is line A\n")  
    writefile.write("This is line B\n")
```

- [ ] Read the file `"Example.txt"`
- [x] Write to the file `"Example.txt"`
- [ ] Append the file `"Example.txt"`
- [ ] Create a binary file `"Example.txt"`

**Correct!** The mode of the function is `'w'` for write.

8. What task do the following lines of code accomplish?

```python
with open('Example2.txt', 'r') as readfile:  
    with open('Example3.txt', 'w') as writefile:  
        for line in readfile:  
            writefile.write(line)
```

- [ ] Checking the mode of the open function for each file object
- [ ] Reading the content of `Example2.txt`
- [ ] Printing out the content of `Example2.txt`
- [x] Copying the text from `Example2.txt` to `Example3.txt`

**Correct!** This is the expected outcome.

9. Given the dataframe `df`, how can you retrieve the element in the second row and first column?

- [x] `df.iloc[1, 0]`
- [ ] `df.iloc[2, 0]`
- [ ] `df.iloc[3, 1]`
- [ ] `df.iloc[1, 3]`

**Correct!** Indexing begins at 0 in Python.

10. Which method extracts the distinct elements from the following? `df['Length']`

- [ ] `describe`
- [x] `unique`
- [ ] `tail`
- [ ] `head`

**Correct!** The `unique` method will return unique values in a dataframe.