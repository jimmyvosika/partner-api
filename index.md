---
title: Briefing
layout: home
---

## REST API Concept
The production endpoint for the Partner API is currently **https://base.shopjimmy.com/api/partner/v1**

To access the API, your application must be approved, and an account must be set up on our server. 
Once approved, you will receive a client_id and client_secret, enabling you to begin development using our designated development endpoint.

---
### Shipping 
You are required to provide access for our carrier accounts to ship using your services. 
Each order request must include the corresponding shipping service name and carrier details.

---
### Billing
All fulfilled orders will be invoiced electronically at a later time. 
The billing address for each order will reference the API account information associated with your account.

[Just the Docs]: https://just-the-docs.github.io/just-the-docs/
