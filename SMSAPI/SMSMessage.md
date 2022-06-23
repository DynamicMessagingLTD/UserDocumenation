[Back To SMS Index](Index.md#endpoints)

# SMSMessage

## GET 

GET https://{API URL}/api/SMSMessage

- - - 
\*  [Filtering/Pagination/Sorting](../FilteringPagingationSorting.md)
- - -

### Response

#### 200 OK

```json=
[
    {
        "ID": int,
        "Sender": "string",
        "PhoneNumber": "string",
        "Status": int,
        "Message": "string",
        "SMSCount": int?,
        "DateSent":"string"
        "DateReceived": "string",
        "Price": decmial?,
    },
    {
        .....
    }
]

```


## GET 

GET https://{API URL}/api/:Id


### Request

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :Id     | string     | ID of the   |


### Response

#### 200 OK

```json=
{
    "ID": int,
    "Sender": "string",
    "PhoneNumber": "string",
    "Status": int,
    "Message": "string",
    "SMSCount": int,
    "DateReceived": "string",
    "Price": decmial
}
```

## POST  

POST https://{API URL}/api/

### Request


```json=

{
    "Sender": "string",
    "PhoneNumber": "string",
    "Message": "string"
}

```


### Response

#### 201 Created 

Returns SMS ID

```
1234

```

[Back To SMS Index](Index.md#endpoints)