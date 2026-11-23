def input_int(message: str):
    while True:
        try:
            num = int(input(message))
            return num
        except ValueError:
            print(f"Enter an integer number.")


def input_float(message: str):
    while True:
        try:
            num = float(input(message))
            return num
        except ValueError:
            print(f"Enter a float number.")
