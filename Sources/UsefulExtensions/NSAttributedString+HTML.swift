import Foundation

public extension NSAttributedString {
  convenience init?(html: String) {
    guard let data = html.data(using: String.Encoding.unicode, allowLossyConversion: false) else {
      return nil
    }
    guard let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) else {
      return nil
    }
    self.init(attributedString: attributedString)
  }
}
