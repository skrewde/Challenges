import copy

# Defining class
class Person:

    # Initialising
    def __init__(self, name, location):
        self.name = name
        self.location = location

person_1 = Person("Peter", "Florida")
person_2 = Person("Shannon", "Atlanta")

# using deepcopy method to create an explicit copy
person_3 = copy.deepcopy(person_1)

# Test for copy
person_3.name = "Richard"

# This is a test for deepcopy. If deepcopy was unsuccessful, person_1's ID would match person_3's
print(id(person_1))
print(id(person_2))
print(id(person_3))

# Another test. If deepcopy was unsuccessful, person_1's attributes would match person_3's
def deepcopy_test():
    print(person_1.name, person_1.location)
    print(person_2.name, person_2.location)
    print(person_3.name, person_3.location)

deepcopy_test