```
❗This API is for marketing messaging only
```

## Authentication
Dynamic Messaging uses OAuth 2.0 Client Credentials Grant authentication for authentication. Further information on how this works and how to implement it can be found here:

https://oauth.net/2/

https://oauth.net/2/grant-types/client-credentials/

https://auth0.com/docs/api-auth/tutorials/client-credentials#ask-for-a-token

https://oauth.net/code/java/

### Authentication Settings

| Field            | Value                           |
| ---------------- | ------------------------------- |
| Access Token Url | See above (Token Provider)      |
| Grant Type       | client_credentials              |
| Client ID        | Ask Account Manager for details |
| Client Secret    | Ask Account Manger for details  |
| Scope            | SMSAPI                  |

| Service        | Url                                                   |
| -------------- | ----------------------------------------------------- |
| Token Provider |  https://accounts2.dynamicmessaging.co.uk/realms/DynamicMessaging/protocol/openid-connect/token |



#### Example Postman

![Postman Login Example](/img/postman_auth.png)
<!-- ## API
### Postman
We recommend using Postman for testing the api and for getting a feel for the results etc. Just import our collection into you postman application.

Further information about Postman and how to download it can be found at https://www.postman.com/ -->