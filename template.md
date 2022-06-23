[Back To Index](Index.md)

#

## GET 

GET https://{API URL}/api/

### Response

#### 200 OK

```json=
[
    {
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

}
```

## POST  

POST https://{API URL}/api/

### Request


```json=

```


### Response

#### 201 Created


## PUT 

POST https://{API URL}/api/:id

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :Id     | string     | ID of the   |

### Request


```json=
{
    
}
```

### Response

#### 204 No Content


#### 404 Not Found

## DELETE - Deletes Stored Number

POST https://{API URL}/api/:Id


### Request

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :Id     | string     | ID of the   |


### Response

#### 204 No Content

[Back To Index](Index.md)