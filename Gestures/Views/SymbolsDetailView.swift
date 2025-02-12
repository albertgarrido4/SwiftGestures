import SwiftUI

struct SymbolDetailView: View {
    @Binding var symbol: SymbolModel
    @ObservedObject var viewModel: SymbolViewModel
    @State private var isDragging = false
    
    var body: some View {
        VStack {
            Text(isDragging ? symbol.name : "")
                .font(.title)
                .opacity(isDragging ? 1 : 0)
                .animation(.easeInOut, value: isDragging)
            
            Image(systemName: symbol.name)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(symbol.color)
                .gesture(
                    DragGesture()
                        .onChanged { _ in isDragging = true }
                        .onEnded { _ in isDragging = false }
                )
                .gesture(
                    LongPressGesture()
                        .onEnded { _ in
                            viewModel.setColor(for: symbol)
                        }
                )
        }
        .padding()
        .navigationTitle(symbol.name)
    }
}
