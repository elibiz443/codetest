# CODETEST

This is a code test whose intention is to:

* Output paragraphs of text with highlighting specified by a data array.

Must have:

1. Ruby class
2. String of text:

	Converted to HTML paragraphs. Double new-lines indicate new paragraphs.

3. Array of highlight hashes.
	
	Each hash has the shape { start: number, end: number, comment: string }

	Start and end are the indexes for which words are covered by the highlight, where "word" is simply defined as whitespace-separated chunks of characters.

	Each highlight should have a unique colour.

	Hovering over the highlight should show a tooltip with the comment as text.

	highlights should overlap.


Start Server with:
	
	rackup config.ru

Go to:
	
	http://localhost:4000

Congrats
