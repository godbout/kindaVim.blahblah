extension TextEngine {
    
    func endOfWORDBackward(startingAt location: Int, in text: TextEngineText) -> Int {
        guard text.isNotEmpty else { return 0 }
        
        let value = text.value
        
        let anchorIndex = value.utf16.index(value.startIndex, offsetBy: location)
        let startIndex = value.startIndex
        
        for index in value[startIndex..<anchorIndex].indices.reversed() {
            guard index != startIndex else { return 0 }
            guard index != value.index(before: value.endIndex) else { return value.last == "\n" ? (text.endLimit - 1) - text.characterLengthForCharacter(before: location - 1) : text.endLimit }
            let nextIndex = value.index(after: index)
            
            if value[index].isCharacterThatConstitutesAVimWORD {
                if value[nextIndex].isCharacterThatConstitutesAVimWORD {
                    continue
                }
            }
            
            if value[index].isWhitespaceButNotNewline {
                if value[nextIndex].isWhitespace || value[nextIndex].isCharacterThatConstitutesAVimWORD || value[nextIndex].isPunctuationButNotUnderscore || value[nextIndex].isSymbol {
                    continue
                }
            }
            
            if value[index].isNewline {
                let previousIndex = value.index(before: index)
                
                if !value[previousIndex].isNewline {
                    continue
                }                
            }
            
            return value.utf16.distance(from: startIndex, to: index)
        }
        
        return location
    }
    
}
