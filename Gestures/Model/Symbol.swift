import SwiftUI

struct SymbolModel: Identifiable {
    let id = UUID()
    let name: String
    var color: Color = Color.gray
    var isFavorite: Bool = false

    mutating func toggleFavorite() {
        isFavorite.toggle()
    }

    mutating func setColor() {
        let randomColor = Color(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1)
        )
        color = randomColor
    }
}
