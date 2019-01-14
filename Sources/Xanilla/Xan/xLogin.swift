let root = "https://player.siriusxm.com/rest/v2/experience/modules"
let auth = "/modify/authentication"

let proxy = "0.0.0.0"
let port = ":8000/"
let secure = "https://"
let insecure = "http://"
let m3u8 = ".m3u8"
let slashGet = "/get"

let gAkamai = "https://siriusxm-priprodlive.akamaized.net"
var gToken = ""
var gChannels = Dictionary<String, Any>()

var gUser = ""
var gPass = ""

public func xLogin() {
    //Login
    let endpoint = root + auth
    let method = "login"
    let loginReq = ["moduleList": ["modules": [["moduleRequest": ["resultTemplate": "web", "deviceInfo": ["osVersion": "Mac", "platform": "Web", "sxmAppVersion": "3.1802.10011.0", "browser": "Safari", "browserVersion": "11.0.3", "appRegion": "US", "deviceModel": "K2WebClient", "clientDeviceId": "null", "player": "html5", "clientDeviceType": "web"], "standardAuth": ["username": gUser , "password": gPass ]]]]]] as Dictionary
    
    xPost(request: loginReq, endpoint: endpoint, method: method )
    
    //get channels and builds channel menu app section
    //NotificationCenter.default.addObserver(self, selector: #selector(didGetChannelData(_:)), name: .didGetChannelData, object: nil)
}

//Create the Menu
//@objc func didGetChannelData(_ notification: Notification)
//{
    //let data = notification.userInfo as! Dictionary<String, Any>
    //do something with the data
//}
