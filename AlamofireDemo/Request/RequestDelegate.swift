/*
 File: RequestDelegate.swift
 Abstract: 网络请求回调代理方法
 Version: 1.0
 Created By: 邱 育良
 Copyright (C) 2018 Qiu Yuliang. All Rights Reserved.
 
 */

import Foundation

@objc protocol RequestDelegate: NSObjectProtocol {
    
    /// 请求成功
    @objc optional func requestDidFinish(_ request: Request)
    
    /// 请求失败
    @objc optional func request(_ request: Request, didFailWithError error: Error)
}
