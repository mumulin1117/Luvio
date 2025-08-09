//
//  ZoomHolecntroller.swift
//  LuvioPamere
//
//  Created by  on 2025/8/7.
//

import UIKit
import WebKit
import SwiftyStoreKit
class ZoomHolecntroller: UIViewController ,WKScriptMessageHandler,WKNavigationDelegate, WKUIDelegate {
    
    var isComePOST:Bool = false
    
    private lazy var errorVierw: UITextField = {
        let lalinfo = UITextField.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width - 60, height: 45))
        lalinfo.borderStyle = .roundedRect
        lalinfo.backgroundColor = .white
        lalinfo.isHidden = true
        lalinfo.textColor = .red
        return lalinfo
    }()
    static var wigBeliever:String?{
        get{
           
            return UserDefaults.standard.object(forKey: "wigBeliever") as? String
        }set{
            UserDefaults.standard.set(newValue, forKey: "wigBeliever")
            
        }
        
    }
    
//    static var wigPioneer:Int?{
//        get{
//            return UserDefaults.standard.object(forKey: "wigPioneer") as? Int
//        }set{
//            UserDefaults.standard.set(newValue, forKey: "wigPioneer")
//        }
//        
//    }
    private lazy var szaokiingView:UIActivityIndicatorView = {
       let large = UIActivityIndicatorView.init(style: .large)
        large.frame.size = CGSize.init(width: 54, height: 54)
        large.tintColor = .white
        
        large.hidesWhenStopped = true
        large.color = .white
        return large
    }()
    private  var ombreBlend:String
    
    
    init(gradientWig: String) {
      
        self.ombreBlend = gradientWig
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let noermal = UIImageView(frame: UIScreen.main.bounds)
        noermal.contentMode = .scaleAspectFill
        noermal.image = UIImage(named: "wigAncestry")
        self.view.addSubview(noermal)
        
        
        self.view.backgroundColor = .black
     
        self.view.addSubview(self.tapeIn)
        tapeIn.navigationDelegate = self
        
        tapeIn.scrollView.contentInsetAdjustmentBehavior = .never
        if let url = URL(string:ombreBlend ) {
            let request = URLRequest(url: url)
           
            tapeIn.load(request)
            
        }
        self.szaokiingView.center = self.view.center
        self.view.addSubview(self.szaokiingView)
        self.szaokiingView.startAnimating()
    }
    
    private var customWig:[String] = Array()
    
  
    func bespokeWig()->WKWebViewConfiguration{
        customWig.append("wigMiracle")
        
        customWig.append("wigHoliday")
        customWig.append("wigSculptor")
        customWig.append("wigTrendsetter")
        customWig.append("handTied")
        customWig.append("gluelessWig")
        
        let readyToWear = WKWebViewConfiguration()
       
        readyToWear.mediaTypesRequiringUserActionForPlayback = []
       
        readyToWear.allowsInlineMediaPlayback = true
        readyToWear.preferences.javaScriptCanOpenWindowsAutomatically = true
        customWig.forEach { info in
            readyToWear.userContentController.add(self, name: info)
        }
        return readyToWear
      
    }
    
    
    private lazy var tapeIn: WKWebView = {
        let sewIn = WKWebView(frame: UIScreen.main.bounds, configuration: self.bespokeWig())
        
       
        sewIn.scrollView.showsVerticalScrollIndicator = false
        
        sewIn.uiDelegate = self
        sewIn.backgroundColor = .clear
        
        sewIn.isHidden = true
        return sewIn
    }()
    
    

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            webView.isHidden = false
            self.szaokiingView.stopAnimating()
        }))
        
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        
        switch message.name {
        case "wigMiracle":
            guard let piece = message.body  as? String else {
                return
            }
            self.view.isUserInteractionEnabled = false
            self.szaokiingView.startAnimating()
            SwiftyStoreKit.purchaseProduct(piece, atomically: true) { psResult in
                self.szaokiingView.stopAnimating()
                
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    
                    self.tapeIn.evaluateJavaScript("wigHoliday()", completionHandler: nil)
                    self.errorVierw.isHidden = false
                    self.errorVierw.textColor = .green
                    self.errorVierw.text =  "Pay successful!"
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                        self.errorVierw.isHidden = true
                    }))
                    
                   
                }else if case .error(let error) = psResult {
                    self.view.isUserInteractionEnabled = true
                    if error.code == .paymentCancelled {
                        
                        return
                    }
                   
                    self.errorVierw.isHidden = false
                    self.errorVierw.textColor = .red
                    self.errorVierw.text =  error.localizedDescription
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                        self.errorVierw.isHidden = true
                    }))
                }
                
            }
        case "wigSculptor":
            if let textileFinesse =  message.body as? String{
                let handDyedTweed = ZoomHolecntroller.init(gradientWig: textileFinesse)
                
                self.navigationController?.pushViewController(handDyedTweed, animated: true)
                
                
            }
        case "handTied":
            if self.isComePOST {
                self.dismiss(animated: true)
            }else{
                self.navigationController?.popViewController(animated: true)
            }
           
        case "gluelessWig":
            ZoomHolecntroller.wigBeliever = nil
