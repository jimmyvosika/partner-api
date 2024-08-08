---
title: Briefing
layout: home
---

## REST API Concept
The endpoint for the Partner API is currently `https://base.shopjimmy.com/api/partner/v1`

The API requires authentication using a client ID and client secret to obtain an access token. The access token is then used to authenticate each request until the expiration time (3 hours at the time of writing). After expiration, a new access token needs to be obtained.

[Just the Docs]: https://just-the-docs.github.io/just-the-docs/
