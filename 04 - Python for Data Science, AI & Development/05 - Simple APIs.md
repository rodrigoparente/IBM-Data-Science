# Application Program Interface 

An Application Programming Interface (API) is a set of rules and protocols that allows different software applications to communicate with each other. It defines the methods and data formats that applications can use to request and exchange information. APIs enable developers to integrate various services and functionalities into their applications without having to build them from scratch.

**API libraries**

API librarires are collections of pre-written code that provide a convenient way to interact with APIs. These libraries abstract the complexities of making API calls, handling responses, and managing errors, allowing developers to focus on building their applications. They often include functions and methods that correspond to specific API endpoints, making it easier to perform common tasks.

**REST (Representational State Transfer) APIs** 

REST APIs are a type of API that follows a set of architectural principles for designing networked applications. REST APIs use standard HTTP methods (GET, POST, PUT, DELETE) to perform operations on resources, which are identified by URLs. They are stateless, meaning each request from a client to a server must contain all the information needed to understand and process the request.

In a REST API, a **Request** is made by a client to a server to perform an action, such as retrieving data or updating a resource. The request includes an HTTP method, a URL, headers, and sometimes a body with additional data. The server processes the request and sends back a **Response**, which includes a status code indicating the result of the request, headers with metadata, and a body containing the requested data or an error message.

**Example with PyCoinGecko**

PyCoinGecko is a Python library that provides a simple interface to interact with the CoinGecko API, which offers cryptocurrency data. Here's an example of how to use PyCoinGecko to get the current price of Bitcoin in USD.

First, install the library:
```bash
pip install pycoingecko
```

Then, use the following Python code:
```python
from pycoingecko import CoinGeckoAPI

# Initialize the CoinGeckoAPI client
cg = CoinGeckoAPI()

# Make a request to get the price of Bitcoin in USD
response = cg.get_price(ids='bitcoin', vs_currencies='usd')

# Print the response
print(response)
```

In this example, the `get_price` method sends a GET request to the CoinGecko API's `/simple/price` endpoint with the parameters `ids='bitcoin'` and `vs_currencies='usd'`. The API responds with the current price of Bitcoin in USD, which is then printed to the console.

# REST API & HTTP Requests

 - REST APIs use the HTTP protocol to transfer information over the web;
 - They operate by sending requests via HTTP messages, often containing JSON files;
 - When accessing a webpage, your browser sends an HTTP request to the server hosting the page, typically looking for "index.html";
 - If successful, the server responds with the requested resource, including details like type and length;
 - Resources on a web server can include HTML files, images, and text files;
 - A URL (Uniform Resource Locator) is used to locate these resources, consisting of three parts: 
    - the scheme (e.g., http://);
    - the internet address (e.g., www.ibm.com);
    - the route (e.g., /images/IDSNlogo.png).
 - The request and response process involves the client sending an HTTP request, which includes a method (e.g., GET for retrieving a file);
 - The server responds with a status code (e.g., 200 for success) and the requested resource;
 - Status codes indicate the result of the request, with 100s for informational responses, 200s for success, 400s for client errors, and 500s for server errors;
 - HTTP methods specify the action to be performed, such as GET for retrieving data or POST for sending data;
 - Python can be used to apply these methods to interact with servers, by using the `requests` library.

# HTML for Web Scraping

 - There are useful data on web pages includes real estate prices and coding solutions; 
 - Understanding HTML allows Python to extract information from web pages;
 - HTML consists of tags that tell the browser how to display content; 
 - Key tags include `DOCTYPE html`, `html`, `head`, and `body`;
 - Tags like `h3` (heading) and `p` (paragraph) enclose data such as player names and salaries;
 - HTML documents form a tree structure with nested tags representing parent-child relationships;
 - HTML tables use `table`, `tr` (row), and `td` (cell) tags to organize data.

# Web Scraping 

 - Web scraping automates the extraction of information from websites, saving time compared to manual copying and pasting;
 - Using Python with the Requests and Beautiful Soup modules, you can quickly scrape data;
 - Beautiful Soup uses tree-like objects to parse HTML, allowing navigation through tags and their attributes;
 - The `find_all` method filters tags based on name, attributes, or text, returning a list-like iterable of matching tags.

# Summary

 - Simple APIs in Python are application programming interfaces that provide straightforward and easy-to-use methods for interacting with services, libraries, or data, often with minimal configuration or complexity;
 - Rest APIs allow you to communicate through the internet, taking advantage of resources like storage, access more data, AI algorithms, and so on;
 - Web scraping in Python involves extracting and parsing data from websites to gather information for various applications, using libraries like Beautiful Soup and requests.

# Glossary