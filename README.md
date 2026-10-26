# CraveBite - Food Ordering System (React + Node + MySQL Workbench)

## Run it
1. Install Node.js (LTS) and make sure MySQL Server is running (the one Workbench uses).
2. Double-click **START.bat** (first time it asks for your MySQL root password, installs everything and opens the site).
   Or in a terminal: `npm run setup`, then `npm run dev`, then open http://localhost:5000

The database `cravebite`, tables, 20 dishes and demo accounts are created automatically.
To view it in MySQL Workbench: refresh Schemas -> `cravebite`. (Or run `database/schema.sql` yourself.)

## Logins
- Demo user: demo@cravebite.com / demo123 (or create your own account via Sign up)
- Admin: admin@cravebite.com / admin123

## Features
Sign up / login, 20 dishes with images, search + categories, Add to Bag, place order, Order Placed screen,
PDF invoice download, order history. Admin: add / edit / delete dishes with image upload, order status.
