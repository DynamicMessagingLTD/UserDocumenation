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

#### 404 Not Found

## DELETE - Deletes Stored Number

POST https://{API URL}/api/PhoneNumberStorageItem/:storageId


### Request

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :storageId     | string     | ID of the stored item   |


### Response

#### 204 No Content