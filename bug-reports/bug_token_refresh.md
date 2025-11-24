# Bug: Token refresh fails and user loses form data

**ID:** BUG-AUTH-002
**Summary:** Token refresh fails silently during large form submission which results in data loss.
**Severity:** High
**Priority:** High
**Environment:** OPERA GX 124.0.5705.38, Windows 11, token lifetime 10 minutes
**Steps:**
1. Fill multi-section form
2. Wait for token expiration (>10 minutes)
3. Submit form

**Actual:** Form submission fails; user input cleared.
**Expected:** Token should refresh transparently and form should retry submission or preserve state.
**Attachments:** attachments/token_refresh_log.txt
