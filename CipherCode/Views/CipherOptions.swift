//
//  CipherOptions.swift
//  CipherCode
//
//  Created by Doston Rustamov on 16/01/22.
//

import SwiftUI

struct CipherOptions: View {
    
    @State var show = false
    // MARK: DONT FORGET TO ADD AT PRODUCTION #1
    //var welcomeAnimation: Namespace.ID
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .bottom) {
                    Rectangle()
                        // MARK: DONT FORGET TO ADD AT PRODUCTION #2
                        //.matchedGeometryEffect(id: "stack", in: welcomeAnimation)
                        .foregroundColor(.yellow)
                        .frame(width: UIScreen.main.bounds.width,
                        height: 150)
                        
                    Text("Cipher Your Text")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .padding()
                }
                List {
                    HStack {
                        NavigationLink("Caesar Cipher", destination: CipherPage())
                    }
                }
                .offset(y: -10)
                Spacer()
            }
            .ignoresSafeArea()
        }
        
    }
}

struct CipherOptions_Previews: PreviewProvider {
    static var previews: some View {
        CipherOptions()
    }
}
