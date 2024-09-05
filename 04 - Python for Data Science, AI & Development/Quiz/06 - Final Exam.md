1. In Python, what signifies real numbers and utilizes a decimal point?

- [ ] complex
- [x] float
- [ ] int
- [ ] str

**Correct**  
Correct! Float data type can have any real number and has a decimal point.

2. Given the string `Name="ABCDE"`, what outcome does the operation `Name.find("B")` produce?

- [x] 1
- [ ] 5
- [ ] 2
- [ ] 0

**Correct**  
Correct! “B” is at Index position 1.

3. What does the code segment `1/2` produce as a result?

- [ ] 2
- [ ] 0
- [ ] 1
- [x] 0.5 

**Correct**  
Correct! Value is the general division result obtained by executing the expression.

4. A dictionary must have what type of keys?

- [ ] Not changeable
- [x] Unique
- [ ] Integers
- [ ] Duplicate

**Correct**  
Correct! Unique keys are mandatory for dictionaries.

5. In a list or tuple, what does the index of "1" represent?

- [x] The second element
- [ ] The last element
- [ ] The first element
- [ ] The third element

**Correct**  
Correct! Index 1 refers to the second element of a list or tuple.

6. What outcome does the following operation: `'1,2,3,4'.split(',')` produce?

- [ ] '1','2','3','4'
- [x] ['1','2','3','4']
- [ ] '1234'
- [ ] ('1','2','3','4')

**Correct**  
Correct! `split()` method breaks the string into a list of strings based on the chosen delimiter.

7. How do you cast the list `A` to the set `a`?

- [ ] a = A.set()
- [ ] a.set()
- [x] a = set(A)
- [ ] a = A.dict()

**Correct**  
Correct! `a=set(A)` will convert a list to a set.

8. For the code shared below, what value of `x` will produce the output “How are you?”? [Select three]

- [x] x = 0

**Correct**  
Partially correct! This is one of the values that would produce the required result.

- [ ] x = 1

- [x] x = 6

**Correct**  
Partially correct! This is one of the values that would produce the required result.

- [x] x = "7"

**Correct**  
Partially correct! This is one of the values that would produce the required result.

9. Why is the “finally” statement used?

- [ ] Only execute the remaining code if one condition is false.
- [ ] Only execute the remaining code if an error occurs.
- [x] Ensures the execution of the remaining code regardless of the outcome.
- [ ] Only execute the remaining code if no errors occur.

**Correct**  
Correct! Statements under Finally clause are always executed. 

10. What add function would return the value 4?

- [ ] ```python
  def add(x): 
      return(x + x + x) 
  add('1')
  ```

- [ ] ```python
  def add(x):
      return(x + x + x)
  add('2')
  ```

- [ ] ```python
  def add(x): 
      return(x + x) 
  add('4')
  ```

- [x] ```python
  def add(x): 
      return(x + x) 
  add(2) 
  ```

**Correct**  
Correct! The function will return the value double of the argument.

11. What code segment would output the following?

1  
3  
4

- [ ] ```python
  for i in range(1,5): 
         if (i!=5): 
             print(i)
  ```

- [ ] ```python
  for i in range(1,5): 
        if (i==2): 
            print(i)
  ```

- [x] ```python
  for i in range(1,5): 
         if (i!=2): 
             print(i)
  ```

- [ ] ```python
  for i in range(1,5): 
         if (i!=1): 
             print(i)
  ```

**Correct**  
Correct! The loop will run for values 1 to 4 and the condition will skip the value 2.

12. Consider the class Rectangle, what are the data attributes?

- [ ] ```python
  class Rectangle(object): 
      def __init__(self,width=2,height =3,color='r'):
          self.height=height 
          self.width=width 
          self.color=color 
      def drawRectangle(self): 
          import matplotlib.pyplot as plt 
          plt.gca().add_patch(plt.Rectangle((0, 0),self.width, self.height ,fc=self.color)) 
          plt.axis('scaled') plt.show()
  ```

- [x] self.height, self.width, self.color
- [ ] drawRectangle
- [ ] __init__
- [ ] import matplotlib

**Correct**  
Correct! Data attributes are the variables of the class. 

13. Complete the statement. You cannot sort a list if it contains:

- [ ] only numeric values
- [ ] concatenated strings
- [x] strings and numeric values
- [ ] only same Case strings

**Correct**  
Correct! You cannot solve numerical values and string values together.

14. What outcome do the following lines of code produce?

- [ ] ```python
  a = np.array([0,1,0,1,0]) 
  b = np.array([1,0,1,0,1]) 
  a*b 
  ```

- [ ] 1
- [ ] array([1, 1, 1, 1, 1])
- [ ] 0
- [x] array([0, 0, 0, 0, 0])

**Correct**  
Correct! The code multiplies elements individually, resulting in all values becoming 0s.

15. What line of code would produce the following: `array([11, 11, 11, 11, 11])`?

- [ ] ```python
  a = np.array([1,2,1,1,1]) 
  a+10
  ```

- [x] ```python
  a = np.array([1,1,1,1,1]) 
  a+10
  ```

- [ ] ```python
  a = np.array([1,1,1,1,1]) 
  a+1
  ```

- [ ] ```python
  a = np.array([1,1,1,1,1]) 
  11-a
  ```

**Correct**  
Correct! Each element of the array has the constant added to it.

16. How would you select the columns with the headers: Artist, Length and Genre from the dataframe df and assign them to the variable y?

- [x] y = df[['Artist','Length','Genre']]
- [ ] y = df[['Artist'],['Length'],['Genre']]
- [ ] y = df['Artist','Length','Genre']
- [ ] y = df('Artist','Length','Genre')

**Correct**  
Correct! The double brackets select the columns of a dataframe.

17. Given the file object named file1, which of the following codes prints the first 2 lines of the content in it?

- [ ] file1.readline(2)

- [x] ```python
  for n in range(0, 2):
      print(file1.readline())
  ```

- [ ] file1.readline(4)

- [ ] file1.read(2)

**Correct**  
Correct! The loop runs for 2 iterations, printing the first 2 lines of the file.

18. Consider the following line of code:

```python
with open("Example.txt","a") as file1:
```

What mode is the file object in?

- [ ] read
- [ ] binary
- [x] append
- [ ] write

**Correct**  
Correct! The code uses the "a" mode in the open function, which stands for append. This mode allows the file to remain open for writing.

19. In the URL below, which part is the scheme?  
http://www.ibm.com/images/IDSNlogo.png

- [ ] /images/IDSNlogo.png
- [ ] www.ibm.com
- [ ] http://www.ibm.com/images/IDSNlogo.png
- [x] http://

**Correct** 
Correct! In the given URL, the scheme is `http://`.

20. Which response code series indicates the successful execution of the requested operation?

- 200
- 500
- 100
- 400

**Correct**  
Correct! `200` response code corresponds to successful execution of request.