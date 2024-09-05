1. After you performed a GET request on the Space X API and convert the response to a dataframe using `pd.json_normalize`, what year is located in the first row in the column `static_fire_date_utc`?

- 2006

2. Using the API, how many Falcon 9 launches are there after we remove Falcon 1 launches?

- 90

3. At the end of the API data collection process, how many missing values are there for the column `landingPad`?

- 26

4. After making a request to the Falcon9 Launch Wiki page and creating a BeautifulSoup object, what is the output of:

```python
soup.title
```

- [ ] `<td colspan="9"> First flight of Falcon 9 v1.0. <sup class="reference" id="cite_ref-sfn20100604_17-0">`
- [ ] `<table class="wikitable plainrowheaders collapsible" style="width: 100%;">`
- [x] `<title> List of Falcon 9 and Falcon Heavy launches - Wikipedia </title>`