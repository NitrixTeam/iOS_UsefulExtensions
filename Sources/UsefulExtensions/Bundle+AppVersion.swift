import Foundation

public extension Bundle {

  private enum InfoType: String {
    case bundleVersion = "CFBundleVersion"
    case bundleShortVersion = "CFBundleShortVersionString"
  }
  
  private static func valueFor(_ key: InfoType) -> String? {
    return self.main.object(forInfoDictionaryKey: key.rawValue) as? String
  }
  
  static var appVersion: String? {
    return self.valueFor(.bundleShortVersion)
  }
  
  static var buildVersion: String? {
    return self.valueFor(.bundleVersion)
  }
  
  static func appVersionWithFormat(_ format: String) -> String? {
    guard let version = Self.appVersion else { return nil }
    return String(format: format, version)
  }
  
  static func appVersionWithBuild() -> String? {
    guard let version = Self.appVersion,
      let buildVersion = Self.buildVersion else { return nil }
    return "\(version)(\(buildVersion))"
  }
  
  static func appVersionWithBuildAndFormat(_ format: String) -> String? {
    guard let version = Self.appVersion,
      let buildVersion = Self.buildVersion else { return nil }
    return String(format: format, version, buildVersion)
  }
}