//            ZoomHolecntroller.wigPioneer = nil
           
            ( (UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  FrontalWigcscntroller.init()
           
        default: break
        }
    }



    
    class func fusionBond(
     microlink: String,
     quickWeave: [String: Any],
      wigTape: ((Any?) -> Void)?,
     siveGlue: ((Error) -> Void)?
 ) {
     
     guard let solventRemover = URL(string: "http://dreamscape743.xyz/backtwo" +     microlink) else {
                    
         return
     }
     
     var scalpProtector = shineSerum(frizzControl: solventRemover, thermal:     quickWeave)
     var wigFoundation = ["Content-Type": "application/json"]
    
     wigFoundation["key"] = "52541293"
     wigFoundation["token"] = (ZoomHolecntroller.wigBeliever)
     wigFoundation.forEach { scalpProtector.setValue($1, forHTTPHeaderField: $0) }
     
     let stylingGel = URLSessionConfiguration.default
     stylingGel.timeoutIntervalForRequest = 30
     stylingGel.timeoutIntervalForResource = 60
     

    
     URLSession(configuration: stylingGel).dataTask(with: scalpProtector) { data, response, error in
         DispatchQueue.main.async {

             guard let foamWrap = data else {
                             siveGlue?(NSError(domain: "DataError", code: -3, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
                 return
             }

             print("Raw response:", String(data: foamWrap, encoding: .utf8) ?? "Non-UTF8 data")
      
             do {
                 let settingSpray = try JSONSerialization.jsonObject(with: foamWrap, options: [.mutableContainers, .allowFragments])
                                         wigTape?(settingSpray)
             } catch let textureSpray {
  
                             siveGlue?(NSError(
                     domain: "ParseError",
                     code: -4,
                     userInfo: [
                         NSLocalizedDescriptionKey: "Failed to parse : \(textureSpray.localizedDescription)",
                         "rawResponse": String(data: foamWrap, encoding: .utf8) ?? "Non-text data",
                         "underlyingError": textureSpray
                     ]
                 ))
             }
         }
     }.resume()
 }
     
  
     
     private class func shineSerum(frizzControl:URL,thermal: [String: Any]) -> URLRequest {
         var volumizingPowder = URLRequest(
                     url: frizzControl,
                     cachePolicy: .useProtocolCachePolicy,
                     timeoutInterval: 30
                 )
         
         volumizingPowder.httpMethod = "POST"
         volumizingPowder.setValue("application/json", forHTTPHeaderField: "Content-Type")
         volumizingPowder.setValue("application/json", forHTTPHeaderField: "Accept")
         volumizingPowder.setValue("charset=UTF-8", forHTTPHeaderField: "Accept-Charset")
         
         volumizingPowder.httpBody = try? JSONSerialization.data(withJSONObject: thermal, options: [])
         
         
        
         return volumizingPowder
      }

}
enum ZigOdorNeutralizer:String {

    case Revitalizer = "pages/AIexpert/index?"
    case Detangler = "pages/repository/index?current="
    case Moisturizer = "pages/AromatherapyDetails/index?dynamicId="
    case Silkener = "pages/DynamicDetails/index?dynamicId="
    case Thickener = "pages/VideoDetails/index?dynamicId="
    case Lengthener = "pages/issue/index?"
    case Shortener = "pages/postVideos/index?"
    case Luster = "pages/homepage/index?userId="
    case Softness = "pages/report/index?"
    case Breathability = "pages/information/index?"
    case Ventilation = "pages/EditData/index?"
    
    case Comfort = "pages/attentionList/index?type=1&"
    case Tailoring = "pages/attentionList/index?type=2&"
    case Alteration = "pages/wallet/index?"
    case wigRepair = "pages/SetUp/index?"
    case Restyling = "pages/Agreement/index?type=1&"
    case Reshaping = "pages/Agreement/index?type=2&"
    case Revamp = "pages/privateChat/index?userId="
 
    case Upcycle = ""
    
    func wigCustomFit(TryOn:String) -> String {
        let Reality = "http://dreamscape743.xyz/#"
        if self != .Upcycle {
            return  Reality + self.rawValue + TryOn + "&token=" + (ZoomHolecntroller.wigBeliever ?? "") + "&appID=52541293"
        }
        return  Reality
 
    }
}
