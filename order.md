---
title: Place Order
layout: default
---

## API Authentication

To perform search operations using the Partner API, include the Authorization header in your HTTP request. 
The Authorization header should contain a Bearer token, which is necessary to authenticate your search requests.

## Usage


### POST Request to place order
```plaintext
POST /api/partner/v1/order HTTP/1.1
Host: base.shopjimmy.com
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IlE...
Content-Type: application/json
```

### Body JSON definition
```js
{
  "po_number": "string",
  "ship_method": "string",
  "delivery_instructions": "string",
  "destination_email": "user@example.com",
  "destination_name": "string",
  "destination_address_1": "string",
  "destination_address_2": "string",
  "destination_city": "string",
  "destination_state": "MN",
  "destination_postcode": "string",
  "destination_country": "US",
  "destination_telephone": "string",
  "destination_business": "string",
  "items": [
    {
      "listing_id": 0,
      "qty": 0
    }
  ]
}
```

### 200 Response
```js
{
  "reference": "PAPI3ZAABG36JWR"
}
```

### 500 Response
```js
{
  "error": "There was an internal server error. Please contact administrator."
}
```
