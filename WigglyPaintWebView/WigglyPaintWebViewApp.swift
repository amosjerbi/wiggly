import SwiftUI

@main
struct WigglyPaintWebViewApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

struct RootView: View {
    var body: some View {
        if let url = Bundle.main.url(forResource: "wigglypaint", withExtension: "html") {
            WebView(url: url)
                .ignoresSafeArea()
        } else {
            Text("Missing wigglypaint.html in bundle")
                .padding()
        }
    }
}
