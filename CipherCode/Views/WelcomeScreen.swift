import SwiftUI

struct WelcomeScreen: View {
    
    // MARK: Varivales
    @State private var opacity: Double  = 1.0
    @State private var changeView: Bool = false
    @Namespace var welcomeAnimation
    // MARK: Welcome Screen
    var body: some View {
        if changeView {
            CipherOptions()
            //CipherOptions(welcomeAnimation: welcomeAnimation)
        }
        else {
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .onTapGesture(count: 2) {
                        withAnimation(.spring(response: 1.0)) {
                            changeView.toggle()
                        }
                    }
                VStack {
                    Spacer()
                    ZStack {
                        Rectangle()
                            .matchedGeometryEffect(id: "stack", in: welcomeAnimation)
                            .foregroundColor(.yellow)
                            .frame(width: UIScreen.main.bounds.width, height: 100)
                            
                        VStack {
                            Text("Cipher Your Text")
                                .font(.title)
                                .fontWeight(.bold)
                            Text("open the world of secret messaging")
                                .font(.subheadline)
                                .fontWeight(.thin)
                        }
                    }
                    
                    Spacer()
                    
                    Label("Double Tap", systemImage: "exclamationmark.circle.fill")
                        .font(.subheadline)
                        .opacity(opacity)
                }
                
                // MARK: Animation
                .onAppear {
                    withAnimation(Animation.linear(duration: 1.5).repeatForever(autoreverses: true)) {
                        opacity = 0.2
                    }
                }
            }
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
