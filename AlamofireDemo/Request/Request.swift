/*
 File: Request.swift
 Abstract: 网络请求基类,需要继承并实现协议RequestProtocol
 Version: 1.0
 Created By: 邱 育良
 Copyright (C) 2018 Qiu Yuliang. All Rights Reserved.
 
 */


import UIKit

class Request: NSObject {
    
    weak var child: RequestProtocol?
    
    weak var delegate: RequestDelegate?
    
    var responseData: Data?
    
    lazy var responseString: String? = {
        let responseString = String(data: responseData!, encoding: String.Encoding.utf8)
        return responseString!
    }()
    
    override init() {
        super.init()
        if self is RequestProtocol {
            child = self as? RequestProtocol
        } else {
            print("your request must conform to protocol RequestProtocol")
        }
    }
    
    let configuration = RequestConfiguration.sharedInstance
    
    public func resume() {
        RequestInvoker.sharedInstance.addRequest(self)
    }
    
    
}
