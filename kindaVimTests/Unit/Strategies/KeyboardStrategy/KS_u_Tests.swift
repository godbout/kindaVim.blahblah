//
//  KS_u_Tests.swift
//  kindaVimTests
//
//  Created by Guillaume Leclerc on 06/05/2021.
//

@testable import kindaVim
import XCTest

class KS_u_Tests: XCTestCase {

    let keyboardStrategy = KeyboardStrategy()

}

extension KS_u_Tests {
    
    func test_that_u_gets_transformed_to_command_z() {
        let transformedKeys = keyboardStrategy.u()
        
        guard transformedKeys.count == 1 else { return XCTFail() }
        XCTAssertEqual(transformedKeys[0].key, .z)
        XCTAssertEqual(transformedKeys[0].command, true)
        XCTAssertEqual(transformedKeys[0].action, .both)
    }
    
}


