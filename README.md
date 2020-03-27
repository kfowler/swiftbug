= XCode 11.4(11E146) seg fault compiling simple SwiftUI App&Package

This is some sample code to demonstrate a segfault in swift-5.2/XCode 11.4

  - package is a swift package for ios 13. It contains a view modifier.
  - SwiftBugApp is an out-of-the-box SwiftUI App that uses the view modifier.
  - SwiftBugApp has a ContentView with a private subview:

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

Attempting to compile this file with XCode 11.4(11E146) results in swift segfaulting.

  - Removing the private modifier fixes this issue.
  - Doesn't happen when the view modifier is in the app.
