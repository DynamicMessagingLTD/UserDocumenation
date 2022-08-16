[Back To Index](Index.md)

# CLI

## GET 

GET https://{API URL}/api/CLI/

### Response

#### 200 OK

```json=
[
    {
    "number": "string",
    "isUsedForOptimove": true,
    "isOptimoveDefault": true,
    "description": "string"
    },
    {
        .....
    }
]
```

## GET  

GET https://{API URL}/api/CLI/:Id


### Request

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :Id     | string     | ID of the  CLI |


### Response

#### 200 OK

```json=
{
    "number": "string",
    "isUsedForOptimove": true,
    "isOptimoveDefault": true,
    "description": "string"
}
```

## POST 

POST https://{API URL}/api/CLI/

### Request


```json=
{
    "number": "string",
    "isUsedForOptimove": true,
    "isOptimoveDefault": true,
    "description": "string"
}
```


### Response

#### 201 Created

```json=
{
    "id": 0
    "number": "string",
    "isUsedForOptimove": true,
    "isOptimoveDefault": true,
    "description": "string"
}
```

## PUT 

POST https://{API URL}/api/CLI/:id

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :Id     | string     | ID of the  CLI |

### Request


```json=
{
    "number": "string",
    "isUsedForOptimove": true,
    "isOptimoveDefault": true,
    "description": "string"
}
```

### Response

#### 204 No Content


#### 404 Not Found

## DELETE - Deletes Stored Number

POST https://{API URL}/api/CLI/:Id


### Request

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :Id     | string     | ID of the  CLI |


### Response

#### 204 No Content

[Back To Index](Index.md)