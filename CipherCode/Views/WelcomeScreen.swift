import SwiftUI

struct WelcomeScreen: View {
    
    // MARK: Varivales
    @State private var opacity: Double = 1.0
    
    // MARK: Welcome Screen
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("Cipher Your Text")
                    .font(.title)
                    .fontWeight(.bold)
                Text("open the world of secret messaging")
                    .font(.subheadline)
                    .fontWeight(.thin)
                
            }
            .padding()
            .frame(width: UIScreen.main.bounds.width)
            .background(Color.yellow)
            
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

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
