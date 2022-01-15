

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: DataModel

    var body: some View {
        let model = DataModel.sample
        let interactor = TripListInteractor(model: model)
        let presenter = TripListPresenter(interactor: interactor)
        NavigationView {
            TripListView(presenter: presenter)
        }
    }
}

#if DEBUG
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            let model = DataModel.sample
            return ContentView()
                .environmentObject(model)
        }
    }
#endif
