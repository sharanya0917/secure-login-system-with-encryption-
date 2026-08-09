import bcrypt

FILE = "users.txt"

def register():
    username = input("Enter username: ")
    password = input("Enter password: ")

    # Hash password
    hashed = bcrypt.hashpw(password.encode(), bcrypt.gensalt())

    # Store in file
    with open(FILE, "a") as f:
        f.write(username + "," + hashed.decode() + "\n")

    print("Registration successful!")


def login():
    username = input("Enter username: ")
    password = input("Enter password: ")

    try:
        with open(FILE, "r") as f:
            users = f.readlines()

        for user in users:
            stored_user, stored_hash = user.strip().split(",")

            if username == stored_user:
                if bcrypt.checkpw(password.encode(), stored_hash.encode()):
                    print("Login successful!")
                    return True
                else:
                    print("Incorrect password!")
                    return False

        print("User not found!")
        return False

    except FileNotFoundError:
        print("No users registered yet!")
        return False


def logout():
    print("Logged out successfully!")


while True:
    print("\n1. Register\n2. Login\n3. Exit")
    choice = input("Choose option: ")

    if choice == "1":
        register()

    elif choice == "2":
        if login():
            input("Press Enter to Logout...")
            logout()

    elif choice == "3":
        print("Exiting...")
        break

    else:
        print("Invalid choice!")