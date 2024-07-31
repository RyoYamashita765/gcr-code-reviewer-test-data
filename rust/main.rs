fn check_age(age: i32) -> String {
    let message: String;

    if age >= 18 {
        message = String::from("You are an adult");
    } else {
        message = String::from("You are a minor");
    }

    message
}

fn determine_grade(score: i32) -> String {
    let grade: String;

    if score >= 70 {
        grade = String::from("Pass");
    } else {
        grade = String::from("Fail");
    }

    grade
}

fn main() {
    println!("{}", check_age(20));
    println!("{}", determine_grade(65));
}
