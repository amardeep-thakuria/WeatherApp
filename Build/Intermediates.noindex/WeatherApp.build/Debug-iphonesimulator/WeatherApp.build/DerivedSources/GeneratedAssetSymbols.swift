import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "clear sky" asset catalog image resource.
    static let clearSky = DeveloperToolsSupport.ImageResource(name: "clear sky", bundle: resourceBundle)

    /// The "clouds" asset catalog image resource.
    static let clouds = DeveloperToolsSupport.ImageResource(name: "clouds", bundle: resourceBundle)

    /// The "cold" asset catalog image resource.
    static let cold = DeveloperToolsSupport.ImageResource(name: "cold", bundle: resourceBundle)

    /// The "haze" asset catalog image resource.
    static let haze = DeveloperToolsSupport.ImageResource(name: "haze", bundle: resourceBundle)

    /// The "hot" asset catalog image resource.
    static let hot = DeveloperToolsSupport.ImageResource(name: "hot", bundle: resourceBundle)

    /// The "rainy" asset catalog image resource.
    static let rainy = DeveloperToolsSupport.ImageResource(name: "rainy", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "clear sky" asset catalog image.
    static var clearSky: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .clearSky)
#else
        .init()
#endif
    }

    /// The "clouds" asset catalog image.
    static var clouds: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .clouds)
#else
        .init()
#endif
    }

    /// The "cold" asset catalog image.
    static var cold: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cold)
#else
        .init()
#endif
    }

    /// The "haze" asset catalog image.
    static var haze: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .haze)
#else
        .init()
#endif
    }

    /// The "hot" asset catalog image.
    static var hot: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .hot)
#else
        .init()
#endif
    }

    /// The "rainy" asset catalog image.
    static var rainy: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .rainy)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "clear sky" asset catalog image.
    static var clearSky: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .clearSky)
#else
        .init()
#endif
    }

    /// The "clouds" asset catalog image.
    static var clouds: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .clouds)
#else
        .init()
#endif
    }

    /// The "cold" asset catalog image.
    static var cold: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .cold)
#else
        .init()
#endif
    }

    /// The "haze" asset catalog image.
    static var haze: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .haze)
#else
        .init()
#endif
    }

    /// The "hot" asset catalog image.
    static var hot: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .hot)
#else
        .init()
#endif
    }

    /// The "rainy" asset catalog image.
    static var rainy: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .rainy)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

