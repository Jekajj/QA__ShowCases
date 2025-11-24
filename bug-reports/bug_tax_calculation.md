# Bug: Incorrect tax calculation for mixed VAT rates

**ID:** BUG-BUS-003
**Summary:** Backend applies higher VAT rate to all items when cart contains mixed VAT rates.
**Severity:** Medium
**Priority:** High
**Environment:** API v2.1, staging
**Steps:**
1. Add item with 5% VAT and item with 23% VAT to cart
2. Go to checkout
3. Observe tax breakdown

**Actual:** 23% applied to all items.
**Expected:** Each item taxed with its own VAT; totals match per-item calculations.
