# Food Ordering App

menu = {
    1: ("Burger", 120),
    2: ("Pizza", 250),
    3: ("Sandwich", 80),
    4: ("French Fries", 100),
    5: ("Cold Drink", 50)
}

total_bill = 0

print("===== FOOD ORDERING APP =====")
print("Menu:")

for key, value in menu.items():
    print(f"{key}. {value[0]} - ₹{value[1]}")

while True:
    choice = int(input("\nEnter item number to order: "))

    if choice in menu:
        quantity = int(input("Enter quantity: "))
        item_name = menu[choice][0]
        price = menu[choice][1]

        cost = price * quantity
        total_bill += cost

        print(f"{quantity} {item_name}(s) added to cart.")
        print(f"Cost: ₹{cost}")
    else:
        print("Invalid choice!")

    more = input("Do you want to order more? (yes/no): ").lower()

    if more != "yes":
        break

print("\n===== BILL =====")
print(f"Total Amount: ₹{total_bill}")
print("Thank You for Ordering!")
