[Back To Index](../Index.md)

# Voice
 
## GET - Retrieves a list of campaigns

GET https://{API URL}/api/campaign/voice

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
        "callflow_Id":1,
        "cli_Id":1,
        "attempts":[
            {"interval":15, "attemptNumber":1}, 
            {"interval":60, "attemptNumber":2},
            {"interval":120, "attemptNumber":3}
        ],
        "answerMachineDetected":0,
        "smsOnBusy":1,
        "phoneNumberCount": 10
    },
    {
        ....
    }
]
```


## GET - Retrieves a single campaign

GET https://{API URL}//api/api/campaign/voice/:Id


### Request

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :Id     | string    | ID of the  campaign |


### Response

#### 200 OK

```json=
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

## POST - Creates Campaign

POST https://{API URL}/api/campaign/voice
### Request

\* = Required

### Campaign Details

| Key | Description |
| --- | ----------- |
|  StartDate*  |       Start date of the campaign      |
|  StartTime*   |       Start time of the campaign      |
|  FinishTime*   |       Finish time of the campaign     |
|   RunoverDays  |        Zero or more     |
|  CallFlow_Id*   |       Must match a call flow ID in the system belonging to the same client. Please ask for the relevant call flow IDs.      |
|  Cli_Id*   |       Must be an existing CLI ID linked to the client. Please ask for the relevant CLI IDs.      |
|  Attempts   |      How many call attempts to a single phone number within a campaign and the time interval between each attempt (in minutes).       |
|  AnswerPhoneMessage   |       <br/><ul><li>0 = Never</li><li>1 = OnTheFirstCall</li><li>2 = OnTheLastCall</li></ul>      |
|   SMSOnBusy  |    <br/><ul><li>0 = Never</li><li>1 = OnTheFirstCall</li><li>2 = OnTheLastCall</li></ul>    |
|PhoneNumbers*|One or more|

### Phone Number

| Key | Description |
| --- | ----------- |
|    Name |      Name of the customer      |
|   Parameters  |      	Additional parameters that can be used within Call Flows (as Text-To-Speech) and SMS messages (as text) as variable parameters       |

### Phone Parameter

| Key | Description |
| --- | ----------- |
|    Parameter* | 1 = Parameter1 <br/>2 = Parameter2 <br/> ......... <br /> up to Parameter9     |
|   Value*  |      The value held by the parameter       |

### Phone Parameter

| Key | Description |
| --- | ----------- |
|  StartTime*   |       The time the campaign starts      |
|  FinishTime*   |        The time the campaign finishes     |


### Attempt

| Key | Description |
| --- | ----------- |
|  Interval*   |         The amount of time before the next attempt (in minutes)    |
|  AttemptNumber   |        Number of attempts (increases by a value of 1 for each attempt|

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

```json=
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

## PUT - Updates Campaign

PUT https://{API URL}/api/campaign/voice/{id}

### Request

| Parameter | Type  | Description |
| ------- | -------- | -------- |
|  id     | string     | ID of the stored item   |


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

#### 204 No Content


#### 404 Not Found

## DELETE - Deletes Campaign

POST https://{API URL}/api/campaign/voice/:Id


### Request

| Parameter | Type  | Description |
| -------- | -------- | -------- |
| :Id     | string     | ID of the campaign  |


### Response

#### 204 No Content


## Related Values

### Outcomes
<table data-layout=3D"default" class=3D"confluenceTable">
<tbody>
<tr>
<td class=3D"confluenceTd"><p>Answered </p></td>
<td class=3D"confluenceTd"><p>1</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>Unobtainable</p></td>
<td class=3D"confluenceTd"><p>2</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>Busy</p></td>
<td class=3D"confluenceTd"><p>3</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>AnswerphoneMessageNotLeft </p></td>
<td class=3D"confluenceTd"><p>4</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>AnswerphoneMessageLeft </p></td>
<td class=3D"confluenceTd"><p>5</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>NoAnswer </p></td>
<td class=3D"confluenceTd"><p>6</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>Overflow </p></td>
<td class=3D"confluenceTd"><p>7</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>OutOfTime</p></td>
<td class=3D"confluenceTd"><p>8</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>Fax </p></td>
<td class=3D"confluenceTd"><p>9</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>Unknown </p></td>
<td class=3D"confluenceTd"><p>10</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>ExcludedNumber </p></td>
<td class=3D"confluenceTd"><p>11</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>NoConnection </p></td>
<td class=3D"confluenceTd"><p>12</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>InvalidNumber </p></td>
<td class=3D"confluenceTd"><p>13</p></td>
</tr>
</tbody>
</table>
</div>
<p></p>


### Stage

<div class=3D"table-wrap">
<table data-layout=3D"default" class=3D"confluenceTable">
<tbody>
<tr>
<td class=3D"confluenceTd"><p>None</p></td>
<td class=3D"confluenceTd"><p>0</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>CorrectCallee</p></td>
<td class=3D"confluenceTd"><p>1</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>WrongCallee </p></td>
<td class=3D"confluenceTd"><p>2</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>CallDeclined </p></td>
<td class=3D"confluenceTd"><p>3</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>CorrectColleeHungUp </p></td>
<td class=3D"confluenceTd"><p>4</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>WrongCalleeHungUp </p></td>
<td class=3D"confluenceTd"><p>5</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>CallCenterHungUp </p></td>
<td class=3D"confluenceTd"><p>6</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>CalleeTransferRequest </p></td>
<td class=3D"confluenceTd"><p>7</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>CalleeTransferAccepted </p></td>
<td class=3D"confluenceTd"><p>8</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>Excluded </p></td>
<td class=3D"confluenceTd"><p>9</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>Answered </p></td>
<td class=3D"confluenceTd"><p>10</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>AnswerphoneMessageNotLeft </p></td>
<td class=3D"confluenceTd"><p>11</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>AnswerphoneMessageLeft </p></td>
<td class=3D"confluenceTd"><p>12</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>OptIn</p></td>
<td class=3D"confluenceTd"><p>13</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>OptOut</p></td>
<td class=3D"confluenceTd"><p>14</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>WrongCalleeTransferRequested </p></td>
<td class=3D"confluenceTd"><p>15</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>CallTransferredToCallCentre </p></td>
<td class=3D"confluenceTd"><p>16</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>TransferredToPaymentLine </p></td>
<td class=3D"confluenceTd"><p>17</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>CallerRequestedCallBack </p></td>
<td class=3D"confluenceTd"><p>18</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>WrongCalleeTransferAccepted </p></td>
<td class=3D"confluenceTd"><p>19</p></td>
</tr>
<tr>
<td class=3D"confluenceTd"><p>CallDropped </p></td>
<td class=3D"confluenceTd"><p>20</p></td>
</tr>
</tbody>
</table>

[Back To Index](../Index.md)