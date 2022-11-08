//
//  UserInformations.swift
//  LoginApp
//
//  Created by Евгений  Гравдин  on 08/11/2022.
//

struct User {
  let userLogin: String
  let userPassword: String
  let userInformation: UserInfromation
}

struct UserInfromation {
  let userName: String
  let userSurname: String
  let userAge: Int
  let userEmployment: String
  let userBio: String
}
// UsersSecurity
extension User {
  static func information() -> User {
    let security = User(userLogin: "Eugene",
                             userPassword: "1234",
                             userInformation:
                              UserInfromation(userName: "Eugene",
                                              userSurname: "Gravdin",
                                              userAge: 24,
                                              userEmployment: "Bartender",
                                              userBio: "I was born in South Kazakhstan but I graduated from high school in Belarus and university in Slovakia"))
    
    return security
  }
}
