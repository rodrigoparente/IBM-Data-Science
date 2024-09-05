1. What is the output of the following code?

```python
x = "Go" 
if x == "Go": 
    print('Go') 
else: 
    print('Stop') 
print('Mike')
```

- [ ] Go Stop
- [x] Go Mike
- [ ] Mike
- [ ] Stop Mike

**Correct**  
Correct! The `if` clause executes first, followed by the last `print` statement.

2. What is the result of the following lines of code?

```python
x = 1 
x = x > -5
```

- [x] True
- [ ] 1
- [ ] False
- [ ] 0

**Correct**  
Correct! The condition is true as the value of `x` is greater than -5.

3. What is the result of the following few lines of code?

```python
x = 0 
while x < 2: 
    print(x) 
    x = x + 1
```

- [x] 0
      1
- [ ] 0
      1
      2
- [ ] 0
      1
      3
      4
- [ ] The program will never leave the loop.

**Correct**  
Correct! The loop breaks when `x` equals 2.

4. What is the result of running the following lines of code?

```python
class Points(object): 
    def __init__(self, x, y): 
        self.x = x 
        self.y = y 
    def print_point(self): 
        print('x=', self.x, ' y=', self.y) 

p1 = Points(1, 2) 
p1.print_point()
```

- [ ] x=y=
- [ ] x=1;
- [ ] y=2
- [x] x=1 y=2

**Correct**  
Correct! The `print` statement will display the two values as `x=1 y=2`.

5. What is the output of the following few lines of code?

```python
for i, x in enumerate(['A', 'B', 'C']): 
    print(i, 2 * x)
```

- [ ] 1 AA
      2 BB
      3 CC
- [x] 0 AA
      1 BB
      2 CC
- [ ] 0 A
      1 B
      2 C
- [ ] 0 A
      2 B
      4 C

**Correct**  
Correct! The `enumerate` function adds a counter to an iterable, allowing you to loop through both the elements and their corresponding indices.

6. What is the result of running the following lines of code?

```python
class Points(object): 
    def __init__(self, x, y): 
        self.x = x 
        self.y = y 
    def print_point(self): 
        print('x=', self.x, ' y=', self.y) 

p2 = Points(1, 2) 
p2.x = 2 
```

- [x] x=2 y=2
- [ ] x=1 y=1
- [ ] x= A y=2
- [ ] x=1 y=2

**Correct**  
Correct! The attribute changed before the function call, resulting in `x=2 y=2`.

7. Considering the function `delta`, when will the following function return a value of 1?

```python
def delta(x): 
    if x == 0: 
        y = 1 
    else: 
        y = 0 
    return y
```

- [ ] When the input is anything but 0
- [x] When the input is 0
- [ ] When the input is 1
- [ ] Never

**Correct**  
Correct! The function returns value 1 when the input is 0.

8. What is the output of the following line of code?

```python
a = 1 
def do(x): 
    a = 100 
    return x + a 

print(do(1))
```

- [ ] 2
- [ ] 1
- [x] 101
- [ ] 102

**Correct**  
Correct! The value of `a=100` exists in the local scope of the function, disregarding the value of `a=1` in the global scope.

9. Which two of the following functions will perform the addition of two numbers with a minimum number of variables? **[Select two.]**

- [-] ```python
  def add(a, b):
     c = a+b
     return(c)
  ```
- [x] ```python
  def add(a, b):
      return(sum((a, b)))
  ```
- [x] ```python
  def add(a, b):
       return(a + b)
  ```

**Correct**  
Partially correct! It is one of the correct options.

- [-] ```python
  def add(a, b):
        return(sum(a, b))
  ```

10. Why is it the best practice to have multiple `except` statements with each type of error labeled correctly?

- [ ] Ensure catching the error for program termination
- [ ] To skip specific sections of code during its execution
- [ ] It is not necessary to label errors
- [x] To determine the type of error thrown and its location within the program

**Correct**  
Correct! Multiple `except` statements will help in identifying each type of error.
