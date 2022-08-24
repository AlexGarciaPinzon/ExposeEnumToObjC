//
//  SwiftFile.swift
//  ExposeEnumToObjC
//
//  Created by Alex Garcia on 18/08/22.
//
import Foundation

@objc enum socialPlatform:Int, nameOptionEnumProtocol  {
    case twitter
    case facebook
    case instagram
    
    func nameOptionEnumValue <T> () -> T {
        switch self {
        case .twitter: return "Twitter" as! T
        case .facebook: return false as! T
        case .instagram: return 2.65454 as! T
      }
    }
}

protocol nameOptionEnumProtocol {
    func nameOptionEnumValue <T> () -> T
}

@objc
public class SwiftFile: NSObject {
    
    @objc
    static public let shared = SwiftFile()
    
    @objc
    func trackSocial(platform:socialPlatform){
        
        print(platform.nameOptionEnumValue())
    
    }
}

/*
enum socialPlatformSwift:String, nameOptionEnumProtocol {

    case twitter
    case facebook
    case instagram
    
    func nameOptionEnumValue <T> () -> T {
        switch self {
        case .twitter: return "Twitter" as! T
        case .facebook: return "Facebook" as! T
        case .instagram: return 2.65454 as! T
      }
    }
    
}
*/


        /*switch platform {
        case .twitter:
            print(socialPlatformSwift.twitter)
           // print(socialPlatformSwift<Any>.nameOptionEnumText(socialPlatformSwift<Any>.twitter))
        case .facebook:
            print(socialPlatformSwift.facebook)
        case .instagram:
            print(socialPlatformSwift.instagram)
            //print()
            //print(socialPlatformSwift.instagram)
            //let plat = socialPlatformSwift.instagram
            //print(plat.nameOptionEnumValue())
        }*/
//}
    /*
    @objc
    func trackSocialInt(platform:socialPlatform){
        switch platform {
        case .twitter:
            print(socialPlatformSwift<Any>.twitter)
            print(socialPlatformSwift<Any>.nameText(socialPlatformSwift.twitter))
        case .facebook:
            print(socialPlatformSwift<Any>.facebook)
        case .instagram:
            print(socialPlatformSwift<Any>.instagram)
            print(socialPlatformSwift<Any>.instagram)
            let plat = socialPlatformSwift<Any>.instagram
            print(plat.nameText())
            
        }
    }*/
//}

//This was the firs version of the code
/*@objc enum socialPlatform:Int, BaseSelectionType {

    case twitter
    case facebook
    case instagram
    
      func nameText () -> String {
          switch self {
          case .twitter: return "Twitter"
          case .facebook: return "Facebook"
          case .instagram: return "Instagram"
        }
      }
}

enum socialPlatformSwift:String {

    case twitter = "Twitter"
    case facebook = "Facebook"
    case instagram = "Instagram"
    
}

public protocol BaseSelectionType {
    func nameText() -> String
}

@objc
public class SwiftFile: NSObject {
    
    @objc
    static public let shared = SwiftFile()
    
    @objc
    func trackSocial(platform:socialPlatform){
        print(platform.nameText())
    }
}*/
