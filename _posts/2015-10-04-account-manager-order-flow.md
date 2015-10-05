---
layout: page
title: "Account Manager Order Flow"
category: doc
date: 2015-10-03 13:39:21
order: 2
---

# Where do we start?

Let's begin by assuming that the user who placed the order for blanks in [customer order flow]({% post_url 2015-10-03-customer-order-flow %}) selected the "I will pay later because I would like to add graphics to these T-Shirts."

## Locating an order

First log in. If you don't recall how to do that, check this one, [here]({% post_url 2015-10-03-logging-in %}).

On the administrative screen, select "Apps", from the sidebar on the left.

![Apps menu item on admin screen][apps-menu-item]

Then, you'll make your way to the "Order Manager" app, where you'll *:manage orders like a boss*.

![Order Manager App][order-manager-icon]

At this point, we'll be at a URL that looks something like the below:

`https://highline-apparel-2.myshopify.com/admin/apps/order-manager`

We'll notice that the order most recently placed lives at the top. (Notice the yellow highlight.)

[Click To Enlarge][order-manager-screen-1]
![Order Manager Screen 1][order-manager-screen-1]

### Searching for an order

This is a contrived example, of course. The order we're looking for isn't always going to be living at the top of the list. We can also search for orders, using the search bar at the top of the table:

![Order Search Bar][order-search-bar]

The search bar filters orders by:

* Customer Name (Ex. Joe Customer)
* Primary Order ID (1006)

The search bar *does not* filter orders by:

