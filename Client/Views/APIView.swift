import SwiftUI
import Apollo

struct APIView: View {
  
  @State private var showEpisode = false
  @State private var showHero = false
  @State private var showHuman = false
  @State private var showDroid = false
  @State private var showSearch = false
  @State private var showQuery = false
  
  var body: some View {
    List {
      NavigationLink("Episode", destination: GetEpisodeView(), isActive: $showEpisode)
      NavigationLink("Hero", destination: GetHeroView(episodes: []), isActive: $showHero)
      NavigationLink("Human", destination: EmptyView(), isActive: $showHuman)
      NavigationLink("Droid", destination: EmptyView(), isActive: $showDroid)
      NavigationLink("Search", destination: EmptyView(), isActive: $showSearch)
      NavigationLink("Query", destination: EmptyView(), isActive: $showQuery)
    }
    .navigationBarTitle("Star Wars API")
  }
  
}

struct APIView_Previews: PreviewProvider {
  static var previews: some View {
    APIView()
  }
}
