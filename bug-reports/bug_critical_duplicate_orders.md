# Bug: Duplicate orders created under network instability

**ID:** BUG-CRIT-001
**Summary:** Duplicate orders are created when network disconnects during payment and reconnects.
**Severity:** Critical
**Priority:** Highest
**Environment:** OPERA GX 124.0.5705.38, Windows 11, Network throttle: Slow 3G
**Steps to reproduce:**
1. Add item to cart
2. Proceed to payment
3. Click 'Pay'
4. Disconnect network for 1-2 seconds
5. Reconnect and observe

**Actual Result:** Two orders created and two charges processed.
**Expected Result:** Only one order should be created; idempotency key should prevent duplicate processing.
**Attachments:** attachments/duplicate_orders_screenshot.png
