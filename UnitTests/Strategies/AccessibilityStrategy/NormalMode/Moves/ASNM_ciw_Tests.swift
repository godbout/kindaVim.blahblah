@testable import kindaVim
import XCTest


// ciw uses only the TextEngine.innerWord func.
// this is already tested, so here we have only a bunch of
// tests for extra caution, but most of them are already done
// in TE.innerWord
class ASNM_ciw_Tests: ASNM_BaseTests {
    
    private func applyMove(on element: AccessibilityTextElement?) -> AccessibilityTextElement? {
        return asNormalMode.ciw(on: element) 
    }
    
}


// the 3 special cases:
// - empty TextElement
// - caret at the end of TextElement but not on empty line
// - caret at the end of TextElement on own empty line
extension ASNM_ciw_Tests {
    
    func test_that_if_the_TextElement_is_empty_it_does_not_move() {
        let text = ""
        let element = AccessibilityTextElement(
            role: .textArea,
            value: text,
            length: 0,
            caretLocation: 0,
            selectedLength: 0,
            selectedText: "",
            currentLine: AccessibilityTextElementLine(
                fullValue: text,
                number: 1,
                start: 0,
                end: 0
            )
        )
        
        let returnedElement = applyMove(on: element)
        
        XCTAssertEqual(returnedElement?.caretLocation, 0)
        XCTAssertEqual(returnedElement?.selectedLength, 0)
        XCTAssertNil(returnedElement?.selectedText)
    }
    
    func test_that_if_the_caret_is_at_the_last_character_of_the_TextElement_but_not_on_an_empty_line_it_works_and_deletes_the_last_word() {
        let text = """
caret is
gonna be at the end
"""
        let element = AccessibilityTextElement(
            role: .textArea,
            value: text,
            length: 28,
            caretLocation: 28,
            selectedLength: 0,
            selectedText: "",
            currentLine: AccessibilityTextElementLine(
                fullValue: text,
                number: 2,
                start: 9,
                end: 28
            )
        )
        
        let returnedElement = applyMove(on: element)
        
        XCTAssertEqual(returnedElement?.caretLocation, 25)
        XCTAssertEqual(returnedElement?.selectedLength, 3)
        XCTAssertEqual(returnedElement?.selectedText, "")
    }
    
    func test_that_if_the_caret_is_at_the_last_character_of_the_TextElement_and_on_an_empty_line_it_works_and_deletes_the_last_character_of_the_previous_line() throws {
        throw XCTSkip("weird case. the test is correct but no implementation yet. currently the implementation just returns the element")
        
        let text = """
caret is on its
own empty
line

"""
        let element = AccessibilityTextElement(
            role: .textArea,
            value: text,
            length: 31,
            caretLocation: 31,
            selectedLength: 0,
            currentLine: AccessibilityTextElementLine(
                fullValue: text,
                number: 4,
                start: 31,
                end: 31
            )
        )
        
        let returnedElement = applyMove(on: element)
        
        XCTAssertEqual(returnedElement?.caretLocation, 29)
        XCTAssertEqual(returnedElement?.selectedLength, 2)
        XCTAssertEqual(returnedElement?.selectedText, "")
    }
    
}


// Both
extension ASNM_ciw_Tests {
    
    func test_that_it_can_delete_a_word_separated_by_spaces() {
        let text = "a sentence with a word, or more..."
        let element = AccessibilityTextElement(
            role: .textField,
            value: text,
            length: 34,
            caretLocation: 12,
            selectedLength: 1,
            selectedText: "i",
            currentLine: AccessibilityTextElementLine(
                fullValue: text,
                number: 1,
                start: 0,
                end: 34
            )
        )
        
        let returnedElement = applyMove(on: element)
        
        XCTAssertEqual(returnedElement?.caretLocation, 11)
        XCTAssertEqual(returnedElement?.selectedLength, 4)
        XCTAssertEqual(returnedElement?.selectedText, "")      
    }    
    
    func test_that_it_deletes_a_single_space_when_the_space_is_alone() {
        let text = "a sentence with a word, or more..."
        let element = AccessibilityTextElement(
            role: .textField,
            value: text,
            length: 34,
            caretLocation: 15,
            selectedLength: 1,
            selectedText: " ",
            currentLine: AccessibilityTextElementLine(
                fullValue: text,
                number: 1,
                start: 0,
                end: 34
            )
        )
        
        let returnedElement = applyMove(on: element)
        
        XCTAssertEqual(returnedElement?.caretLocation, 15)
        XCTAssertEqual(returnedElement?.selectedLength, 1)
        XCTAssertEqual(returnedElement?.selectedText, "")      
    }
    
    func test_that_it_deletes_up_to_the_beginning_of_a_line() {
        let text = "         hehehehe"
        let element = AccessibilityTextElement(
            role: .textArea,
            value: text,
            length: 17,
            caretLocation: 6,
            selectedLength: 1,
            selectedText: " ",
            currentLine: AccessibilityTextElementLine(
                fullValue: text,
                number: 1,
                start: 0,
                end: 17
            )
        )
        
        let returnedElement = applyMove(on: element)
        
        XCTAssertEqual(returnedElement?.caretLocation, 0)
        XCTAssertEqual(returnedElement?.selectedLength, 9)
        XCTAssertEqual(returnedElement?.selectedText, "")     
    }
    
}


// TextViews
extension ASNM_ciw_Tests {
    
    func test_that_it_stops_at_linefeeds() {
        let text = """
can't go from
one line to      
    the other
"""   
        let element = AccessibilityTextElement(
            role: .textArea,
            value: text,
            length: 45,
            caretLocation: 27,
            selectedLength: 1,
            selectedText: " ",
            currentLine: AccessibilityTextElementLine(
                fullValue: text,
                number: 2,
                start: 14,
                end: 32
            )
        )
        
        let returnedElement = applyMove(on: element)
        
        XCTAssertEqual(returnedElement?.caretLocation, 25)
        XCTAssertEqual(returnedElement?.selectedLength, 6)
        XCTAssertEqual(returnedElement?.selectedText, "")     
    }
    
}
