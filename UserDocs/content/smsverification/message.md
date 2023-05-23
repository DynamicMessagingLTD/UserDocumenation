
## POST 

```
❗This API is for OTP messaging only
```

POST https://{API URL}/api/smsverify/message


### Body
```json
{
  "phoneNumber": "XXXXXXXXXXXX",
  "sender": "YYYYYYYYYYY",
  "message": "ZZ 123456 ZZZZ"
}
```
PhoneNumber is the phone number with country code (no plus sign).

Sender is a 11-character max length string to represent the Sender ID. It is optional. If omitted the SenderID will be "DMVerif".

Message is a 160-character max length string to represent the text of the SMS sent. It is mandatory and must include a 6 digit number within the text.

### Response

#### 200 OK

If the SMS was successfully sent, the SMS id is returned in the response body


### View full flow at [SMS Verification Overview](/smsverification)