//
//  AuthenticationPresenterDelegateMock.swift
//  LedgitTests
//
//  Created by Marcos Ortiz on 2/10/18.
//  Copyright © 2018 Camden Developers. All rights reserved.
//

import Foundation
@testable import Ledgit

class AuthenticationPresenterDelegateMock: AuthenticationPresenterDelegate {
    var didAuthenticate: Bool = false
    var didReceiveAuthenticationError: Bool = false
    var errorDictionary: [String:String] = [:]
    var authenticatedUser: LedgitUser = LedgitUser()
    
    func successfulAuthentication(of user: LedgitUser) {
        didAuthenticate = true
        authenticatedUser = user
    }
    
    func displayError(_ dict: ErrorDictionary) {
        didReceiveAuthenticationError = true
        errorDictionary = dict
    }
}