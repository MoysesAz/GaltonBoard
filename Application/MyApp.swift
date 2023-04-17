import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            DialogComponent(imageName: .francis, dialog: .galton)
        }
    }
}
