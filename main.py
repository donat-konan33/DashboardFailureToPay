# This is a sample Python script.

# Press Maj+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.
import requests


def print_hi(ID: int):
    """

    :type ID: object
    """
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, {ID}')  # Press Ctrl+F8 to toggle the breakpoint.
    return ID


print_hi("It's Donatien")

API_URL_CREDIT = "http://127.0.0.1:8000/get_credit"
ID = input("Entrez un identifiant ID pour démarrer l'analyse : ")

r2 = requests.get(API_URL_CREDIT, params={"ID": ID})  # val_score et class_ca

req = r2.json()
val_score = [j for i, j in req[0].items()][0]

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
