import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Testing!")
                .font(.system(size: 70))
                .fontWeight(.heavy)
                .padding()
                .font(.headline)
                .font(.title2)
            .foregroundColor(.mint)
            
            Spacer()
            
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 50))
                .foregroundColor(Color.blue)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
