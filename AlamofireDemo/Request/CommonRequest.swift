/*
 File: CommonRequest.swift
 Abstract: 通用请求类
 Version: 1.0
 Created By: 邱 育良
 Copyright (C) 2018 Qiu Yuliang. All Rights Reserved.
 
 */

import UIKit

class CommonRequest: Request, RequestProtocol {
    
    private var url : String?
    private var method : RequestMethod?
    private var parameters: [String : AnyObject]?
    private var header: [String : String]?
    
    public convenience init(url: String, method: RequestMethod ,parameters: [String : AnyObject]? = nil, headers: [String : String]? = nil) {
        self.init()
        
        
        self.url = url
        self.method = method
        self.parameters = parameters
        self.header = headers
        
    }
    
    func baseURL() -> String {
        return url!
    }
    
    func requestMethod() -> RequestMethod {
        return method!
    }
    
    func requestParameters() -> [String : Any]? {
        return parameters
    }
    
    func requestHTTPHeaderField() -> [String : String]? {
        return header
    }

}
