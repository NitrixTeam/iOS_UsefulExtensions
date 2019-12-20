import UIKit

public extension UIScreen {
  var isLandscape: Bool {
    return bounds.width > bounds.height
  }
  
  var isPortrait: Bool {
    return !isLandscape
  }
}
