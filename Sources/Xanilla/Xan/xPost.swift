import Foundation

public func xPost(request: Dictionary<String, Any>, endpoint: String, method: String ) {
    
    let http_method = "POST"
    let time_out = 30
    
    let url = URL(string: endpoint)
    var urlReq = URLRequest(url: url!)
    
    // localhost and test would mishave if these steps were not followed
    // step 1: define JSON
    // step 2: give json a content type
    // step 3: define http Method as POST
    urlReq.httpBody = try? JSONSerialization.data(withJSONObject: request, options: .prettyPrinted)
    urlReq.addValue("application/json", forHTTPHeaderField: "Content-Type")
    urlReq.httpMethod = http_method
    urlReq.timeoutInterval = TimeInterval(time_out)
    
    let task = URLSession.shared.dataTask(with: urlReq ) { ( returndata, response, error ) in
        
        var status = 400
        if response != nil {
            let result = response as! HTTPURLResponse
            status = result.statusCode
        }
        
        if status == 200 {
            
            do { let result =
                try JSONSerialization.jsonObject(with: returndata!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String : Any]
                
                print(result)
                if method == "login" {
                    xResume()
                } else if method == "resume" {
                   //
                } else if method == "channels" {
                    //
                }
                
            } catch {
            }
        } else {
        }
    }
    
    task.resume()
    
}
