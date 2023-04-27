---
title: "Pagination, Filtering & Sorting"
---

{{< toc >}}

Some Endpoints allow you to paginate, filter and sort. Here is a brief explanation of how to use this functionality

## Query String Parameters
```
?sorts=     Name,ID,-created                 // sort by likes, then comments, then descendingly by date created 
&filters=   ID>10, Title@=awesome title,     // filter to posts with more than 10 likes, and a title that contains the phrase "awesome title"
&page=      1                                // get the first page...
&pageSize=  10  
```

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


## Operators

| Operator   | Meaning                  |
|------------|--------------------------|
| `==`       | Equals                   |
| `!=`       | Not equals               |
| `>`        | Greater than             |
| `<`        | Less than                |
| `>=`       | Greater than or equal to |
| `<=`       | Less than or equal to    |
| `@=`       | Contains                 |
| `_=`       | Starts with              |
| `_-=`      | Ends with                |
| `!@=`      | Does not Contains        |
| `!_=`      | Does not Starts with     |
| `!_-=`     | Does not Ends with       |
| `@=*`      | Case-insensitive string Contains |
| `_=*`      | Case-insensitive string Starts with |
| `_-=*`     | Case-insensitive string Ends with |
| `==*`      | Case-insensitive string Equals |
| `!=*`      | Case-insensitive string Not equals |
| `!@=*`     | Case-insensitive string does not Contains |
| `!_=*`     | Case-insensitive string does not Starts with |