import SwiftUI
import Apollo

struct GetHeroView: View {
  
  private let episodes: [Episode]
  
  @EnvironmentObject private var client: ApolloClient

  init(episodes: [Episode]) {
    self.episodes = episodes
  }
  
  var body: some View {
    List {
      EpisodeList(episodes: episodes)
      Button("No episode", action: fetchHero)
    }
    .navigationBarTitle("Hero")
  }
  
  private func fetchHero() {
    let getHero = GetHeroQuery()
    client.fetch(query: getHero) { result in
      print(result)
    }
  }
}

struct GetHeroView_Previews: PreviewProvider {
  static var previews: some View {
    GetHeroView(episodes: [])
  }
}
