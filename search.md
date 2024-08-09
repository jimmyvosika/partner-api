---
title: Search
layout: default
---

## API Authentication

To perform search operations using the Partner API, include the Authorization header in your HTTP request. 
The Authorization header should contain a Bearer token, which is necessary to authenticate your search requests.

## Usage
Search queries go into the "q" query parameter of the url. Results are limited to 100. 
There is no pagination. You must refine your search query to filter further.
The "id" is what you will use to place an order for that listing in the next step.

### GET Request to search parts
```plaintext
GET /api/partner/v1/search?q=PaRtNum83r HTTP/1.1
Host: base.shopjimmy.com
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IlE...
Content-Type: application/json
```

### 200 Response
```js
[
  {
    "id": 336076,
    "title": "Hisense RUNTK0488FVZZ T-Con Board",
    "sku": "sj-RUNTK0488FVZZ",
    "price": 19.99,
    "important": "RUNTK0488FVZZ can be found on barcode sticker on board..\\r\\n\\r\\nIMPORTANT: Horizontal lines on the screen are virtually NEVER caused by a bad T-con board. Horizontal lines indicate a defective LCD panel (screen).",
    "qty": 1,
    "image": "https://801dd59dc9cd6819c753-9e5e71dc742d0580ead74c66470ed43a.ssl.cf2.rackcdn.com/2021-10-25-20-16-52-ShopJimmy-RUNTK0488FVZZ-TOP.jpg",
    "score": 0
  },
  {
    "id": 342548,
    "title": "Onn RUNTK0506FVZA 6661TPZA T-Con Board",
    "sku": "sj-RUNTK0506FVZA",
    "price": 28.79,
    "important": "",
    "qty": 1,
    "image": "https://801dd59dc9cd6819c753-9e5e71dc742d0580ead74c66470ed43a.ssl.cf2.rackcdn.com/2022-12-23-01-20-34-ShopJimmy-RUNTK0506FVZA-TOP.jpg",
    "score": 0
  },
  {
    "id": 342550,
    "title": "ONN 100071708 TV Repair Parts Kit -Version 1",
    "sku": "sj-KIT-100071708-K1",
    "price": 40.81,
    "important": "PLEASE NOTE: There are several versions of this TV model.  Please match the boards shown to the originals in your TV before ordering.",
    "qty": 1,
    "image": "https://801dd59dc9cd6819c753-9e5e71dc742d0580ead74c66470ed43a.ssl.cf2.rackcdn.com/2022-12-23-01-22-42-ShopJimmy-KIT-100071708-K1-TOP.jpg",
    "score": 0
  }
]
```

### 400 Response
```js
{
  "error": "Missing search term."
}
```
