@testable import kindaVim
import KeyCombination
import XCTest


class KSNM_slash_Delete_Tests: KSNM_BaseTests {
    
    private func deleteCharacterFromSearchString() {
        kindaVimEngine.handle(keyCombination: KeyCombination(vimKey: .eight))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .slash))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .six))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .delete))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .w))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .return))
    }
        
    private func deleteSlashItself() {
        kindaVimEngine.handle(keyCombination: KeyCombination(vimKey: .eight))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .slash))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .delete))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .w))
        kindaVimEngine.handle(keyCombination: KeyCombination(key: .return))
    }
    
}


// deleteCharacterFromSearchString
extension KSNM_slash_Delete_Tests {
    
    func test_that_for_deleteCharacterFromSearchString_it_calls_the_correct_function_on_accessibility_strategy() {
        deleteCharacterFromSearchString()
        
        XCTAssertEqual(ksNormalModeMock.functionCalled, "slash(to:)")
        XCTAssertEqual(ksNormalModeMock.relevantParameter, "w")

    }
    
    func test_that_for_deleteCharacterFromSearchString_it_keeps_Vim_in_NormalMode() {
        deleteCharacterFromSearchString()
        
        XCTAssertEqual(kindaVimEngine.currentMode, .normal)
    }
    
    func test_that_for_deleteCharacterFromSearchString_it_resets_the_count() {
        deleteCharacterFromSearchString()
        
        XCTAssertNil(kindaVimEngine.count)
    }

}


// deleteSlashItself
extension KSNM_slash_Delete_Tests {
    
    func test_that_for_deleteSlashItself_it_calls_the_correct_function_on_accessibility_strategy() {
        deleteSlashItself()
        
        XCTAssertEqual(ksNormalModeMock.functionCalled, "return(times:_:)")
        XCTAssertEqual(ksNormalModeMock.relevantParameter, "")

    }
    
    func test_that_for_deleteSlashItself_it_stays_in_NormalMode() {
        deleteSlashItself()
        
        XCTAssertEqual(kindaVimEngine.currentMode, .normal)
    }
    
    func test_that_for_deleteSlashItself_it_resets_the_count() {
        deleteSlashItself()
        
        XCTAssertNil(kindaVimEngine.count)
    }

}
