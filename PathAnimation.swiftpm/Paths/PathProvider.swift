import SwiftUI

struct PathProvider {
    static let allPaths: [any PathProtocol] = [
        FlowerPath(),
        StarPath(),
        HelloPath(),
        WorldPath()
    ]

    static func icon(for path: any PathProtocol) -> String {
        switch path.name {
        case "Flower":
            return "flower"
        case "Star":
            return "star"
        case "Hello":
            return "hand.wave"
        case "World":
            return "globe"
        default:
            return "questionmark"
        }
    }
}