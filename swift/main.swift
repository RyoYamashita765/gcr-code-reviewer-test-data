import Foundation

func checkAge(age: Int) -> String {
    var message: String

    if age >= 18 {
        message = "You are an adult"
    } else {
        message = "You are a minor"
    }

    return message
}

func determineGrade(score: Int) -> String {
    var grade: String

    if score >= 70 {
        grade = "Pass"
    } else {
        grade = "Fail"
    }

    return grade
}

print(checkAge(age: 20))
print(determineGrade(score: 65))
