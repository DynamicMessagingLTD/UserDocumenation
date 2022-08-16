[Back To Index](../Index.md)

# SMS Campaigns

## GET  

GET https://{API URL}/api/campaigns/sms

### Response

#### 200 OK

```json=
[
    {
        "id": 1234578
        "name":"Test Campaign",
        "startDate": "2025-10-01",
        "startTime":"09:00",
        "finishTime":"12:00",
        "runoverDays":[
            {
                "date":"2025-10-02",
                "startTime":"09:00",
                "finishTime":"12:00"
            }
        ],
        "sendType": 0,
        "numberOfMessages": 0,
        "smsMessage": "Hello this is an sms message",
        "smsSettings": 0,
        "optOutLink_Id": 0,
        "phoneNumberCount": 10
    },
    {
        ....
    }
]
```


## GET 

GET https://{API URL}/api/campaigns/sms/:Id


### Request

| Parameter | Type   | Description |
| --------- | ------ | ----------- |
| :Id       | string | ID of the   |


### Response

#### 200 OK

```json=

    {
        "id": 1234578
        "name":"Test Campaign",
        "startDate": "2025-10-01",
        "startTime":"09:00",
        "finishTime":"12:00",
        "sendType": 0,
        "numberOfMessages": 0,
        "smsMessage": "Hello this is an sms message",
        "smsSettings": 0,
        "optOutLink_Id": 0,
        "phoneNumbers":[
            {
                "number":"07722123456",
                "name":"ben",
                "parameters": [ 
                    {"value":"testing", "parameter":1}
                ]
            },
            {
                "number":"07722734716",
                "name":"Dave"
            }
	    ]
    }

```

## POST 

POST https://{API URL}/api/campaigns/sms

### Request

\* = Required

### Campaign Details

| Key                | Description                                                                                                                |
| ------------------ | -------------------------------------------------------------------------------------------------------------------------- |
| Name*              | Name of the campaign                                                                                                       |
| StartDate*         | Start date of the campaign                                                                                                 |
| StartTime*         | Start time of the campaign                                                                                                 |
| FinishTime*        | Finish time of the campaign                                                                                                |
| PhoneNumbers*      | One or more                                                                                                                |
| SendType*          | 0 = DistributeEvenly 1 = SendAllAtOnce 2 = SendPerHour (nb. Number of messages column is required to be used with this option)                                                                                                                                           |
| NumberOfMessage    | number of messages to send per hour, used with SendType = 2                                                                |
| SMSMessage*        | This is the SMS message content to be sent. Tokens such as {Name} {OptOut} {Parameter1} can be used. Please note text must be surrounded with " to ensure that the content is passed correctly. Please make sure that you check the SMS content length. 1 SMS = 160 characters (including spaces). You can go over this amount, but will be charged appropriately.                                                               |
| OptOutLink_Id      | ID ofthe optout link to use                                                                                                |



### Phone Number

| Key        | Description                                                                                                                    |
| ---------- | ------------------------------------------------------------------------------------------------------------------------------ |
| Name       | Name of the customer                                                                                                           |
| Parameters | Additional parameters that can be used within Call Flows (as Text-To-Speech) and SMS messages (as text) as variable parameters |

### Phone Parameter

| Key        | Description                                                                |
| ---------- | -------------------------------------------------------------------------- |
| Parameter* | 1 = Parameter1 <br/>2 = Parameter2 <br/> ......... <br /> up to Parameter9 |
| Value*     | The value held by the parameter                                            |

### Phone Parameter

| Key         | Description                    |
| ----------- | ------------------------------ |
| StartTime*  | The time the campaign starts   |
| FinishTime* | The time the campaign finishes |


```json=
{
  "name": "string",
  "startDate": "2022-06-07T06:26:58.796Z",
  "starttime": "string",
  "finishtime": "string",
  "sendType": 0,
  "numberOfMessages": 0,
  "smsMessage": "string",
  "smsSettings": 0,
  "optOutLink_Id": 0,
  "runOverDays": [
    {
      "date": "2022-06-07T06:26:58.796Z",
      "startTime": "string",
      "finishTime": "string"
    }
  ],
  "callFlow_Id": 0,
  "phoneNumbers": [
    {
      "number": "string",
      "name": "string",
      "parameters": [
        {
          "value": "string",
          "parameter": 0
        }
      ]
    }
  ]
}
```


### Response

```json=
    {
        "id": 122345
        "name":"Test Campaign",
        "startDate": "2025-10-01",
        "startTime":"09:00",
        "finishTime":"12:00",
        "runoverDays":[
            {
                "date":"2025-10-02",
                "startTime":"09:00",
                "finishTime":"12:00"
            }
        ],
        "sendType": 0,
        "numberOfMessages": 0,
        "smsMessage": "Hello this is an sms message",
        "smsSettings": 0,
        "optOutLink_Id": 0,
        "phoneNumbers":[
            {
                "number":"07722123456",
                "name":"ben",
                "parameters": [ 
                    {"value":"testing", "parameter":1}
                ]
            },
            {
                "number":"07722734716",
                "name":"Dave"
            }
	    ]
    }
```

#### 201 Created


## PUT

POST https://{API URL}/api/campaigns/sms/:Id


| Parameter | Type   | Description |
| --------- | ------ | ----------- |
| :Id       | string | ID of the   |

### Request


```json=
    {
        "name":"Test Campaign",
        "startDate": "2025-10-01",
        "startTime":"09:00",
        "finishTime":"12:00",
        "runoverDays":[
            {
                "date":"2025-10-02",
                "startTime":"09:00",
                "finishTime":"12:00"
            }
        ],
        "sendType": 0,
        "numberOfMessages": 0,
        "smsMessage": "Hello this is an sms message",
        "smsSettings": 0,
        "optOutLink_Id": 0,
        "phoneNumbers":[
            {
                "number":"07722123456",
                "name":"ben",
                "parameters": [ 
                    {"value":"testing", "parameter":1}
                ]
            },
            {
                "number":"07722734716",
                "name":"Dave"
            }
	    ]
    }
```

### Response

#### 204 No Content


#### 404 Not Found

## DELETE - Deletes Stored Number

POST https://{API URL}/api/campaigns/sms/:Id


### Request

| Parameter | Type   | Description |
| --------- | ------ | ----------- |
| :Id       | string | ID of the   |


### Response

#### 204 No Content

[Back To Index](../Index.md)