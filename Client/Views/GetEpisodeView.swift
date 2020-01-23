import SwiftUI
import Apollo

struct GetEpisodeView: View {
  
  @EnvironmentObject private var client: ApolloClient
  
  var body: some View {
    EmptyView()
      .navigationBarTitle("Episode")
  }
}

struct GetEpisodeView_Previews: PreviewProvider {
  static var previews: some View {
   GetEpisodeView()
  }
}
