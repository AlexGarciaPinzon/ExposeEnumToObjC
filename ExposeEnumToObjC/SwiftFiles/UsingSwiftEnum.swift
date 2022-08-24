//
//  UsingSwiftEnum.swift
//  ExposeEnumToObjC
//
//  Created by Alex Garcia on 23/08/22.
//

import Foundation

//@objc
public class UsingSwiftEnum: NSObject {
    
    //@objc
    static public let shared = UsingSwiftEnum()
    
    //@objc
    public let display = SwiftFile.shared
    
    //@objc
    func trackSocial(platforma:socialPlatform){
        display.trackSocial(platform: platforma)
    }
}
