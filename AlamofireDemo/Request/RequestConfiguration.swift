/*
 File: RequestConfiguration.swift
 Abstract: 网络请求配置类
 Version: 1.0
 Created By: 邱 育良
 Copyright (C) 2018 Qiu Yuliang. All Rights Reserved.
 
 */

import UIKit

typealias RequestHTTPHeaderField = () -> [String : String]

@objc enum RequestMethod: Int {
    case Get
    case Post
}

class RequestConfiguration: NSObject {
    
    
    /// baseURL
    var baseURL: String?
    /// 请求头
    var requestHTTPHeaderField : RequestHTTPHeaderField?
    /// 请求方法
    var requestMethod : RequestMethod = .Get
    /// 超时时间
    var timeoutIntervalForRequest: TimeInterval = 20
    
    // MARK: - 单例
    static let sharedInstance = RequestConfiguration()
    private override init() {}
}
