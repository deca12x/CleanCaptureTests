# CleanCaptureTests
I am trying to create an app to compare two websites for plaigiarism
I would like the end problem to be callable like this:

return method(website_1, website_2, number_of_words)

...where the first two arguments are instances of a website class, which has an instance variable for url and another for all visible pages of the website
... the third arguments informs the app of how many words in a row must match

The output would return all of the times where the two websites matched x number of words in their text.


I have already successfully created the methods to scrape the websites and creeate a hash that looks like this {page_name: "string contents of all p tags"}
I have also created some methods to compare two hashes like the one outputted here, but the outputs will be overlapping and don't account for matching more words than the number set in the argument.
This was when someone suggested creating a Website class, which I did not have initially, so I have been moving everything around, so apologies if it's all very confusing. I also created a Compare class, but I'm not sure I need one?
