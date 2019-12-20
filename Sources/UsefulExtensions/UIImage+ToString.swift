import UIKit

public extension UIImage {
  func toString() -> String {
    let data: Data? = self.pngData()
    guard let strBase64 = data?.base64EncodedString(options: .endLineWithLineFeed) else{
      fatalError("Error: Convert image to string failed")
    }
    return strBase64
  }
}
