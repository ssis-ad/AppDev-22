import SwiftUI

public struct Ap: Identifiable {
    public var id = UUID()
    public var name: String
    public var author: String
    public var version: String
    public var image: String
}

struct ContentView: View {
    var apps: [Ap] = AppData
    var body: some View {
        NavigationView{
            List{
                ForEach(apps){ app in
                    AppCell(app: app)
                }
                HStack{
                    Spacer()
                    Text("\(apps.count) Apps")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .navigationBarTitle("Student Apps 2021")
            Text("Select an app")
                .font(.largeTitle)
        }
    }
}

struct AppCell: View{
    var app: Ap
    var body: some View{
        NavigationLink(destination: AppDetail(app:app)){
            HStack{
                Image(app.image)
                    .cornerRadius(8)
                VStack(alignment: .leading){
                    Text(app.name)
                    Text("\(app.author)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Text("\(app.version)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}

struct AppDetail: View {
    var app: Ap
    var body: some View {
        Text("Description of the App:")
        Text("\(app.name)")
    }
}

public let AppData = [
    Ap(name:     "Phoneselector",
       author:   "Donyae",
       version:  "1.0",
       image:    "phoneselector"),
    Ap(name:     "Mandelbrot",
       author:   "mk",
       version:  "0.1",
       image:    "mandelbrot")
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

