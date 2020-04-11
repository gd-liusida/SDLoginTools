//
//  SDLoginTools.swift
//  SDLoginTools
//
//  Created by Liu on 2020/4/11.
//  Copyright © 2020 Sida Liu. All rights reserved.
//

import UIKit

class SDLoginWechat: NSObject {
    /// It use to store openid, access_token, refresh_token
    fileprivate let defaults = UserDefaults.standard
    
    /// A closure used to receive and process request from Third-party
    public typealias Handle = (SDResult<[String: Any], Int32>) -> Void
    
    /// A closure used to receive and process request
    var completionHandler: Handle!
    
//    public static var wechat: (appId: String, link: String) {
//        didSet {
//            WXApi.registerApp(wechat.appId, universalLink: wechat.link)
//        }
//    }
}

