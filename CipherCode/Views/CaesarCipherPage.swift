//
//  CipherPage.swift
//  CipherCode
//
//  Created by Doston Rustamov on 16/01/22.
//

import SwiftUI

struct CaesarCipherPage: View {
    @StateObject var caesarCipherVM =  CaesarCipherViewModel()
    @State var bool = true
    var body: some View {
        VStack(alignment: .leading) {
            TextEditor(text: $caesarCipherVM.text)
                .padding()
                .frame(height: 300)
            
            Divider()
            Text(caesarCipherVM.reverseCaesar ? caesarCipherVM.caesarDecode(value: caesarCipherVM.text,shift: 3) : caesarCipherVM.caesarEncode(value: caesarCipherVM.text,shift: 3))
                .textSelection(.enabled)
                .padding()
            Spacer()
        }
        .navigationTitle("Caesar Cipher")
        .toolbar {
            HStack {
                Spacer()
                Image(systemName: "arrow.left.and.right.circle.fill")
                    .font(.system(size: 20))
                    .padding()
                    .onTapGesture {
                        caesarCipherVM.reverseCaesar.toggle()
                    }
            }
        
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CipherPage_Previews: PreviewProvider {
    static var previews: some View {
        CaesarCipherPage()
    }
}
