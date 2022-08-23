## POST - Creates Campaign

POST https://{API URL}/api/campaigns/voice <br />
POST https://{API URL}/api/campaigns/voice/:ignoreInvalidPhoneNumbers

### Request

| Parameter                 | Type    | Description                                                                                                                     |
| ------------------------- | ------- | ------------------------------------------------------------------------------------------------------------------------------- |
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
	"cli_Id":1,
	"attempts":[
		{"interval":15, "attemptNumber":1}, 
		{"interval":60, "attemptNumber":2},
		{"interval":120, "attemptNumber":3}
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
	"callflow_Id":1,
	"cli_Id":1,
	"attempts":[
		{"interval":15, "attemptNumber":1}, 
		{"interval":60, "attemptNumber":2},
		{"interval":120, "attemptNumber":3}
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

| Key                | Description                                                                                                                |
| ------------------ | -------------------------------------------------------------------------------------------------------------------------- |
| StartDate*         | Start date of the campaign                                                                                                 |
| StartTime*         | Start time of the campaign                                                                                                 |
| FinishTime*        | Finish time of the campaign                                                                                                |
| RunoverDays        | Zero or more                                                                                                               |
| CallFlow_Id*       | Must match a call flow ID in the system belonging to the same client. Please ask for the relevant call flow IDs.           |
| Cli_Id*            | Must be an existing CLI ID linked to the client. Please ask for the relevant CLI IDs.                                      |
| Attempts           | How many call attempts to a single phone number within a campaign and the time interval between each attempt (in minutes). |
| AnswerPhoneMessage | <br/><ul><li>0 = Never</li><li>1 = OnTheFirstCall</li><li>2 = OnTheLastCall</li></ul>                                      |
| SMSOnBusy          | <br/><ul><li>0 = Never</li><li>1 = OnTheFirstCall</li><li>2 = OnTheLastCall</li></ul>                                      |
| PhoneNumbers*      | One or more                                                                                                                |

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


