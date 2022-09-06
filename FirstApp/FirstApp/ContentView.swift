import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("UI DESIGN")
                    .font(.title)
                    .fontWeight(.bold)
                .foregroundColor(Color("accent"))
                Text(/*@START_MENU_TOKEN@*/"Certificate"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
            }
            Image("Background")
        }.background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
