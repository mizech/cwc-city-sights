import SwiftUI

// faKB45mO0JBidk1fHKzFsy0PwRXovX96pyLhGzI3P8wCIK20y_flU6pKpSbjD7VPf09MF0iVW9pxJdZUjDJBA0X9jRn5S_Mfd-l14v8pA9L6f1hIZ5TG5daMqWdyZ3Yx
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
        .onAppear() {
            
            if let info = Bundle.main.infoDictionary {
                print(info["API_KEY"] as? String)
            }
        }
    }
}

#Preview {
    ContentView()
}
