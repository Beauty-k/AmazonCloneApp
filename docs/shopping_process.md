# Pseudo Code For Online Shopping Process

***High level of abstraction***
-> Shopping 

***Mid level of abstraction***

## Shopping ##
-> Visit Website
-> Log in or register first if new
-> Browse items
-> Add to cart
-> Checkout

***Low level of abstraction***

## 1. Visit Website
-> Go to browser
-> Visit preferred shopping website

## 2. Log In
-> Click on log in button 
-> Enter email
-> Enter Password
-> Provide OTP if Required
-> Click on Continue Button

## 3. Browse Items
-> View Categories
-> Search For Specific Products
-> Apply Filters
-> Check Product Reviews

## 4. Add To Cart
-> Select size, colour and quantity or any other attributes if available.
-> Click on Add to Cart Button

## 5. Checkout
-> Go to Cart
-> Enter or Select Shipping Address
-> Choose Payment Method
-> Review Order
-> Place Order
-> Show Order Confirmation

# Functional Pseudo Code

function shoppingProcess() 
{
    visitWebsite();
    loginUser();
    browseItems();
    addToCart();
    checkout();
}

function visitWebsite()
{
    openBrowser();
    navigateToWebsite("shopping site URL");
}

function loginUser()
{
    clickLoginButton();
    enterEmail();
    enterPassword();
    if otpRequired():
        enterOTP();
    clickContinueButton();
}

function browseItems()
{
    viewCategories();
    searchProducts();
    applyFilters();
    checkProductReviews();
}

function addToCart()
{
    selectProductOptions()
    clickAddToCart()
}

function checkout()
{
    goToCart();
    enterShippingAddress();
    choosePaymentMethod();
    reviewOrder();
    placeOrder();
    showConfirmation();
}

