func xResume() {
    let endpoint = root + "/resume?channelId=siriushits1&contentType=live" //update this path later
    let method = "resume"
    let request =  ["moduleList": ["modules": [["moduleRequest": ["resultTemplate": "web", "deviceInfo": ["osVersion": "Mac", "platform": "Web", "clientDeviceType": "web", "sxmAppVersion": "3.1802.10011.0", "browser": "Safari", "browserVersion": "11.0.3", "appRegion": "US", "deviceModel": "K2WebClient", "player": "html5", "clientDeviceId": "null"]]]]]] as Dictionary
    xPost(request: request, endpoint: endpoint, method: method )
}
