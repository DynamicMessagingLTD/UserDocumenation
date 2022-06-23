# Dynamic Messaging

## Available APIs

* [Dynamic Messaging Core API](CoreAPI/Index.md)
* [Dynamic Messaging SMS API](SMSAPI/Index.md)



## Authentication
Dynamic Messaging uses OAuth 2.0 Client Credentials Grant authentication for authentication between Solitics and DM. Further information on how this works and how to implement it can be found here:

https://oauth.net/2/

https://oauth.net/2/grant-types/client-credentials/

https://auth0.com/docs/api-auth/tutorials/client-credentials#ask-for-a-token

https://oauth.net/code/java/

### Authentication Settings

| Field | Value|
|-------|------|
|Access Token Url|See above (Token Provider)|
|Grant Type|client_credentials|
|Client ID|Ask Account Manager for details|
|Client Secret|Ask Account Manger for details|
|Scope|CoreAPI/SMSAPI|

| Service | Url |
|----------------|------------------|
|Token Provider |https://accounts.dynamicmessaging.co.uk/connect/token|


<!-- ## API
### Postman
We recommend using Postman for testing the api and for getting a feel for the results etc. Just import our collection into you postman application.

Further information about Postman and how to download it can be found at https://www.postman.com/ -->
