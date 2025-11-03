import SwiftUI

enum PathProvider {
    static let allPaths: [any PathProtocol] = [
        FlowerPath(),
        StarPath(),
        HelloPath(),
        WorldPath(),
    ]

    static func icon(for path: any PathProtocol) -> String {
        switch path.name {
            case "Flower":
                "camera.macro"
            case "Star":
                "star"
            case "Hello":
                "hand.wave"
            case "World":
                "globe"
            default:
                "questionmark"
        }
    }
}
