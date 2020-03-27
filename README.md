XCode 11.4(11E146) seg fault compiling simple SwiftUI App&Package

package is an iOS 13 package
SwiftBugApp is an out-of-the-box SwiftUI App

SwiftBugApp has a ContentView with a private subview:

```
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
```

Attempting to compile this file with XCode 11.4(11E146) results in the error
below.

Removing the private modifier fixes this issue.
