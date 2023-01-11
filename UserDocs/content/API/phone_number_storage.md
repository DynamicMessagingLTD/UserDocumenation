---
title: "Phonenumber Storage"
date: 2022-08-19T09:06:26Z
---

## POST - Add New Number

POST https://{API URL}/api/PhoneNumberStorageItem

### Request


```json
{
    "storageID":"{storageID}",
    "number":"{number}",
    "parameter1":"{string}",
    "parameter2":"{string}",
    "parameter3":"{string}"
}
```


### Response

#### 201 Created


## PUT - Update Stored Number

POST https://{API URL}/api/PhoneNumberStorageItem

### Request


```json
{
    "storageID":"{storageID}",
    "number":"{number}",
    "parameter1":"{string}",
    "parameter2":"{string}",
    "parameter3":"{string}"
}
```

### Response

#### 204 No Content


## GET - Retrieve Single Stored Number

GET https://{API URL}//api/PhoneNumberStorageItem/:storageId


### Request

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :storageId     | string     | ID of the stored item   |


### Response

#### 200 OK

```json
{
    "storageID":"{storageID}",
    "number":"{number}",
    "parameter1":"{string}",
    "parameter2":"{string}",
    "parameter3":"{string}"
}
```

## GET - Retrieves A Pagintated List of Stored Numbers

GET https://{API URL}//api/PhoneNumberStorageItem/:pageSize/:pageIndex

### Request

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :pageSize    | int     | Number of records to return on each page   |
| :pageIndex    | int     | The page index   |

### Response

#### 200 OK

```json
{
    "pageIndex": 1,
    "totalPages": 20,
    "totalRecords": 200000,
    "items": [
        {
            "storageID":"{storageID}",
            "number":"{number}",
            "parameter1":"{string}",
            "parameter2":"{string}",
            "parameter3":"{string}"
        },
        {
            ....
        }
    ]
}

```

#### 400 Bad Request

```json
{
    "pageSize": [
        "can not exceed 10000 records"
    ]
}
```

## DELETE - Deletes Stored Number

POST https://{API URL}/api/PhoneNumberStorageItem/:storageId


### Request

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :storageId     | string     | ID of the stored item   |


### Response

#### 204 No Content