import Foundation

get("key", "1") { (request) in
    
    let key = "0Nsco7MAgxowGvkUT8aYag=="
    let data = Data(base64Encoded: key)
    let keyCode = String(decoding: data!, as: UTF8.self)
    
    return keyCode
}

get("user", *, "pass", *) { (request, user: String, pass: String) in
    
    gUser = user;
    gPass = pass;
    
    xLogin()
    
    return ""
}


