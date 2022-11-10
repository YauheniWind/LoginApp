//
//  UserInformations.swift
//  LoginApp
//
//  Created by Евгений  Гравдин  on 08/11/2022.
//

struct User {
  let login: String
  let password: String
  let information: Person
}

struct Person {
  let name: String
  let surname: String
  let age: Int
  let employment: String
  let bio: String
}

// UsersSecurity
extension User {
  static func getInformation() -> User {
    return User(login: "Eugene",
                password: "1234",
                information:
                  Person(name: "Eugene",
                         surname: "Gravdin",
                         age: 24,
                         employment: "Bartender",
                         bio: "I was born in South Kazakhstan but I graduated from high school in Belarus and university in Slovakia"))
    
  }
}
