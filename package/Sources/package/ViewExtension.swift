import SwiftUI

extension View {
  public func breaks() -> some View {
    self.modifier(MyViewModifier())
  }
}
