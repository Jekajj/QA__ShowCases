# Checkout System Checklist (Advanced)

## Business Logic
- [ ] Discounts applied only if total > threshold
- [ ] Gift cards cannot exceed total price
- [ ] Loyalty points cannot create negative totals
- [ ] Free shipping conditions correct

## Concurrency
- [ ] Two simultaneous sessions cannot double-purchase limited stock
- [ ] Cart updates reflect across tabs
- [ ] Payment double-click prevention

## Security
- [ ] Payment form does not store card data on client
- [ ] CSRF tokens validated
- [ ] HTTPS for all steps
