import Foundation

class AppStore: ObservableObject {
    @Published var apps: [Ap]
    
    init(apps: [Ap] = []) {
        self.apps = apps
    }
}

let appStore = AppStore(apps: AppData)
