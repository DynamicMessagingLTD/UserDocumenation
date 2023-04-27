# SMS Messages

## GET 

GET https://{API URL}/api/SMSMessages

** Pagination, Filtering and Sorting is supported see [Pagination, Filtering & Sorting](../pagination_filtering_sorting) for more information

### Response

#### 200 OK

```json
{
    "pageIndex": 1,
    "totalPages": 1,
    "totalRecords": 109,
    "items": 
    [
      {
       "newId": "00000000-0000-0000-0000-000000000000",
       "id": 123456,
       "client_Id": 8,
       "dateCreated": "2023-01-91T00:00:00.000",
       "dateModified": "2023-01-91T00:00:00.000",
       "phoneNumber": "0123456789",
       "status": 0,
       "price": 0.000,
       "smsCount": 1,
       "dateReceived": "2023-01-91T00:00:00.000",
       "countryCode": "UK",
       "senderNumber": "DynamicM",
       "message": "hello world, this is a message",
       "campaignId": null
      }
      ,
      {
          .....
      }
    ]
}
```


## GET 

GET https://{API URL}/api/SMSMessages:Id


### Request

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :Id     | string     | ID of the Message  |


### Response

#### 200 OK

```json
    {
      "newId": "00000000-0000-0000-0000-000000000000",
      "id": 123456,
      "client_Id": 8,
      "dateCreated": "2023-01-91T00:00:00.000",
      "dateModified": "2023-01-91T00:00:00.000",
      "phoneNumber": "0123456789",
      "status": 0,
      "price": 0.000,
      "smsCount": 1,
      "dateReceived": "2023-01-91T00:00:00.000",
      "countryCode": "UK",
      "senderNumber": "DynamicM",
      "message": "hello world, this is a message",
      "campaignId": null
    }
```

## POST  

POST https://{API URL}/api/SMSMessages


### Request


```json

{
    "message":"string",
    "sender": "string",
    "phoneNumber": "string" // i.e.  "0123486"
}


```

### Response

#### 201 Created

Returns a Guild

example:

```
cbd21c29-a5d0-4103-ab25-fa70c220b239
```

[Back To Index](Index.md)