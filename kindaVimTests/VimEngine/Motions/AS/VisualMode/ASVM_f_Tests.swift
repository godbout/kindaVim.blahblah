@testable import kindaVim
import KeyCombination
import XCTest


class SucceedingASVM_f_Tests: ASVM_BaseTests {
    
    override func setUp() {
        super.setUp()
        
        kindaVimEngine.handle(keyCombination: KeyCombination(vimKey: .eight))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .f))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .z))
    }
    
}


extension SucceedingASVM_f_Tests {
    
    func test_that_it_calls_the_correct_function_on_the_AccessibilityStrategy() {
        XCTAssertEqual(asVisualModeMock.functionCalled, "f(times:to:on:_:)")
        XCTAssertEqual(asVisualModeMock.relevantParameter, "z")
    }
    
    func test_that_it_keeps_Vim_in_VisualMode() {
        XCTAssertEqual(kindaVimEngine.currentMode, .visual)
    }     
        
    func test_that_it_resets_the_count() {
        XCTAssertNil(kindaVimEngine.count)
    }
    
}
