# DVD Rentals — PostgreSQL Analysis (Day 20/ 100)

Learning in public. This is my real Day 8, mistakes and all.

## The Journey

Started with just wanting to practice INNER JOIN between payment and customer tables — that's the `inner_join practice` file you see in here. It was messy, I got errors, but I kept going.

From that one practice file, I built 8 business questions.

## What I Built
01. Total Revenue — SUM(payment)
02. Revenue by Store — JOIN store + payment
03. Top Film Revenues — JOIN film + payment
04. Top Customers — GROUP BY struggle (see Learning Notes)
05. Favorite Category — per customer
06. Monthly Revenue — DATE_TRUNC
07. Dead Stock — films never rented
08. Customer Rank — RANK() OVER (ORDER BY SUM)

## Learning Notes (Real Errors)

**Q4 Error I left in:** 
`GROUP BY c.customer_id` only — Postgres threw: `must appear in GROUP BY clause`
Fix I learned: Need `GROUP BY c.customer_id, c.first_name, c.last_name`

**Git Errors I left in:**
- Typed `git branch -M maingit branch -M main` (pasted double)
- `src refspec main does not match` — was still on master branch
- Fixed with `git branch -M main` then `git push -u origin main`

## Stack
PostgreSQL | VS Code | Git & GitHub | dvdrental sample DB

## Why I Left The Mess?
Perfect repos look like ChatGPT. This one looks like me at 1am figuring out JOINs. That's the point of 100 Days of Data.

— Kagiso Mothudi, Day 8
