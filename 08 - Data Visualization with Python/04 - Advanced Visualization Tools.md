# Waffle Charts
 - A waffle chart (also known as a square pie chart) visually represents categorical data through a grid of small squares, resembling a waffle;
 - Each category is assigned a unique color, and the number of squares allocated to each category corresponds to its proportional share of the total data count;
 - Waffle charts are an alternative to pie charts for displaying proportions;
 - Bellow is a basic example of a waffle chart using the `Matplotlib` and `Pywaffle` library:
 
    ```python
    import matplotlib.pyplot as plt
    from pywaffle import Waffle

    # Example data (values represent counts)
    values = [12, 22, 16, 38, 12]

    # Create a waffle chart
    plt.figure(FigureClass=Waffle, rows=5, values=values)
    plt.title("Waffle Chart Example")
    plt.show()
    ```

# Word Clouds

 - A word cloud is an image composed of words used in a particular text or subject, where the size of each word indicates its frequency or importance;
 - Word clouds visually highlight common words in a dataset;
 - They are useful for exploring large amounts of text and creating informative visualizations;
 - Bellow is a basic example of a waffle chart using the `Matplotlib` and `Wordcloud` library:

    ```python
    from wordcloud import WordCloud
    import matplotlib.pyplot as plt

    # Example text (replace with your own)
    text = "Python is amazing and versatile. DataCamp provides great tutorials."

    # Generate a word cloud
    wordcloud = WordCloud(width=800, height=400).generate(text)

    # Display the word cloud
    plt.figure(figsize=(10, 5))
    plt.imshow(wordcloud, interpolation='bilinear')
    plt.axis('off')
    plt.title("Word Cloud Example")
    plt.show()
    ```