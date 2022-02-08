@testable import kindaVim
import KeyCombination
import XCTest


class SucceedingASNM_comma_Tests: ASNM_BaseTests {

    private func applyMoveBeingTested() {
        kindaVimEngine.handle(keyCombination: KeyCombination(vimKey: .eight))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .comma))
    }
    
}


extension SucceedingASNM_comma_Tests {
    
    func test_that_if_the_LastLeftRightMotion_called_was_F_then_it_calls_f_with_the_right_character_to_search_for() {
        kindaVimEngine.handle(keyCombination: KeyCombination(vimKey: .F))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .z))
        
        applyMoveBeingTested()
        
        XCTAssertEqual(kindaVimEngine.lastLeftRightSearch?.motion, "F")
        XCTAssertEqual(kindaVimEngine.lastLeftRightSearch?.character, "z")
        XCTAssertEqual(asNormalModeMock.functionCalled, "f(times:to:on:)")
        XCTAssertEqual(asNormalModeMock.relevantParameter, "z")
    }
    
    func test_that_if_the_LastLeftRightMotion_called_was_f_then_it_calls_F_with_the_right_character_to_search_for() {
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .f))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .six))
        
        applyMoveBeingTested()
        
        XCTAssertEqual(kindaVimEngine.lastLeftRightSearch?.motion, "f")
        XCTAssertEqual(kindaVimEngine.lastLeftRightSearch?.character, "6")
        XCTAssertEqual(asNormalModeMock.functionCalled, "F(times:to:on:)")
        XCTAssertEqual(asNormalModeMock.relevantParameter, "6")
    }
    
    func test_that_if_the_LastLeftRightMotion_called_was_T_then_it_calls_t_with_the_right_character_to_search_for() {
        kindaVimEngine.handle(keyCombination: KeyCombination(vimKey: .T))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .nine))
        
        applyMoveBeingTested()
        
        XCTAssertEqual(kindaVimEngine.lastLeftRightSearch?.motion, "T")
        XCTAssertEqual(kindaVimEngine.lastLeftRightSearch?.character, "9")
        XCTAssertEqual(asNormalModeMock.functionCalled, "t(times:to:on:)")
        XCTAssertEqual(asNormalModeMock.relevantParameter, "9")
    }
    
    func test_that_if_the_LastLeftRightMotion_called_was_t_then_it_calls_T_with_the_right_character_to_search_for() {
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .t))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .p))
        
        applyMoveBeingTested()
        
        XCTAssertEqual(kindaVimEngine.lastLeftRightSearch?.motion, "t")
        XCTAssertEqual(kindaVimEngine.lastLeftRightSearch?.character, "p")
        XCTAssertEqual(asNormalModeMock.functionCalled, "T(times:to:on:)")
        XCTAssertEqual(asNormalModeMock.relevantParameter, "p")
    }
    
    func test_that_it_keeps_Vim_in_NormalMode() {
        applyMoveBeingTested()
                
        XCTAssertEqual(kindaVimEngine.currentMode, .normal)
    }
    
    func test_that_it_resets_the_count() {
        applyMoveBeingTested()
                
        XCTAssertNil(kindaVimEngine.count)
    }

}
