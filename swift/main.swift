import Foundation

// case 1

struct User {
    let id: Int
    let name: String?
    let email: String?
}

func processUserData(users: [User]) {
    for user in users {
        let userName = user.name!
        let userEmail = user.email!
        
        print("User \(user.id): \(userName), Email: \(userEmail)")
        
        let emailComponents = userEmail.split(separator: "@")
        let domain = emailComponents[1]
        
        print("Email domain: \(domain)")
    }
}

let users = [
    User(id: 1, name: "Alice", email: "alice@example.com"),
    User(id: 2, name: nil, email: "bob@example.com"),
    User(id: 3, name: "Charlie", email: nil),
    User(id: 4, name: "David", email: "david@invalid")
]

processUserData(users: users)

// case 2

let allScores = [85, 92, 78, 95, 88]
let p = 6
print("allScores[p] = \(allScores[p])")
