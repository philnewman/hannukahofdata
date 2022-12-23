import json

years_of_dog = ('1958', '1970', '1982', '1994', '2006', '2018')
aries_months = ('03','04')

with open('../noahs-customers.jsonl') as f:
    for line in f:
        customer = json.loads(line)
        birthdate = customer['birthdate'].split("-")
        phone = customer['phone']
        zip = customer['citystatezip'].split(" ")[-1]
        
        if birthdate[0] in years_of_dog and int(zip) == 11420:
            if int(birthdate[1]) == 3 and int(birthdate[2]) >= 21:
                print(" March Aries ", birthdate," ", zip," ",phone)
            if int(birthdate[1]) == 4 and int(birthdate[2]) <= 19:
                print(" April Aries ", birthdate," ",zip," ",phone)
