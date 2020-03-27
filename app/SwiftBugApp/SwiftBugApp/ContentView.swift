import SwiftUI
import package

struct ContentView: View {
  var body: some View {
    VStack {
      LoginForm()
    }.breaks()
      .padding(.horizontal, 30)
  }
}

private struct LoginForm: View {
  var body: some View {
    VStack {
      EmptyView()
    }.padding()
  }
}
