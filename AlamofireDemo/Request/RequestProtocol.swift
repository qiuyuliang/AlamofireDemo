/*
 File: RequestProtocol.swift
 Abstract: 网络请求协议,需要具体网络请求对象实行
 Version: 1.0
 Created By: 邱 育良
 Copyright (C) 2018 Qiu Yuliang. All Rights Reserved.
 
 */

import Foundation

@objc protocol RequestProtocol : NSObjectProtocol {
    
	/// 基础url
    @objc optional func baseURL() -> String

    /// 请求方法
    @objc optional func requestMethod() -> RequestMethod
    
    /// 超时时间
    @objc optional func timeoutIntervalForRequest() -> TimeInterval;

    /// 请求参数
    @objc optional func requestParameters() -> [String: Any]?

    /// 请求头
    @objc optional func requestHTTPHeaderField() -> [String : String]?
    
    
}
