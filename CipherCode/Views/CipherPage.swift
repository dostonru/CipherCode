//
//  CipherPage.swift
//  CipherCode
//
//  Created by Doston Rustamov on 16/01/22.
//

import SwiftUI

struct CipherPage: View {
    @State var text: String = ""
    
    func caesar(value: String, shift: Int) -> String {
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
    
    var body: some View {
        VStack(alignment: .leading) {
            TextEditor(text: $text)
                .padding()
                .frame(width: .infinity, height: 300)
            Divider()
            Text(caesar(value: text,shift: 3))
                .textSelection(.enabled)
                .padding()
            Spacer()
        }
        .navigationTitle("Caesar Cipher")
    }
}

struct CipherPage_Previews: PreviewProvider {
    static var previews: some View {
        CipherPage()
    }
}
