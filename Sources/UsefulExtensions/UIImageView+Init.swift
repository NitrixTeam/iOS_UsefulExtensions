import UIKit

public extension UIImageView {
  static func imageViewWith(image: UIImage? = nil, contentMode: UIView.ContentMode = .scaleAspectFit) -> UIImageView {
    let iv = UIImageView(image: image)
    iv.contentMode = contentMode
    iv.clipsToBounds = true
    return iv
  }
  
  func setRounded(){
    self.layer.cornerRadius = self.frame.size.width/2
    self.clipsToBounds = true
  }
}
