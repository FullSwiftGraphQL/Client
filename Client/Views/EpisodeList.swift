import SwiftUI

struct EpisodeList: View {
  let episodes: [Episode]
  
  init(episodes: [Episode]) {
    self.episodes = episodes
  }
  
  var body: some View {
    ForEach(episodes, id: \.rawValue) { episode in
      Button(episode.rawValue) { print("episode: ", episode) }
    }
  }
}

struct EpisodeList_Previews: PreviewProvider {
  static var previews: some View {
    EpisodeList(episodes: [])
  }
}
