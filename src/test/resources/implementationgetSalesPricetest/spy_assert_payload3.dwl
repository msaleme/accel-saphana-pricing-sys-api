%dw 2.0
import * from dw::test::Asserts
---
vars.actual.message.payload must equalTo(payload.message.payload)