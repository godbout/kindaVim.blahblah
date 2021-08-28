@testable import kindaVim
import KeyCombination
import XCTest

class KS_control_d_Tests: KSUT_BaseTests {
    
    func test_that_control_d_returns_fn_down() {
        let keyCombinations = ksNormalMode.controlD()
        
        guard keyCombinations.count == 1 else { return XCTFail() }
        XCTAssertEqual(keyCombinations[0], KeyCombination(key: .fnDown))
    }
    
}


