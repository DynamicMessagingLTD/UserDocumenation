# Campaigns

<div style="background-color:#faf5d4 !important">
❗For sending individual SMS please see <a href="../SMS_Messages">SMS_Messages</a>
</div>
<br/>
<div style="background-color:#faf5d4 !important">
  ❗ Opt-Out Links are currently under development. For the time being if you wish to include opt out links speak to a your Account Manager and they will be able set one up for you and give you the ID
</div>



{{< toc >}}

## GET 

GET https://{API URL}/api/Campaigns

** Pagination, Filtering and Sorting is supported see [Pagination, Filtering & Sorting](../pagination_filtering_sorting) for more information

### Response

#### 200 OK

```json
[
    "pageIndex": 1,
    "totalPages": 428,
    "totalRecords": 4274,
    "items": 
    [
      {
        "id": "string",
        "startDateTime": "2023-06-27T03:04:01.374Z",
        "sender": "string",
        "recipientCount": 0,
        "message": "string",
        "status": 0,
        "optOutLinkId": 0,
        "trackLinkUrl": "string",
      },
      {
        // ...
      }
    ]
]

```


## GET By ID

GET https://{API URL}/api/Campaigns/:Id


### Request

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :Id     | string     | ID of the  Campaign |


### Response

#### 200 OK

```json
{
    
 "id": "string",
 "startDateTime": "2023-06-27T03:04:01.374Z",
 "sender": "string",
 "recipientCount": 0,
 "message": "string",
 "status": 0,
 "optOutLinkId": 0,
 "trackLinkUrl": "string"
}
```

## GET Campaign Contacts

GET https://{API URL}/api/Campaigns/:Id/Contacts

** Pagination, Filtering and Sorting is supported see [Pagination, Filtering & Sorting](../pagination_filtering_sorting) for more information

### Request

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :Id     | string     | ID of the  Campaign |


### Response

#### 200 OK

```json
{
    "pageIndex": 1,
    "totalPages": 1,
    "totalRecords": 4,
    "items": [
        {
            "phoneNumber": "string",
            "name": "string",
            "custom1": "string",
            "custom2": "string",
            "id": "string"
        },
        {
            //....
        }
     ]
}
```

## POST  

POST https://{API URL}/api/Campaigns <br />
POST https://{API URL}/api/campaigns/:ignoreInvalidPhoneNumbers

### Request

| Parameter                  | Type    | Description                                                                                                                     |
| -------------------------- | ------- | ------------------------------------------------------------------------------------------------------------------------------- |
| :ignoreInvalidPhoneNumbers | boolean | if true all invalid contacts will be ignored, if false validation will occur on the phonenumbers and any errors will be returned |

### Request


```json
{
  "startDateTime": "2023-06-27T03:10:04.492Z",
  "sender": "string",
  "message": "string",
  "optOutLinkId": 0,
  "trackLinkUrl": "string",
  "contacts": [
    {
      "phoneNumber": "string",
      "name": "string",
      "custom1": "string",
      "custom2": "string",
      "contactGroupId": "3fa85f64-5717-4562-b3fc-2c963f66afa6"
    }
    {
        //....
    }
  ]
}

```


### Response

#### 201 Created

ID as string

    ```
        "abc123"
    ```
    

## PUT 

POST https://{API URL}/api/Campaigns/:id

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :Id     | string     | ID of the  Campaign |

### Request


```json
{
  "startDateTime": "2023-06-27T03:10:04.492Z",
  "sender": "string",
  "message": "string",
  "optOutLinkId": 0,
  "trackLinkUrl": "string"
}

```

### Response

#### 204 No Content


#### 404 Not Found

## DELETE

POST https://{API URL}/api/Campaigns/:Id


### Request

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :Id     | string     | ID of the  Campaign |


### Response

#### 204 No Content
