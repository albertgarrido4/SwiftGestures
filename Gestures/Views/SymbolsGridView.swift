import SwiftUI

struct SymbolsGridView: View {
    @StateObject private var viewModel = SymbolViewModel()
    
    let columns = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.symbols.indices, id: \.self) { index in
                        NavigationLink(destination: SymbolDetailView(symbol: $viewModel.symbols[index], viewModel: viewModel)) {
                            VStack {
                                Image(systemName: viewModel.symbols[index].name)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(viewModel.symbols[index].color)
                                
                                Button(action: {
                                    viewModel.toggleFavorite(for: viewModel.symbols[index])
                                }) {
                                    Image(systemName: viewModel.symbols[index].isFavorite ? "heart.fill" : "heart")
                                        .foregroundColor(viewModel.symbols[index].isFavorite ? .red : .gray)
                                }
                            }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("SF Symbols")
            .navigationBarTitleDisplayMode(.inline)        }
    }
}
