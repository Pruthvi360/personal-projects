import os

Search_path = input("Enter your path to validate : ")

if os.path.exists(Search_path):
    print(f'Given Path is \"valid\"')
    if os.path.isfile(Search_path):
        print(f'Given Path Consist of \"file\"')
    else:
        print(f"Given path is \"Dir\"")
else:
    print(f"Provide a valid path")    