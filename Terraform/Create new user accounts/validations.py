import re

def check_special_characters(SamAccountName):
    Special = ""  # Initialize an empty string to store special characters
    Numeric=""
    for letter in SamAccountName:
        if not re.match(r"[a-zA-Z]", letter):  # If it's not alphanumeric
            if letter!=".":
                Special+=letter
            elif re.match(r"[0-9]",letter):
                Numeric+=letter
    if Special!="":
        print(f"{SamAccountName} has character {Special}")
    else:
        print("No Special Characters")
    if Numeric!="":
        print(f"{SamAccountName} has number {Numeric} in the string")
    else:
        print("No Special Characters")

def check_string_length(SamAccountName):
    if len(SamAccountName) <= 20:
        check_special_characters(SamAccountName)  # Checks if the length is within 20 characters
    else:
        print("Length of the SamAccountName is more than 20 characters and")
        check_special_characters(SamAccountName)

def check_department(Department):
    Departments=["Core Tech","Engineering","Data"]
    if Department not in Departments:
        print("Entered department is not in the list")

Department="IT"
SamAccountName = "ext.goutham-$678%^&gummadibharat"
check_string_length(SamAccountName)
check_department(Department)