* Due Date
* Order Date
* Secondary Order IDs. (More on this [below](#primary-and-secondary-ids))

In addition to the search bar, we also have a "filter dropdown", which allows us to display a subset of orders by their [status](#order-statuses).

![Filter Dropdown][filter-dropdown]

These filters are discussed further in the [order status section](#order-statuses), below.

Between the search bar, filter dropdown, and common sense, the Account Managers of HLN will be able to locate their orders with considerable aplomb.

## Understanding the Order Information

Assume, then, that we've located order `1006` from our previous example. What happens when we click on it? Why, we see the orders:

* Shipping and Billing Addresses
* [Risk Analysis](https://docs.shopify.com/manual/your-store/orders/risk-analysis), <small>(Thanks, Shopify)</small>
* The order's Line Items, and their accompanying prices, SKUs, and the pricing level that each individual line item's group qualified for.
* Discounts
* Subtotal
* Shipping
* Taxes
* Grand Total

![Order Details][order-manager-order-details]

## Adding graphics, or additional products to an order

Click on the wrench icon, and select "Add Products". (We'll need to treat the component parts of graphics - screen charges and ink-charges - like products & charges on an additional order.)

![Add more products to an order][add-products-to-order]

You'll notice that clicking this "Add Products" link leads you to a page with a heading that reads "Create Custom Order". Why would we want a new order though? That's a good question. The reason that we would create a new order, when we're trying to *add* to an order is that Shopify is treating additions to the order as a new *child-order*.

> The reason that we create a new order, when we're trying to *add to to an order* is that Shopify is treating additions to the order as a new *child-order*

A note before we continue. Please jot down the total number of tees that the artwork will be present on; we'll need that number to calculate the surcharges, when we add artwork.

![Creating a new order][create-child-order]

Fear not, though. This child-order's line items get merged into the parent order's information on the [order screen that we were just on](https://om.boldapps.net/s/highline-apparel-2/orders/). We'll go back to verify this at the end of this section.

I believe at the time of writing this, utilizing the "Add a Surcharge" button is the most semantic method for applying HLN's graphic process.

Let's review what we heard from the client:

![The client wants a llama][client-llama]

Okay, great. Looks like his *art* is a two color, one-location affair.

Before we get to adding the surcharges, let's take advantage of the notes section to leave a bit of documentation about this child-order that reflect what we're doing, maybe record some info about when we discussed these changes with the client, etc.

These fields function as you likely think they do; public notes are viewable by the customer. Private notes can only be seen by HLN staff members who have access to this dashboard.

![Order Notes][order-notes]

Let's go ahead now, and add two surcharges. One to represent the number of screens, and the other to represent the ink-charges.

### Screen Charges

We title the charge `Screen Charges`, price it at `40.00`, input `2` for *quantity*, and ensure that the `taxable` box is checked. In the description, I've pasted the following phrase: "A screen charge is incurred by each color, in each location of the print." But, we could adjust and standardize the description however we choose.

![Screen Charge][screen-charge]


### Ink Charges

Let's add another charge for the ink. **Without saving, or reloading the order page in any way**, I continue along to clicking "Add a surcharge" for a second time, to open up another group of form fields for the ink charge.

Here it goes... The surcharge name will be `Ink Charges`, the price is `$1.50`\*, and the quantity is `324.00`. For the description, I've added the following, with the same caveat as the Screen charges. "Ink charges are calculated at $1.00 per color, per location, and $0.50 for each additional location. Since this order contains 216 garments, and there are two colors in a single location, this charge is equal to: 216 &times; (1.00 + 0.5), or $324"

![Ink Charge][ink-charges]

At this point, you should click "Email Customer to Checkout". They will receive a message letting them know that they have an "order" prepared for them.

![Email notification][email-for-addtl-items]

You can see that the surcharges, their details, etc., are all present.

When we go back to the order manager screen, we can see that there are pending surcharges for order `1006`! NEAT!

![Pending Surcharges][pending-surcharges]

**What does the user see when the click the link in their email?** It looks something like this:


![Prepared Cart][prepared-cart]

## Order Statuses

We should now alter the order's status, to reflect where it is in the process, and to make it easier to locate, later.

| Status                  | Description   |
| ----------------------- | ------------- |
| Not fulfilled           | The order's items have not been prepared, packaged, or shipped.   |
| Partially Fulfilled     | Some of the order's items are accounted for, packaged, prepared, etc. |
| Fulfilled               | All the order's items are accounted for, packaged, prepared, etc. |
| "Mockup Validation"     | A custom status denoting that the order has graphic elements that need to be completed, still.|

> Note: we have the ability to define more custom statuses.

An AM should not concern themselves with "fulfilling" an order. This will be handled by production. Selecting "fulfilled", or "partially fulfilled" from the dropdown will prompt the user to mark which items are fulfilled.

![Changing order status][changing-order-status]

## Attaching files to an order

Let's assume some time has passed, and that the client's approved the mockup. You should attach the approved .pdf to the order so that production can retrieve it, later.

This can be achieved through the "files" button on each order's row.

![Uploading artwork][attaching-order-artwork]

## Capturing Payment for an Order

Moving forward, we will now mark the payment as complete, which can signal to production that the order is ready to be fulfilled. This is done by selecting "Capture Funds" from the wrench icon in the actions column of the order.

![Capture Funds][capture-funds]

This brings up a dialog prompt that asks the AM what amount of money to capture for the order.

### When the payment method is "Credit Card"

If the payment method is a credit card, then at the time of the order, the customer will have authorized the funds.

> By clicking "capture" on a transaction, the merchant (or AM) accepts that payment, creating a tacit agreement with the customer to fulfill their order.

That is to say, this actually moves the money from their credit card to our bank account, whereas at the time of "purchase", the customer had just **reserved** that amount on their card for us to capture at a later date.

### When the payment method is not "Credit Card"

When we're dealing with a check, or a pay-later scenario, we spare the customer the burden of reserving space on their credit card for us, on an order that might take a couple weeks to reach fulfillment & ship.

This creates a need for great care, then, because an AM **must** be super-duper careful about ensuring that the funds have been manually captured outside of this Shopify dashboard (i.e., check deposited by accounting, or credit card manually charged, after the fact) before signaling to production that the order is ready by marking it as "paid" through capturing the funds.

### Additional notes on capturing funds

* The fact that we can "capture" funds that were paid with a method called "pay later" is confusing at best, but it's a limitation of our current set up. ¯\\\_(ツ)\_/¯

* The dashboard will not warn you and say `$$ Pending *`, when an order's **child-order** (ex. the graphic charges) is still waiting to be completed, if the primary order is "paid" for.


## Primary and Secondary IDs

Any order that's placed by a customer, or created by an AM is a "parent order".

And order that's created via the `add products` action on the dashboard is a "child order"

[apps-menu-item]: /img/apps-menu-item.jpg
[order-manager-icon]: /img/order-manager-icon.jpg
[order-manager-screen-1]: /img/order-manager-screen-1.jpg
[order-search-bar]: /img/order-search-bar.jpg
[filter-dropdown]: /img/filter-dropdown.jpg
[order-manager-order-details]: /img/order-manager-order-details.gif
[add-products-to-order]: /img/add-products-to-order.jpg
[create-child-order]: /img/create-child-order.jpg
[client-llama]: /img/llama-art.jpg
[screen-charge]: /img/screen-charge.jpg
[ink-charges]: /img/ink-charges.jpg
[order-notes]: /img/order-notes.jpg
[email-for-addtl-items]: /img/email-for-addtl-items.jpg
[pending-surcharges]: /img/wow-so-neat-pending-surcharges.jpg
[prepared-cart]: /img/customer-prepared-cart.jpg
[changing-order-status]: /img/changing-order-status.gif
[attaching-order-artwork]: /img/attaching-a-mockup.gif
[capture-funds]: /img/capture-funds.jpg
