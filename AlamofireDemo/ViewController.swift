//
//  ViewController.swift
//  AlamofireDemo
//
//  Created by 邱育良 on 2018/1/18.
//  Copyright © 2018年 www.qiuyuliang.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, RequestDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

//        let testRequest = TestRequest()
//        testRequest.delegate = self;
//        testRequest.resume()
        
        let commonRequest = CommonRequest(url: "https://www.apple.com", method: .Get, parameters: nil)
        commonRequest.delegate = self;
        commonRequest.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController {
    
    /// 请求成功
    func requestDidFinish(_ request: Request) {
        print(request.responseString!)
    }
    
    /// 请求失败
    func request(_ request: Request, didFailWithError error: Error) {
        print(error)
    }
}

