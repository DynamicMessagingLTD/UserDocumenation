---
title: "Voice Campaigns"
---

{{< toc >}}

## GET - List of Campaigns 

GET https://{API URL}/api/campaigns/voice

### Response
#### 200 OK

Campaign with campaign ID

```json
[
    {
        "id": 12345,
        "name": "Test Campaign",
        "startDate": "2020-12-22T15:15:00",
        "starttime": "15:15",
        "finishtime": "15:20",
        "type": 1,
        "callFlow_Id": 54321,
        "campaignStatus": 0,
        "callCount": 123,
		"cli_id": 12321
    },
    {
		//...
    }
]
```

## GET - List of Campaigns with Pagination

GET https://{API URL}/api/campaigns/voice/p

** Pagination, Filtering and Sorting is supported see [Pagination, Filtering & Sorting](../../pagination_filtering_sorting) for more information

### Response
#### 200 OK

Campaign with campaign ID

```json

{
    "pageIndex": 1,
    "totalPages": 7,
    "totalRecords": 65,
    "items": [
         {
	   "id": 12345,
	   "name": "Test Campaign",
	   "startDate": "2020-12-22T15:15:00",
	   "starttime": "15:15",
	   "finishtime": "15:20",
	   "type": 1,
	   "callFlow_Id": 54321,
	   "campaignStatus": 0,
	   "callCount": 123,
	   "cli_id": 12321
	  },
	  {
		//...
	  }
	]
}
```

## GET - Campaign By ID 

GET https://{API URL}/api/campaigns/voice/:id 

| Parameter | Type    | Default Value | Description |
| --------- | ------- | ------------- | ----------- |
| :id       | integer |               | Campaign Id |

### Response
#### 200 OK

```json
{
    "id": 278291,
    "name": "Test Campaign",
    "startDate": "2022-02-12T12:00:00",
    "starttime": "12:00",
    "finishtime": "14:00",
    "type": 1,
    "callFlow_Id": 12345,
    "campaignStatus": 5,
    "callCount": 4004,
    "cli_Id": 54321,
    "attempts": [
        {
            "interval": 0,
            "attemptNumber": 1
        }
    ],
    "runOverDays": [
        {
            "date":"2022-02-12",
            "startTime":"09:00",
            "finishTime":"12:00"
        }
    ]
    
}
```

## GET - Phone Numbers with Call/SMS Outcomes for Campaign

GET https://{API URL}/api/campaigns/voice/:id/phonenumbers <br />
GET https://{API URL}/api/campaigns/voice/:id/phonenumbers/:pageNumber <br />
GET https://{API URL}/api/campaigns/voice/:id/phonenumbers/:pageSize/:pageNumber

| Parameter   | Type    | Default Value | Description                         |
| ----------- | ------- | ------------- | ----------------------------------- |
| :id         | integer |               | Campaign ID                         |
| :pageNumber | integer | 1             |                                     |
| :pageSize   | integer | 10            | How many results to return per page |

### Response
#### 200 OK

```json
[
    {
        "id": 1234,
        "number": "07712345678",
        "name": "Jon Smith",
        "parameters": [],
        "calls": [
            {
                "startTime": "2022-02-12T12:16:15.637",
                "endTime": "2022-02-12T12:17:04.977",
                "stage": 12,
                "outcome": 5,
                "userInput": "",
                "price": 0.433,
                "isTransferCall": false,
                "attemptNumber": 1,
                "secondsDuration": 50
            }
        ]
    }
]
```

## POST - Creates Campaign

POST https://{API URL}/api/campaigns/voice <br />
POST https://{API URL}/api/campaigns/voice/:ignoreInvalidPhoneNumbers

### Request

| Parameter                  | Type    | Description                                                                                                                     |
| -------------------------- | ------- | ------------------------------------------------------------------------------------------------------------------------------- |
| :ignoreInvalidPhoneNumbers | boolean | if true all invalid numbers will be ignored, if false validation will occur on the phonenumbers and any errors will be returned |


```json
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
	"callflow_Id":1,
	"defaultCli_Id":1,
	// This is not required, if left out will default to 1 attempt
	"attempts":[ 
		{"interval":0, "attemptNumber":1}, 
		{"interval":15, "attemptNumber":2},
		{"interval":30, "attemptNumber":3}
	],
	"answerMachineDetected":0,
	"smsOnBusy":1,
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

#### 201 Created

Campaign with campaign ID

```json
{
	"id": 1234578,
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
	"callflow_Id":1,
	"defaultCli_Id":1,
	"attempts":[
		{"interval":0, "attemptNumber":1}, 
		{"interval":15, "attemptNumber":2},
		{"interval":30, "attemptNumber":3}
	],
	"answerMachineDetected":0,
	"smsOnBusy":1,
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

\* = Required

### Campaign Details

| Key                | Validaton                                     | Description                                                                                                                |
| ------------------ | --------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| Name*              | * Required <br/> * Unique<br/> * Max 100 Chars | Name for the campaign                                                                                                      |
| StartDate*         | * Required <br/> * A future date              | Start date of the campaign                                                                                                 |
| StartTime*         | * Required </br>* A future time               | Start time of the campaign                                                                                                 |
| FinishTime*        | * Required </br>* After the StartTime         | Finish time of the campaign                                                                                                |
| RunoverDays        |                                               | Zero or more                                                                                                               |
| CallFlow_Id*       | * Required                                    | Must match a call flow ID in the system belonging to the same client. Please ask for the relevant call flow IDs.           |
| defaultCli_Id*     | * Required                                    | Must be an existing CLI ID linked to the client. Please ask for the relevant CLI IDs.                                      |
| Attempts           |                                               | How many call attempts to a single phone number within a campaign and the time interval between each attempt (in minutes). |
| AnswerPhoneMessage | * Required                                    | <br/><ul><li>0 = Never</li><li>1 = OnTheFirstCall</li><li>2 = OnTheLastCall</li></ul>                                      |
| SMSOnBusy          | * Required                                    | <br/><ul><li>0 = Never</li><li>1 = OnTheFirstCall</li><li>2 = OnTheLastCall</li></ul>                                      |
| PhoneNumbers*      | * Required                                    | One or more                                                                                                                |

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


### Attempt

| Key           | Description                                                    |
| ------------- | -------------------------------------------------------------- |
| Interval*     | The amount of time before the next attempt (in minutes)        |
| AttemptNumber | Number of attempts (increases by a value of 1 for each attempt |
