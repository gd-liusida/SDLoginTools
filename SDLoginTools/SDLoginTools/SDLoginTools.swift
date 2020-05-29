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
    
    /// openid
    public var openid: String! {
        didSet {
            self.defaults.set(self.openid, forKey: "wechatkit_openid")
            self.defaults.synchronize()
        }
    }
    /// access token
    public var accessToken: String! {
        didSet {
            self.defaults.set(self.accessToken, forKey: "wechatkit_access_token")
            self.defaults.synchronize()
        }
    }
    /// refresh token
    public var refreshToken: String! {
        didSet {
            self.defaults.set(self.refreshToken, forKey: "wechatkit_refresh_token")
            self.defaults.synchronize()
        }
    }
    
    /// csrf
    public static var csrfState = "73746172626f796368696e61"
    /// A shared instance
    public static let shared: SDLoginWechat = {
        let instalce = SDLoginWechat()
        instalce.openid = instalce.defaults.string(forKey: "wechatkit_openid")
        instalce.accessToken = instalce.defaults.string(forKey: "wechatkit_access_token")
        instalce.refreshToken = instalce.defaults.string(forKey: "wechatkit_refresh_token")
        return instalce
    }()

    /// 检查微信是否已被用户安装
    ///
    /// - Returns: 微信已安装返回true，未安装返回false
    public func isInstalled() -> Bool {
        return WXApi.isWXAppInstalled()
    }
}

