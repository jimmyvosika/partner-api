---
title: Authentication
layout: home
---

## API Authentication

The API requires authentication using a client ID and client secret to obtain an access token. The access token is then used to authenticate each request until the expiration time (3 hours at the time of writing). After expiration, a new access token needs to be obtained.

## Get a Token

To obtain an access token, you need to make a POST request to the `/token` endpoint with the client ID and client secret in the request body.

### POST Request to Obtain Token

```plaintext
POST /api/partner/v1/token
```

### Request Body
```javascript
{
  "client_id": "your_client_id",
  "client_secret": "your_client_secret"
}
```

### 200 Response
```javascript
{
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IlE...",
  "expires": "2024-08-08T12:34:56Z"
}
```

### 400 Response
```javascript
{
  "error": "Invalid client credentials"
}
```
----

[^1]: [It can take up to 10 minutes for changes to your site to publish after you push the changes to GitHub](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll#creating-your-site).

[Just the Docs]: https://just-the-docs.github.io/just-the-docs/
