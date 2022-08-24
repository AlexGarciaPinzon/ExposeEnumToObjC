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
