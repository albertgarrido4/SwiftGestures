import SwiftUI

class SymbolViewModel: ObservableObject {
    @Published var symbols: [SymbolModel] = [
        SymbolModel(name: "star"),
        SymbolModel(name: "heart"),
        SymbolModel(name: "flame"),
        SymbolModel(name: "bolt"),
        SymbolModel(name: "moon"),
        SymbolModel(name: "sun.max")
    ]
    
    /// Alterna el estado de favorito de un símbolo
    func toggleFavorite(for symbol: SymbolModel) {
        if let index = symbols.firstIndex(where: { $0.id == symbol.id }) {
            symbols[index].isFavorite.toggle()
            objectWillChange.send()  // Notifica a SwiftUI sobre los cambios
        }
    }
    
    /// Cambia el color de un símbolo de manera aleatoria
    func setColor(for symbol: SymbolModel) {
        if let index = symbols.firstIndex(where: { $0.id == symbol.id }) {
            symbols[index].setColor()
            objectWillChange.send()
        }
    }
}
