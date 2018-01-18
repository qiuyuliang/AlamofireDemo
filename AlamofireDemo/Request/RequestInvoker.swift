/*
 File: RequestInvoker.swift
 Abstract: 网络请求调用类
 Version: 1.0
 Created By: 邱 育良
 Copyright (C) 2018 Qiu Yuliang. All Rights Reserved.
 
 */

import UIKit
import Alamofire

class RequestInvoker: NSObject {
    
    private var requestsQueue: [String : Request] = [:]
    
    // MARK: - 单例
    static let sharedInstance = RequestInvoker()
    private override init() {}
    
    public func addRequest(_ request: Request) {
        
        let requestProtocol = request.child
        let baseURL = requestProtocol?.baseURL?()


        let parameters = requestProtocol?.requestParameters?()
        
        let headers = requestProtocol?.requestHTTPHeaderField?()


        var method: HTTPMethod
        switch requestProtocol?.requestMethod?() {
            case .Get?:
                method = .get
            case .Post?:
                method = .post
            case .none:
                method = .get
        }
        
        let dataRequest = Alamofire.request(baseURL!, method: method, parameters: parameters, headers: headers)
        
        let taskIdentifier = String(stringInterpolationSegment: dataRequest.task?.taskIdentifier)
        
        requestsQueue[taskIdentifier] = request
        
        
        dataRequest.responseData { (responseData) in
            
            request.responseData = responseData.data
            
            
            
            if responseData.error != nil {
                request.delegate?.request?(request, didFailWithError: responseData.error!)
            } else {
                request.delegate?.requestDidFinish?(request)
            }
            
            self.requestsQueue.removeValue(forKey: taskIdentifier)
        }
    }
    
    public func cancelRequest(_ request: Request) {
        
    }

}
