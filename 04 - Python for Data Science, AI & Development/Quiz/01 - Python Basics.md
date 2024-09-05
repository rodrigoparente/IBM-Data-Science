1. After executing the following lines of code, what value does `x` hold?

```python
x = 1
x = x + 1
```

- [ ] 3
- [x] 2
- [ ] 4
- [ ] 1

**Correct**  
The value `x = x + 1` changes the value of `x` when it's self-assigned. It updates `x` with its current value, such as `x = 1 + 1` in this scenario.

2. What is the output of the following operation `1 + 3 * 2`?

- [x] 7
- [ ] 8
- [ ] 12
- [ ] 10

**Correct**  
Python follows the standard mathematical conventions.

3. What data type does the value `"7.1"` represent?

- [ ] Float
- [x] String
- [ ] Integer
- [ ] Character

**Correct**  
As the element is enclosed in quotes, it is a string type.

4. What is the output of the following code segment? `int(True)`

- [ ] 53
- [x] 1
- [ ] 0
- [ ] Error

**Correct**  
Converting a Boolean `True` to an integer results in the value `1`.

5. In Python, what is the output of the following operation? `'1' + '2'`

- [ ] 3
- [x] `'12'`
- [ ] `'1'`
- [ ] `'3'`

**Correct**  
When the `+` operator is used with strings, it does not add them together like it does with numbers. Instead, it concatenates them, meaning it joins them together to form a new string.

6. What is the output of the following? `'hello'.upper()`

- [ ] `'hello'`
- [ ] `"hello"`
- [x] `'HELLO'`
- [ ] `'Hello'`

**Correct**  
The `upper()` method returns a copy of the string in which all case-based characters have been converted to uppercase.

7. What is the output of the following? `str(1 + 1)`

- [ ] `'11'`
- [ ] 2
- [x] `'2'`
- [ ] 11

**Correct**  
The argument first undergoes evaluation, resulting in `1 + 1 = 2`, followed by the conversion of the outcome into a string.

8. What is the output of the following? `"123".replace("12", "ab")`

- [ ] `'12c'`
- [x] `'ab3'`
- [ ] `'123ab'`
- [ ] `'ab'`

**Correct**  
The `replace()` method returns a copy of the string by substituting all instances of the old substring.

9. In Python 3, what data type does variable `x` hold after the operation: `x = 1 / 1`?

- [x] float
- [ ] char
- [ ] str
- [ ] int

**Correct**  
Regular division in Python 3 always produces a float as the result.

10. For the string `"Fun Python"` stored in a variable `x`, what will be the output of `x[0:5]`?

- [ ] `'Python'`
- [ ] `' Pytho'`
- [x] `'Fun P'`
- [ ] Error

**Correct**  
The code will return `'Fun P'`.