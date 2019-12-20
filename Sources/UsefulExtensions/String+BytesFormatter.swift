import Foundation

public extension String {
  static func stringFromBytes(_ bytes: Int64) -> String {
    let bcf = ByteCountFormatter()
    bcf.allowedUnits = [.useGB, .useMB]
    bcf.countStyle = .file
    return bcf.string(fromByteCount: bytes)
  }
}
