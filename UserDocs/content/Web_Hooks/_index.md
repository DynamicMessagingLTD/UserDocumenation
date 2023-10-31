## Add/Editing Web Hook Url

<div style="background-color:#faf5d4 !important">
❗Currently we don't support adding new webhook urls via the API, please contact a member of DM staff to Add/Change the Url to your Web Hooks endpoint
</div>

## Voice Call Json Example

```=json

{
    "webHookType": 0,
    "data":{
        "clientId":0,
        "outCome":0,
        "stage":0,
        "startTime":"2023-06-27T03:04:01.374Z",
        "endTime":"2023-06-27T03:04:01.374Z",
        "userInput":"string",
        "campaignId":""
        "phoneNumber":""
    }
}

```

## Value Types

[Go To Campaign Value Type](../Voice_Platform/campaigns/CampaingValueTypes#call)


## SMS Call Json Example

```=json

{
    "webHookType": 1,
    "data":{
        "clientId":0,
        "Id":0,
        "phoneNumberId":"",
        "phoneNumber":"",
        "parts":0,
        "dateCreated":"2023-06-27T03:04:01.374Z",
        "lastUpdated":"2023-06-27T03:04:01.374Z",
        "price": 0.0,
        "statusCode":0
    }
}

```

## Value Types

### Status Codes

| Value | Description |
| ----- | ----------- |
| 0 | Sent |
| 1 | Delivered |
| 2 | Accepted |
| 3 | Expired |
| 4 | Deleted |
| 5 | Undeliverable |
| 6 | Unknown |
| 7 | Rejected |
| 8,9,10 | Other |
| 34 | RejectedInvalidRecipient |
| 1000 | FailedInsufficientCredit |

