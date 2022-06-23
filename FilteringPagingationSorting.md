[Back To Index](README.md)

# Filtering, Pagination and Sorting

you can send a GET request that includes a sort/filter/page query.
An example:
```curl
GET /GetPosts

?sorts=     LikeCount,CommentCount,-created         // sort by likes, then comments, then descendingly by date created 
&filters=   LikeCount>10, Title@=awesome title,     // filter to posts with more than 10 likes, and a title that contains the phrase "awesome title"
&page=      1                                       // get the first page...
&pageSize=  10                                      // ...which contains 10 posts

```
More formally:
* `sorts` is a comma-delimited ordered list of property names to sort by. Adding a `-` before the name switches to sorting descendingly.
* `filters` is a comma-delimited list of `{Name}{Operator}{Value}` where
    * `{Name}` is the name of a property with the Sieve attribute or the name of a custom filter method for TEntity
        * You can also have multiple names (for OR logic) by enclosing them in brackets and using a pipe delimiter, eg. `(LikeCount|CommentCount)>10` asks if `LikeCount` or `CommentCount` is `>10`
    * `{Operator}` is one of the [Operators](#operators)
    * `{Value}` is the value to use for filtering
        * You can also have multiple values (for OR logic) by using a pipe delimiter, eg. `Title@=new|hot` will return posts with titles that contain the text "`new`" or "`hot`"
* `page` is the number of page to return
* `pageSize` is the number of items returned per page 

Notes:
* You can use backslashes to escape special characters and sequences:
    * commas: `Title@=some\,title` makes a match with "some,title"
    * pipes: `Title@=some\|title` makes a match with "some|title"
    * null values: `Title@=\null` will search for items with title equal to "null" (not a missing value, but "null"-string literally)
* You can have spaces anywhere except *within* `{Name}` or `{Operator}` fields
* If you need to look at the data before applying pagination (eg. get total count), use the optional paramters on `Apply` to defer pagination

