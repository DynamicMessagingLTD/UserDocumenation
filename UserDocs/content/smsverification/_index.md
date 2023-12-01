---
title: "SMS Verification"
---

{{< toc-tree >}}


```
❗This API is for OTP messaging only
```

# Postman collection

[Postman collection](/files/dynamicmessaging.smsverification.api.postman_collection.json)

# Overview of process

Import the Postman collection above. It will create a DynamicMessaging.SMSVerification.API collection with three methods in it, **verify**, **respond**, and **validate** and authentication settings in the collection root.

## Setting up the environment

To set this in Postman, click the Edit Environment button to the right of the environments:

![Environment dropdown image](/img/smsverification-settingupenvironmentdropdown.png)

and create the following variables

![Environment image](/img/smsverification-settingupenvironment.png)

## Setting up the authentication

### Authentication
Dynamic Messaging uses JWT Bearer Tokens for Authentication. These are referred to as API keys in the Voice Platform website, and you can find them in the API Keys section of the Client website.

You can create a new API Key if you have none already, and copy the Token to use below.

![Bearer token section](/img/bearertoken.png)

You can also pass this using a header or on the querystring directly. In this case the header or querystring parameter name should be "api-key".

![Header section](/img/headerapikey.png)

#### Postman

We recommend using Postman for testing the api and for getting a feel for the results etc. Just import our collection into you postman application.

Further information about Postman and how to download it can be found at https://www.postman.com/

## Using the API

The flow to test the sequence in Postman (and this is the sequence you’ll need to mimic in your front end) is as follows:

1. Go to the root and click Get New Access Token, then Proceed once it authenticates correctly, then Use Token
2. Click on the /api/smsverify/verify method, and enter the phone number in the body json PhoneNumber field, with country code but no plus symbol and click Send
     * You will receive a 200 status response if it works, along with a numerical id in the response body. This is the SMS id and is useful for logging reasons, but not crucial to keep
3. An SMS will be sent to the number provided from DMVerif with the text “Your code is XXXXXX.” XXXXXX is a six digit number.
4. Click on the /api/smsverify/respond method, and enter the phone number from step 2 in PhoneNumber, along with the code received via SMS in the Token field. Click Send.
     * You will receive a 200 status response if it works, along with a GUID in the response body. This must be kept as it will be used for the Validate step.
     * You will receive a 404 status response if the PhoneNumber and Token pair were not found. There is a time limit of 5 minutes from the point the SMS was marked DELIVERED for the response to be made.
5. Click on the /api/smsverify/validate method, and enter the phone number from step 2 in PhoneNumber along with the GUID received in the body of a successful 200 response for step 4 in ValidationCode, and click Send.
     * You will receive a 200 status response if it works, along with a complex object in the json body. It contains two fields: number and dialCode. Because of the way the SMS is saved and retrieved, it gets split into the two constituent parts.
