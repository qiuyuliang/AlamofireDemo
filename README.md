# AlamofireDemo
对Alamofire的简单封装

## RequestConfiguration
- 单例，需要在网络请求前配置一些默认、通用信息，如服务器地址、请求头、超时时间等

## RequestInvoker
- 具体网络调用者，一般不直接使用

## RequestDelegate
- 网络请求结果回调，提供请求成功和请求失败

## RequestProtocol
- 单个网络请求的具体配置，包括请求参数、请求头、请求方法

## CommonRequest
- 如果你不想子类话一个网络请求对象的话，可以直接使用该类

## TestRequest
- 没用直接使用CommonRequest，而是自己创建一个,并实现协议RequestProtocol的一些方法

```
class TestRequest: Request, RequestProtocol {
    
    func baseURL() -> String {
        return "https://www.apple.com"
    }
    func requestMethod() -> RequestMethod {
        return .Get
    }
}
```

- 初始化设置回调代理

```
let testRequest = TestRequest()
testRequest.delegate = self;
testRequest.resume()
```

- 代理方法
```
/// 请求成功
func requestDidFinish(_ request: Request) {
    print(request.responseString!)
}

/// 请求失败
func request(_ request: Request, didFailWithError error: Error) {
    print(error)
}

```




