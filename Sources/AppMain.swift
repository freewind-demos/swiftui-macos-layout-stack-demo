import SwiftUI

@main
struct LayoutStackApp: App {
    var body: some Scene {
        Window("布局 HStack/VStack/ZStack", id: "main") {
            ContentView()
        }
        .defaultSize(width: 600, height: 500)
    }
}
