import UIKit

public extension UILabel {
  static func labelWith(text: String? = nil,
                        font: UIFont = .systemFont(ofSize: 15),
                        color: UIColor = .black,
                        numberOfLines: Int = 1,
                        alignment: NSTextAlignment = .left) -> UILabel {
    let label = UILabel()
    label.font = font
    label.textColor = color
    label.text = text
    label.numberOfLines = numberOfLines
    label.textAlignment = alignment
    return label
  }
}
