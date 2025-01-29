import SwiftUI

struct ContentView: View {
    @State var businesses = [Business]()
    @State var query = ""
    var service = DataService()
    
    var body: some View {
        VStack {
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
            
            List(businesses) { biz in
                Text(biz.name ?? "Not given")
            }
        }
        .padding()
        .task {
            businesses = await service.businessSearch()
        }
    }
}

#Preview {
    ContentView()
}
