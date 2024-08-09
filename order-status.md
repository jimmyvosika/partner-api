---
title: Place Order
layout: default
---

## API Authentication

To get an order's status using the Partner API, include the Authorization header in your HTTP request. 
The Authorization header should contain a Bearer token, which is necessary to authenticate your search requests.

## Usage
This action will show you an order's various timestamps of events, and also any packages that have been shipped including the items within.
You will only be able to see orders that you've placed with your partner account.

### GET Request to retrieve order
```plaintext
GET /api/partner/v1/order/{order_reference} HTTP/1.1
Host: base.shopjimmy.com
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IlE...
Content-Type: application/json
```

### 200 Response
```js
{
  "reference": "PAPI3ZAABG36JWR",
  "created_at": "2024-08-07T13:24:02.000Z",
  "shipped_at": "2024-08-08T21:28:00.000Z",
  "canceled_at": null,
  "packages": [
    {
      "created_at": "2024-08-08T21:28:00.000Z",
      "dimensions": "17x7x1",
      "weight_lbs": 0.85,
      "carrier": "usps",
      "service": "US-PM",
      "tracking_number": "9405511105501325283592",
      "cost_usd": 8.72,
      "destination_name": "Annie Mall",
      "destination_address_1": "2300 West Highway 13",
      "destination_address_2": "",
      "destination_city": "Burnsville",
      "destination_state": "MN",
      "destination_postcode": "55337",
      "destination_country": "US",
      "destination_telephone": "877-881-6492",
      "destination_business": "ShopJimmy.com",
      "items": [
        {
          "listing_id": 438195,
          "sku": "sj-62661-2",
          "qty": 1,
          "serial": null
        }
      ]
    }
  ]
}
```

### 400 Response
```js
{
  "error": "Validation failed ... reason ..."
}
```

### 500 Response
```js
{
  "error": "There was an internal server error. Please contact administrator."
}
```
