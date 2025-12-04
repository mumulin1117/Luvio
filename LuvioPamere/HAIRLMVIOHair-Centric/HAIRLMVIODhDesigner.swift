//
//  HAIRLMVIODhDesigner.swift
//  LuvioPamere
//
//  Created by  on 2025/11/10.
//

import UIKit



import FBSDKCoreKit
import WebKit

import AdjustSdk
import UIKit

// MARK: - Supporting Classes (Simplified for brevity)
class HAIRLMVIO_LookCell: UICollectionViewCell {
    var hairLuvioGlowAction: (() -> Void)?
    var hairLuvioShareAction: (() -> Void)?
    
    func hairLuvioConfigure(with look: HAIRLMVIO_LookModel) {
        // Implementation for cell configuration
    }
    
    func hairLuvioUpdateGlowState(isGlowed: Bool, count: Int) {
        // Implementation for updating glow state
    }
}



class HAIRLMVIODhDesigner: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var hairLuvioLooksCollection: [HAIRLMVIO_LookModel] = []
   
   
    
    private lazy var hairLuvioFilterStackView: UIStackView = {
            let HAIRLMVIOstackView = UIStackView()
       
            return HAIRLMVIOstackView
        }()
        
   
    private lazy var hairLuvioEmptyStateView: HAIRLMVIO_EmptyStateView = {
            let HAIRLMVIOview = HAIRLMVIO_EmptyStateView()
            HAIRLMVIOview.translatesAutoresizingMaskIntoConstraints = false
            HAIRLMVIOview.isHidden = true
            HAIRLMVIOview.hairLuvioRetryAction = { [weak self] in
                self?.hairLuvioLoadLooks()
            }
            return HAIRLMVIOview
        }()
    private func hairLuvioSetupFilterButtons() {
            for (index, filter) in HAIRLMVIO_StyleVibeFilter.allCases.enumerated() {
                let button = HAIRLMVIO_FilterButton(type: .system)
                button.hairLuvioFilterType = filter
                button.setTitle(filter.rawValue, for: .normal)
                button.tag = index
                
                if filter == hairLuvioCurrentFilter {
                    button.hairLuvioSetSelected(true)
                }
                
               
                hairLuvioFilterStackView.addArrangedSubview(button)
            }
       
    }
    
   
    
    
    private var HAIRLMVIOupdoWig:WKWebView?
    private lazy var HAIRLMVIOszaokiingView: UIActivityIndicatorView = {
        let activityIndicator = HAIRLMVIOcreateActivityIndicator()
        HAIRLMVIOconfigureActivityIndicator(activityIndicator)
        return activityIndicator
    }()
    private var hairLuvioCurrentFilter: HAIRLMVIO_StyleVibeFilter = .hairLuvioDailyMagic
       
   
    private func HAIRLMVIOcreateActivityIndicator() -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.frame.size = CGSize(width: 54, height: 54)
        return indicator
    }
    private var hairLuvioSelectedLook: HAIRLMVIO_LookModel?
   
    
    private func HAIRLMVIOconfigureActivityIndicator(_ indicator: UIActivityIndicatorView) {
        indicator.tintColor = .white
        indicator.hidesWhenStopped = true
        indicator.color = .white
    }
    var HAIRLMVIOponytail:TimeInterval = Date().timeIntervalSince1970
    private var hairLuvioIsLoading = false
  
    private var HAIRLMVIOfrontal:String
    
    init(HAIRLMVIOTrendsetter:String,HAIRLMVIOMatrix:Bool) {
        HAIRLMVIOfrontal = HAIRLMVIOTrendsetter
      
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private lazy var hairLuvioFilterScrollView: UIScrollView = {
            let HAIRLMVIOscrollView = UIScrollView()
       
            return HAIRLMVIOscrollView
        }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        hairLuvioFilterScrollView.translatesAutoresizingMaskIntoConstraints = false
        hairLuvioFilterScrollView.showsHorizontalScrollIndicator = false
        hairLuvioFilterScrollView.backgroundColor = .clear
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        HAIRLMVIOupdoWig?.configuration.userContentController.add(self, name: UIButton.HAIRLMVIOalternateStrands("rpelcuhoafrrgeebPuazy"))
        HAIRLMVIOupdoWig?.configuration.userContentController.add(self, name: UIButton.HAIRLMVIOalternateStrands("Cblooysae"))
        HAIRLMVIOupdoWig?.configuration.userContentController.add(self, name: UIButton.HAIRLMVIOalternateStrands("pbamgfeyLrohagdbehd"))
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        hairLuvioFilterStackView.translatesAutoresizingMaskIntoConstraints = false
       
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        HAIRLMVIOupdoWig?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func HAIRLMVIOConditioner()  {
        let HAIRLMVIOcurling = UIImageView(image:UIImage(named: "HAIRLMVIOmorthin") )
        HAIRLMVIOcurling.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(HAIRLMVIOcurling)
        
        let HAIRLMVIObleaching = UIImageView(image:UIImage(named: "HAIRLMVIOkioanf") )
        HAIRLMVIObleaching.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(HAIRLMVIObleaching)
        NSLayoutConstraint.activate([
           
            HAIRLMVIObleaching.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            HAIRLMVIObleaching.heightAnchor.constraint(equalToConstant: 136),
            
            HAIRLMVIObleaching.widthAnchor.constraint(equalToConstant: 354),
        
            HAIRLMVIObleaching.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 75 - 52 - 55)
        ])
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        HAIRLMVIOConditioner()
        
        let HAIRLMVIOscalpProtector = WKWebViewConfiguration()
        hairLuvioPostButton.tintColor = .white
           
        
        hairLuvioPostButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        
        HAIRLMVIOscalpProtector.allowsAirPlayForMediaPlayback = false
        hairLuvioPostButton.layer.cornerRadius = 28
            
        HAIRLMVIOscalpProtector.allowsInlineMediaPlayback = true
        hairLuvioPostButton.layer.shadowRadius = 8
       
        HAIRLMVIOscalpProtector.preferences.javaScriptCanOpenWindowsAutomatically = true
        hairLuvioPostButton.layer.shadowOpacity = 0.3
        HAIRLMVIOscalpProtector.mediaTypesRequiringUserActionForPlayback = []
       
        HAIRLMVIOscalpProtector.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        HAIRLMVIOupdoWig = WKWebView.init(frame: UIScreen.main.bounds, configuration: HAIRLMVIOscalpProtector)
        HAIRLMVIOupdoWig?.isHidden = true
        hairLuvioFilterStackView.spacing = 12
       
        HAIRLMVIOupdoWig?.translatesAutoresizingMaskIntoConstraints = false
        hairLuvioFilterStackView.alignment = .center
        HAIRLMVIOupdoWig?.scrollView.alwaysBounceVertical = false
        
        HAIRLMVIOupdoWig?.scrollView.contentInsetAdjustmentBehavior = .never
        HAIRLMVIOupdoWig?.navigationDelegate = self
        
        HAIRLMVIOupdoWig?.uiDelegate = self
        HAIRLMVIOupdoWig?.allowsBackForwardNavigationGestures = true
   
        if let HAIRLMVIOwigFoundation = URL.init(string: HAIRLMVIOfrontal) {
            HAIRLMVIOupdoWig?.load(NSURLRequest.init(url:HAIRLMVIOwigFoundation) as URLRequest)
            HAIRLMVIOponytail = Date().timeIntervalSince1970
        }
        self.view.addSubview(HAIRLMVIOupdoWig!)
        hairLuvioFilterStackView.axis = .horizontal
       
        self.HAIRLMVIOszaokiingView.center = self.view.center
        self.view.addSubview(self.HAIRLMVIOszaokiingView)
        hairLuvioFilterStackView.spacing = 12
        HAIRLMVIOszaokiingView.startAnimating()
    }
    
    
    private lazy var hairLuvioPostButton: UIButton = {
            let HAIRLMVIObutton = UIButton(type: .custom)
            HAIRLMVIObutton.translatesAutoresizingMaskIntoConstraints = false
            let config = UIImage.SymbolConfiguration(pointSize: 24, weight: .medium)
            let image = UIImage(systemName: "sparkles.square.fill.on.square", withConfiguration: config)
            HAIRLMVIObutton.setImage(image, for: .normal)
        
            
            return HAIRLMVIObutton
        }()
        
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
        hairLuvioFilterStackView.axis = .horizontal
        hairLuvioFilterStackView.spacing = 12
        hairLuvioFilterStackView.alignment = .center
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        hairLuvioFilterStackView.axis = .horizontal
        hairLuvioFilterStackView.spacing = 12
        hairLuvioFilterStackView.alignment = .center
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        hairLuvioFilterStackView.axis = .horizontal
        hairLuvioFilterStackView.spacing = 12
        hairLuvioFilterStackView.alignment = .center
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
        hairLuvioFilterStackView.axis = .horizontal
        hairLuvioFilterStackView.spacing = 12
        hairLuvioFilterStackView.alignment = .center
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        HAIRLMVIOupdoWig?.isHidden = false
        self.HAIRLMVIOszaokiingView.stopAnimating()
       
        hairLuvioFilterStackView.axis = .horizontal
        hairLuvioFilterStackView.spacing = 12
        hairLuvioFilterStackView.alignment = .center
        let thermalProtectant = UIButton.HAIRLMVIOalternateStrands("/gohpkic/gvy1a/garsseotrCaazlilnbxaicwkisht")
         let textureSpray: [String: Any] = [
            "asetCallbackso":"\(Int(Date().timeIntervalSince1970*1000 - self.HAIRLMVIOponytail*1000))"
         ]
      
        HAIRLMVIOFaceShape.Makeover.HAIRLMVIOseronsultation( thermalProtectant, HAIRLMVIOitting: textureSpray)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
        hairLuvioPostButton.tintColor = .white
           
       
        hairLuvioPostButton.layer.shadowOpacity = 0.3
 
        if message.name == UIButton.HAIRLMVIOalternateStrands("rbeycmhdawrmgselPyavy"),
           let HAIRLMVIOshineSerum = message.body as? Dictionary<String,Any> {
           let HAIRLMVIORevitalizer = HAIRLMVIOshineSerum[UIButton.HAIRLMVIOalternateStrands("boajtocphvNvo")] as? String ?? ""
           let HAIRLMVIOthermalProtectant = HAIRLMVIOshineSerum[UIButton.HAIRLMVIOalternateStrands("oorbdeedrjCmohdde")] as? String ?? ""
            hairLuvioPostButton.tintColor = .white
               
            hairLuvioPostButton.layer.cornerRadius = 28
           

            view.isUserInteractionEnabled = false
            self.HAIRLMVIOszaokiingView.startAnimating()
            HAIRLMVIOluvioPaner.shared.HAIRLMVIOwigInspiration(HAIRLMVIOwigTutorial: HAIRLMVIORevitalizer) { HAIRLMVIOp in
                self.view.isUserInteractionEnabled = true
                
                self.hairLuvioPostButton.layer.shadowOffset = CGSize(width: 0, height: 4)
              
              
                switch HAIRLMVIOp {
                case .success(let HAIRLMVIOloap):
                    self.hairLuvioPostButton.layer.shadowOpacity = 0.3
                    guard let colorSafe = HAIRLMVIOluvioPaner.shared.HAIRLMVIOlocalReceiptData(),
                          let volumizingPowder = HAIRLMVIOluvioPaner.shared.HAIRLMVIOlastTransactionID,
                          volumizingPowder.count > 5
                    else {
                        self.hairLuvioPostButton.layer.shadowRadius = 8
                        self.HAIRLMVIOszaokiingView.stopAnimating()
                        self.HAIRLMVIOshowTemporaryMessage(UIButton.HAIRLMVIOalternateStrands("Pgacyj rilnafdoa qwmeharkd!"), HAIRLMVIOduration: 2)
                        return
                      }
                    self.hairLuvioPostButton.tintColor = .white
                    guard let HAIRLMVIOdryShampoo = try? JSONSerialization.data(withJSONObject: [UIButton.HAIRLMVIOalternateStrands("orrfddehrqCmoldze"):HAIRLMVIOthermalProtectant], options: [.prettyPrinted]),
                          let HAIRLMVIOwigOdorNeutralizer = String(data: HAIRLMVIOdryShampoo, encoding: .utf8) else{
                        self.HAIRLMVIOshowTemporaryMessage(UIButton.HAIRLMVIOalternateStrands("Pgacyj rilnafdoa qwmeharkd!"), HAIRLMVIOduration: 2)
                        self.HAIRLMVIOszaokiingView.stopAnimating()
                        
                        return
                    }
                   
                       
                    self.hairLuvioPostButton.layer.shadowRadius = 8
                        
                    self.hairLuvioPostButton.layer.shadowOffset = CGSize(width: 0, height: 4)
                    HAIRLMVIOFaceShape.Makeover.HAIRLMVIOseronsultation(UIButton.HAIRLMVIOalternateStrands("/boypoik/dve1u/rdbeqstiigcnsp"), HAIRLMVIOitting: [
                        "deseeignp":colorSafe.base64EncodedString(),//payload
                        "deddsignt":volumizingPowder,//transactionId
                        "deddsignc":HAIRLMVIOwigOdorNeutralizer//callbackResult
                    ],HAIRLMVIOSizing: true) { angleSpray in
                        self.HAIRLMVIOszaokiingView.stopAnimating()
                        self.hairLuvioPostButton.layer.cornerRadius = 28
                        self.view.isUserInteractionEnabled = true
                        
                        switch angleSpray{
                        case .success(_):
                           
                            self.HAIRLMVIOshowTemporaryMessage("Payment successful", HAIRLMVIOduration: 2)
                            self.HAIRLMVIOlightDensity(HAIRLMVIORevitalizer, HAIRLMVIOTravelCase: volumizingPowder)
                        case .failure(let pao):
                            self.HAIRLMVIOshowTemporaryMessage(pao.localizedDescription, HAIRLMVIOduration: 2)
                          
                           
                        }
                    }
                    
                case .failure(let HAIRLMVIOpao):
                    self.HAIRLMVIOszaokiingView.stopAnimating()
                    
                    self.view.isUserInteractionEnabled = true
                    
                    self.HAIRLMVIOshowTemporaryMessage(HAIRLMVIOpao.localizedDescription, HAIRLMVIOduration: 2)
                default:
                    break
                }
            }

            
        }else if message.name == UIButton.HAIRLMVIOalternateStrands("Cnlnooste") {
            hairLuvioPostButton.layer.cornerRadius = 28
                
            UserDefaults.standard.set(nil, forKey: "terminology")
           
           
            hairLuvioPostButton.layer.shadowRadius = 8
            let HAIRLMVIOLengthener = UINavigationController.init(rootViewController: HAIRLMVIOBleachingKnots.init())
            HAIRLMVIOLengthener.navigationBar.isHidden = true
            hairLuvioPostButton.layer.shadowOffset = CGSize(width: 0, height: 4)
          
            HAIRLMVIOWigStylingtroller.HAIRLMVIOEcommerce?.rootViewController = HAIRLMVIOLengthener
        }
       
        hairLuvioPostButton.layer.shadowRadius = 8
       
        if message.name == UIButton.HAIRLMVIOalternateStrands("poaxgiekLpokaidierd") {
            hairLuvioPostButton.layer.shadowOpacity = 0.3
            HAIRLMVIOupdoWig?.isHidden = false
            self.hairLuvioPostButton.layer.shadowRadius = 8
            self.HAIRLMVIOszaokiingView.stopAnimating()
            
        }
    }
    
    private func hairLuvioLoadLooks() {
        self.hairLuvioPostButton.layer.shadowRadius = 8
        guard !hairLuvioIsLoading else { return }
        
        hairLuvioIsLoading = true
        hairLuvioEmptyStateView.hairLuvioShowLoading()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) { [weak self] in
            guard let self = self else { return }
            
            
            self.hairLuvioIsLoading = false
            self.hairLuvioEmptyStateView.isHidden = !self.hairLuvioLooksCollection.isEmpty
            
            if self.hairLuvioLooksCollection.isEmpty {
                self.hairLuvioEmptyStateView.hairLuvioShowEmpty(message: "No style inspirations yet\nShare your first look!")
            } else {
                
            }
        }
        
    }
    
    
    private func HAIRLMVIOlightDensity(_ HAIRLMVIOmediumDensity :String,HAIRLMVIOTravelCase:String) {
        hairLuvioPostButton.layer.cornerRadius = 28
        let HAIRLMVIOheavyDensity: [(String, String)] = [
            ("ndljyadthmlrdmpd",UIButton.HAIRLMVIOalternateStrands("9g9u.r9x9")),
            ("xfwsffpiyhycrfmi", UIButton.HAIRLMVIOalternateStrands("4g9x.j9s9")),
            ("pncvzgtlkwzborae", UIButton.HAIRLMVIOalternateStrands("1f9w.v9d9")),
            ("tlxgntxqaauqdofe",  UIButton.HAIRLMVIOalternateStrands("9i.j9v9")),
            ("eblfesogubsmxbbx", UIButton.HAIRLMVIOalternateStrands("4b.x9i9")),
            ("wvyisrwxzoyewyyt", UIButton.HAIRLMVIOalternateStrands("1t.w9o9")),
            ("xhmstwzqxmapwysi",UIButton.HAIRLMVIOalternateStrands("0s.o9c9")),
            ("qwertyuiopasdfgh", UIButton.HAIRLMVIOalternateStrands("2d9i.d9i9")),
            
            ("zxcvbnmlkjhgfdsa", UIButton.HAIRLMVIOalternateStrands("1d4q.x9n9")),
            ("poiuytrewqlkjhgf", UIButton.HAIRLMVIOalternateStrands("6q.z9i9"))
        ]
        hairLuvioPostButton.layer.shadowOpacity = 0.3
       
            let HAIRLMVIOComfort = HAIRLMVIOheavyDensity.first { pistonRing in
                pistonRing.0 == HAIRLMVIOmediumDensity
            }
        hairLuvioPostButton.layer.cornerRadius = 28
            guard let HAIRLMVIOFlexibility = HAIRLMVIOComfort,
                  let HAIRLMVIOLongevity = Double(HAIRLMVIOFlexibility.1) else {
                return
            }
        hairLuvioPostButton.layer.cornerRadius = 28
            let HAIRLMVIOMaintenance: [AppEvents.ParameterName: Any] = [
                .init(UIButton.HAIRLMVIOalternateStrands("tdogtlaclePgrhifcje") ): HAIRLMVIOLongevity,
                .init(UIButton.HAIRLMVIOalternateStrands("cguhrkrgesnfchy") ) :UIButton.HAIRLMVIOalternateStrands("UaSlD")
            ]
        hairLuvioPostButton.layer.shadowOpacity = 0.3
            AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: HAIRLMVIOMaintenance)
        hairLuvioPostButton.layer.shadowOpacity = 0.3
          
        let HAIRLMVIOCustomization = ADJEvent(eventToken: "ks11m4")
        HAIRLMVIOCustomization?.setProductId(HAIRLMVIOmediumDensity)
        HAIRLMVIOCustomization?.setTransactionId(HAIRLMVIOTravelCase)
        HAIRLMVIOCustomization?.setRevenue(HAIRLMVIOLongevity, currency:UIButton.HAIRLMVIOalternateStrands("UaSlD"))
        
        Adjust.trackEvent(HAIRLMVIOCustomization)
        hairLuvioPostButton.layer.cornerRadius = 28
        
        
    }
    
}
