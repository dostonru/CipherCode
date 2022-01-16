//
//  CipherPage.swift
//  CipherCode
//
//  Created by Doston Rustamov on 16/01/22.
//

import SwiftUI

struct CipherPage: View {
    @StateObject var caesarCipherVM =  CaesarCipherViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            TextEditor(text: $caesarCipherVM.text)
                .padding()
                .frame(width: .infinity, height: 300)
            Divider()
            Text(caesarCipherVM.caesar(value: caesarCipherVM.text,shift: 3))
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
