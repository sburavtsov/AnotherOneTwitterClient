// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift

import Foundation
import Rswift
import UIKit

/// This `R` struct is code generated, and contains references to static resources.
struct R: Rswift.Validatable {
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 color palettes.
  struct color {
    private init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 0 files.
  struct file {
    private init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    private init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 0 images.
  struct image {
    private init() {}
  }
  
  private struct intern: Rswift.Validatable {
    static func validate() throws {
      try _R.validate()
    }
    
    private init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    private init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 0 reuse identifiers.
  struct reuseIdentifier {
    private init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
  struct segue {
    private init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 3 storyboards.
  struct storyboard {
    /// Storyboard `AuthScreen`.
    static let authScreen = _R.storyboard.authScreen()
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `MainScreen`.
    static let mainScreen = _R.storyboard.mainScreen()
    
    /// `UIStoryboard(name: "AuthScreen", bundle: ...)`
    static func authScreen(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.authScreen)
    }
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "MainScreen", bundle: ...)`
    static func mainScreen(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.mainScreen)
    }
    
    private init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 0 localization tables.
  struct string {
    private init() {}
  }
  
  private init() {}
}

struct _R: Rswift.Validatable {
  static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(NSLocale.init) ?? NSLocale.currentLocale()
  static let hostingBundle = NSBundle(identifier: "im.mks.ViperExample") ?? NSBundle.mainBundle()
  
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    private init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try mainScreen.validate()
      try authScreen.validate()
    }
    
    struct authScreen: StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = AuthScreenViewController
      
      let authScreenViewController = StoryboardViewControllerResource<AuthScreenViewController>(identifier: "AuthScreenViewController")
      let bundle = _R.hostingBundle
      let name = "AuthScreen"
      
      func authScreenViewController(_: Void) -> AuthScreenViewController? {
        return UIStoryboard(resource: self).instantiateViewController(authScreenViewController)
      }
      
      static func validate() throws {
        if _R.storyboard.authScreen().authScreenViewController() == nil { throw ValidationError(description:"[R.swift] ViewController with identifier 'authScreenViewController' could not be loaded from storyboard 'AuthScreen' as 'AuthScreenViewController'.") }
      }
      
      private init() {}
    }
    
    struct launchScreen: StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIViewController
      
      let bundle = _R.hostingBundle
      let name = "LaunchScreen"
      
      private init() {}
    }
    
    struct mainScreen: StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = MainScreenViewController
      
      let bundle = _R.hostingBundle
      let mainScreenViewController = StoryboardViewControllerResource<MainScreenViewController>(identifier: "MainScreenViewController")
      let name = "MainScreen"
      
      func mainScreenViewController(_: Void) -> MainScreenViewController? {
        return UIStoryboard(resource: self).instantiateViewController(mainScreenViewController)
      }
      
      static func validate() throws {
        if _R.storyboard.mainScreen().mainScreenViewController() == nil { throw ValidationError(description:"[R.swift] ViewController with identifier 'mainScreenViewController' could not be loaded from storyboard 'MainScreen' as 'MainScreenViewController'.") }
      }
      
      private init() {}
    }
    
    private init() {}
  }
  
  private init() {}
}