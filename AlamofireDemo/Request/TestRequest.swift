//
//  TestRequest.swift
//  AlamofireDemo
//
//  Created by 邱育良 on 2018/1/18.
//  Copyright © 2018年 www.qiuyuliang.com. All rights reserved.
//

import UIKit

class TestRequest: Request, RequestProtocol {
    
    func baseURL() -> String {
        return "https://www.apple.com"
    }
    
    func requestMethod() -> RequestMethod {
        return .Get
    }
    
    
}
