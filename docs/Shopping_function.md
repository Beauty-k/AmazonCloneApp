# Functional pseudo code for online shopping process

<!-- Shopping (High level of abstraction) -->
function shopping_process()
{
    visit_website()
    login_user()
    browse_items()
    add_to_cart()
    checkout()
}

<!-- Visit Website -->
function visit_website(url)
{
    open_browser()
    navigate_to(url)
    press_enter()
}

<!-- Log in User -->
function log_in(email, password)
{
    open_login_form()
    enter_credentials(email, password)
    verify_credentials(email, password)
    if otpRequired():
        enterOTP();
    clickContinueButton();
}

function open_login_form
{
    click_button("Log in")
}
  

function enter_credentials(email, password){
    fill_in("email", email)
    fill_in("password", password)
    click_button("Log in")
}

function verify_credentials(email, password){
    if credentials_valid?(email, password)
        redirect_to_dashboard
    else
        display_error("Invalid email or password")
    end
}

function enter_otp(){
    otp = receive_otp
    enter_otp(otp)
    submit_otp()
}
  
<!-- Browse Items -->

function browse_items(){
    view_categories
    search_products("Product Name")
    apply_filters(price: 500, rating: 4)
    check_product_details("Product ID")
}

function view_categories(){
    click_button("Categories")
    display_categories(fetch_categories_from_db)
}

function search_products(query){
    fill_in("search_bar", query)
    click_button("Search")
    display_search_results(fetch_products_from_db(query))
}

function apply_filters(filters){
 
    select_filter()
    update_product_list()
}

function check_product_details(product_id){
    product = fetch_product_details(product_id)
    display_product_details(product)
}

<!-- Add to Cart -->
function add_to_cart(product_id, size, color, quantity){
    select_product_attributes(size, color, quantity)
    add_product_to_cart(product_id, size, color, quantity)
    confirm_addition()
}

function select_product_attributes(size, color, quantity){
    choose_size(size)
    choose_color(color)
    choose_quantity(quantity)
}

function add_product_to_cart(product_id, size, color, quantity){
    cart_item = create_cart_item(product_id, size, color, quantity)
    save_to_cart(cart_item)
}

function confirm_addition(){
    display_confirmation_message()
}

<!-- Checkout -->

function checkout(){
    view_cart()
    select_shipping_address()
    choose_payment_method("Card")
    review_order()
    place_order()
}

function view_cart(){
  click_button("View Cart")
  display_cart_items(fetch_cart_items)
}

function select_shipping_address(){
  select_from_saved_addresses()
  or
  enter_new_address("New Address")
  save_address()
}

function choose_payment_method(method){
    select_payment_method(method)
    enter_payment_info()
    process_payment()
}

function review_order(){
    check_order_details()
    apply_coupon("DISCOUNT10")
    confirm_total_price()
}

function place_order(){

  click_button("Place Order")
  process_order_in_backend()
  display_order_confirmation()
}



