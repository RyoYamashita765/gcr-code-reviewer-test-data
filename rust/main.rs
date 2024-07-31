struct User {
    id: i32,
    name: Option<String>,
    email: Option<String>,
}

fn process_user_data(users: &[User]) {
    for user in users {
        let user_name = user.name.as_ref().unwrap();
        let user_email = user.email.as_ref().unwrap();
        
        println!("User {}: {}, Email: {}", user.id, user_name, user_email);
        
        let email_components: Vec<&str> = user_email.split('@').collect();
        let domain = email_components[1];
        
        println!("Email domain: {}", domain);
    }
}

fn main() {
    // case 1
    let users = vec![
        User { id: 1, name: Some("Alice".to_string()), email: Some("alice@example.com".to_string()) },
        User { id: 2, name: None, email: Some("bob@example.com".to_string()) },
        User { id: 3, name: Some("Charlie".to_string()), email: None },
        User { id: 4, name: Some("David".to_string()), email: Some("david@invalid".to_string()) },
    ];
    process_user_data(&users);

    // case 2
    let all_scores = vec![85, 92, 78, 95, 88];
    let p = 6;
    println!("all_scores[p] = {}", all_scores[p]);
}
