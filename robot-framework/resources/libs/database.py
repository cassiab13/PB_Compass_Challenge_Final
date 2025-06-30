from robot.api.deco import keyword
from pymongo import MongoClient
import bcrypt

client = MongoClient('mongodb://localhost:27017')

db = client['cinema-app2']

@keyword('Remove user from database')
def remove_user(email):
    users=db['users']
    users.delete_many({'email': email})
    print("User removed from database")
    
@keyword('Insert user into database')
def insert_user(user):
    hash_pass= bcrypt.hashpw(user['password'].encode('utf-8'), bcrypt.gensalt(10))
    newUser = {
        'name': user['name'],
        'email': user['email'],
        'password': hash_pass,
    }
    users = db['users']
    users.insert_one(newUser)

@keyword('Reset user in database')
def reset_user(user):
    print(f"Resetting user: {user['email']}")
    remove_user(user['email'])
    insert_user(user)
    print("User reset completed.")