import SwiftUI

struct ContentView: View {
    @State var query = ""
    
    var body: some View {
        HStack {
            HStack {
                TextField("What are you looking for?", text: $query)
                    .textFieldStyle(.roundedBorder)
            }
            Button {
                
            } label: {
                Text("Submit")
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
