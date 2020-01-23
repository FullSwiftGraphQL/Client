import SwiftUI

struct HumanView: View {
  let human: HumanFragment

  init(human: HumanFragment) {
    self.human = human
  }
  
  var body: some View {
    Text(human.name)
      .font(.body)
  }
}

struct HumanView_Previews: PreviewProvider {
  static let human = HumanFragment(id: "0", name: "Luke Skywalker", homePlanet: "Tatooine")
  static var previews: some View {
    HumanView(human: human)
  }
}
