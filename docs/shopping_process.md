# Pseudo Code For Online Shopping Process

***First level of abstraction***
-> Shopping

***Second level of abstraction***

## Shopping ##
   * 1. Visit Website
   * 2. Log in or register first if new
   * 3. Browse items
   * 4. Add to cart
   * 5. Checkout

*** Detailed level of abstraction ***

## 1. Visit Website

* 1.1 Go to browser
* 1.2 Type the shopping website URL
* 1.3 Press Enter to visit the site

## 2. Log In
***2.1 Open the login form***
    2.1.1 Click on the "Log in" or "Sign in" button/link to open the login form
        2.1.1.1 The browser sends a request to the server with the       
                entered credentials  
***2.2 Enter credentials (email and password)***
        2.2.1 Type the email address in the email input field
        2.2.2 Type the password in the password input field
        2.2.3 Click the "Continue" or "Log in" button to submit credentials

                2.2.3.1 The server checks if the email exists in the database
                2.2.3.2 If the email exists, the server compares the entered password with the stored password hash
                2.2.3.2.1 If the credentials match, the user is authenticated
                2.2.3.2.2 If the credentials do not match, an error message is shown (e.g., "Invalid email or password")
                2.2.3.3 If authentication is successful, the server redirects the user to the dashboard or homepage

***2.4 OTP Verification (if required)***
    2.4.1 Receive OTP via email or SMS
    2.4.2 Enter the OTP in the provided field
    2.4.3 Submit the OTP for verification

# 3. Browse Items 
    
***3.1 View product categories***
        3.1.1 Navigate through the homepage or menu
        3.1.2 Click on a desired category (e.g., Electronics, Fashion, etc.)
            3.1.2.1 Backend: Fetch category data from the database
            3.1.2.2 Backend: Return it to the frontend for display
***3.2 Search for specific products***
        3.2.1 Click on the search bar
        3.2.2 Type the product name or keyword     
        3.2.3 Press Enter or click the search icon
            3.2.3.1 Backend: Receive the product name from the search bar
            3.2.3.2 Backend: Query the product table
            3.2.3.3 Backend: Return matching products
        3.2.4 View search results
***3.3 Apply filters (to refine results)***
        3.3.1 Select filters like price range, brand, rating, etc.
        3.3.2 Apply the filters to update the product list
            3.3.2.1 Backend: Receive selected filters via GET or POST
            3.3.2.2 Backend: Construct a query with conditions (e.g., price > 500 AND rating > 4)
            3.3.2.3 Backend: Return the filtered product list

***3.4 Check product details and reviews***
        3.4.1 Click on a product to open its detail page
            3.4.1.1 Backend: Fetch product info by product ID
            3.4.1.2 Backend: Retrieve associated reviews from the reviews table
            3.4.1.3 Backend: Send product and review data to frontend
        3.4.2 View specifications, features, and price
        3.4.3 Scroll to read customer reviews and ratings

# 4. Add To Cart

***4.1 Select product attributes***
    4.1.1 Choose size (e.g., M, L, XL)
    4.1.2 Choose color (e.g., Red, Blue)
    4.1.3 Select quantity (e.g., 1, 2)
***4.2 Click on "Add to Cart" button***
    4.2.1 The selected attributes and product ID are sent to the server

        4.2.1.1 Backend: Receive request with
            -> User ID (from session or token)
            -> Product ID
            -> Selected size, color, and quantity
        4.2.1.2 Backend: Validate the request
            -> Check if product exists
            -> Check if selected size/color/quantity is available in inventory
        4.2.1.3 Backend: Add item to cart
            -> Create or update entry in the CartItems table linked to the user
            -> If product already exists in cart, increment quantity
        4.2.1.4 Backend: Send response back
            -> Return success/failure status
            -> Optionally return updated cart count or data

***4.3 See confirmation***
    4.3.1 Optionally redirect to cart or continue browsing.

# 5. Checkout

***5.1 Go to Cart***
    5.1.1 Click on Cart icon or "View Cart"
    5.1.2 View all added items with details (price, quantity, total)
***5.2 Enter or Select Shipping Address***
    5.2.1 Choose from saved addresses
    5.2.2 Or enter a new address (name, phone, pin, street, city, state)
    5.2.2.1 Backend: Receive shipping address
        -> Validate shipping address format
        -> Save new address (if it's not already saved)
***5.3 Choose Payment Method***
        5.3.1 Select payment mode (e.g., UPI, card, cash on delivery, wallet)
        5.3.2 Enter payment info (card number, UPI ID, etc.)
        5.3.2.1 Backend: Initiate payment process
            -> Connect to selected payment gateway (e.g., Razorpay, Stripe)
            -> Wait for payment confirmation or failure callback
***5.4 Review Order***
        5.4.1 Double-check items, prices, address, and payment method
        5.4.2 Apply any coupons or gift cards
        5.4.2.1 Backend: Validate coupon code
            Apply discount if valid
            Recalculate total price
***5.5 Place Order***
        5.5.1 Click "Place Order" or "Confirm Order" button
        5.5.2 Backend: Trigger order processing
            5.5.2.1 Validate cart items against stock
            5.5.2.2 Generate order entry in database
            Include: user ID, items, total amount, address, order status
            5.5.2.3 Deduct ordered quantities from inventory
***5.6 Show Order Confirmation***
        5.6.1 Display success message with Order ID
        5.6.2 Optionally redirect to "My Orders" or "Track Order" page
            5.6.2.1 Backend: Send confirmation
                -> Email or SMS with Order ID
                -> Respond with order summary to frontend


