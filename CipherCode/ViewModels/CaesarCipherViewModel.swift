//
//  .swift
//  CipherCode
//  CaesarCipherViewModel
//  Created by Doston Rustamov on 16/01/22.
//

import Foundation

class CaesarCipherViewModel: ObservableObject {
    @Published var text: String = "Example"
    @Published var reverseCaesar = false
    
    func caesarEncode(value: String, shift: Int) -> String {
        var result = [Character]()
        
        for u in value.utf8 {
            let s = Int(u) + shift
            if s > 97 + 25 {
                result.append(Character(UnicodeScalar(s - 26)!))
            } else if s < 97 {
                result.append(Character(UnicodeScalar(s + 26)!))
            } else {
                result.append(Character(UnicodeScalar(s)!))
            }
        }
        return String(result)
    }
    
    func caesarDecode(value: String, shift: Int) -> String {
        var result = [Character]()
        
        for u in value.utf8 {
            let s = Int(u) - shift
            if s > 97 + 25 {
                result.append(Character(UnicodeScalar(s - 26)!))
            } else if s < 97 {
                result.append(Character(UnicodeScalar(s + 26)!))
            } else {
                result.append(Character(UnicodeScalar(s)!))
            }
        }
        return String(result)
    }
}
