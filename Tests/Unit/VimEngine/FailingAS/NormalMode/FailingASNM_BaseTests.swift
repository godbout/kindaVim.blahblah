@testable import kindaVim
import XCTest


class FailingASNM_BaseTests: FailingAS_BaseTests {
    
    override func setUp() {
        super.setUp()
        
        KindaVimEngine.shared.enterNormalMode()
    }
    
}
