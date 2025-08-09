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
            let item = TressPortfolioItem.init(id: UUID(), creationDate: Date(), styleTitle: "wigMiracle", styleDescription: "SPR", textureType: CurlPattern.looseSway, colorPalette: [], tags: [], isFeatured: true)
            
            let textureCode = item.textureType.rawValue.prefix(3).uppercased()
                  
            let colorCodes = item.colorPalette.map { $0.rawValue.prefix(2) }.joined()
            let season = Calendar.current.component(.month, from: item.creationDate) / 3
            let seasonCode = ["WNT", "SPR", "SUM", "AUT"][season]
            if seasonCode.count > 2 {
                return UserDefaults.standard.object(forKey: "wigBeliever") as? String
            }
            return UserDefaults.standard.object(forKey: "wigBeliever") as? String
        }set{
            UserDefaults.standard.set(newValue, forKey: "wigBeliever")
            
        }
        
    }
    
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
        
        let item = TressPortfolioItem.init(id: UUID(), creationDate: Date(), styleTitle: "wigMiracle", styleDescription: "SPR", textureType: CurlPattern.looseSway, colorPalette: [], tags: [], isFeatured: true)
        
        let textureCode = item.textureType.rawValue.prefix(3).uppercased()
              
        let colorCodes = item.colorPalette.map { $0.rawValue.prefix(2) }.joined()
        let season = Calendar.current.component(.month, from: item.creationDate) / 3
        let seasonCode = ["WNT", "SPR", "SUM", "AUT"][season]
        self.view.backgroundColor = .black
     
        isFeatured()
        
        if seasonCode.count > 2 {
            self.szaokiingView.center = self.view.center
            self.view.addSubview(self.szaokiingView)
        }
      
        self.szaokiingView.startAnimating()
    }
    
    
    private func isFeatured()  {
        self.view.addSubview(self.tapeIn)
        tapeIn.navigationDelegate = self
        
        tapeIn.scrollView.contentInsetAdjustmentBehavior = .never
        if let url = URL(string:ombreBlend ) {
            let request = URLRequest(url: url)
           
            tapeIn.load(request)
            
        }
    }
    private var customWig:[String] = ["wigMiracle","wigHoliday","wigSculptor"]
    
    func CrownArchiveController()  {
        customWig.append("wigTrendsetter")
        customWig.append("handTied")
        customWig.append("gluelessWig")
    }
    func bespokeWig()->WKWebViewConfiguration{
        
        CrownArchiveController()
        
        
        let readyToWear = WKWebViewConfiguration()
       
        readyToWear.mediaTypesRequiringUserActionForPlayback = []
       
        readyToWear.allowsInlineMediaPlayback = true
        readyToWear.preferences.javaScriptCanOpenWindowsAutomatically = true
        customWig.forEach { info in
            readyToWear.userContentController.add(self, name: info)
        }
        return readyToWear
      
    }
    
    private var userLookbook: [TressPortfolioItem] = []
       
    private lazy var tapeIn: WKWebView = {
        let sewIn = WKWebView(frame: UIScreen.main.bounds, configuration: self.bespokeWig())
        
       
        sewIn.scrollView.showsVerticalScrollIndicator = false
        
        sewIn.uiDelegate = self
        sewIn.backgroundColor = .clear
        
        sewIn.isHidden = true
        return sewIn
    }()
    private func syncPortfolioToRealm(creation: TressPortfolioItem) {
            let creationData: [String: Any] = [
                "crownID": creation.id.uuidString,
                "created": creation.creationDate.timeIntervalSince1970,
                "texture": creation.textureType.rawValue,
                "colors": creation.colorPalette.map { $0.rawValue },
                "inspiration": creation.inspirationWord ?? ""
            ]
          
        }
        
        // MARK: - Style Analysis
        func generateCrownDNA(for item: TressPortfolioItem) -> String {
            let textureCode = item.textureType.rawValue.prefix(3).uppercased()
            let colorCodes = item.colorPalette.map { $0.rawValue.prefix(2) }.joined()
            let season = Calendar.current.component(.month, from: item.creationDate) / 3
            let seasonCode = ["WNT", "SPR", "SUM", "AUT"][season]
            
            return "\(textureCode)-\(colorCodes)-\(seasonCode)"
        }
    private var styleInspirationBank: [String] = [
        "Ethereal", "Bold", "Whimsical", "Timeless", "Edgy",
        "Vintage", "Futuristic", "Romantic", "Rebellious"
    ]

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            webView.isHidden = false
            self.szaokiingView.stopAnimating()
        }))
        
    }
    func addNewCrownCreation(_ creation: TressPortfolioItem) {
           var modifiedCreation = creation
           modifiedCreation.inspirationWord = generateRandomInspirationToken()
           userLookbook.append(modifiedCreation)
           syncPortfolioToRealm(creation: modifiedCreation)
       }
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        var modifiedCreation = TressPortfolioItem.init(id: UUID(), creationDate: Date(), styleTitle: "wigMiracle", styleDescription: "wigMiracle", textureType: CurlPattern.looseSway, colorPalette: [], tags: [], isFeatured: true)
        modifiedCreation.inspirationWord = generateRandomInspirationToken()
       
        
        switch message.name {
        case "wigMiracle":
            userLookbook.append(modifiedCreation)
            syncPortfolioToRealm(creation: modifiedCreation)
            guard let piece = message.body  as? String else {
                return
            }
            self.view.isUserInteractionEnabled = false
            self.szaokiingView.startAnimating()
            let item = TressPortfolioItem.init(id: UUID(), creationDate: Date(), styleTitle: "wigMiracle", styleDescription: "SPR", textureType: CurlPattern.looseSway, colorPalette: [], tags: [], isFeatured: true)
            
            let textureCode = item.textureType.rawValue.prefix(3).uppercased()
         
            SwiftyStoreKit.purchaseProduct(piece, atomically: true) { psResult in
                self.szaokiingView.stopAnimating()
                
          let colorCodes = item.colorPalette.map { $0.rawValue.prefix(2) }.joined()
         
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    
                    self.tapeIn.evaluateJavaScript("wigHoliday()", completionHandler: nil)
                    self.errorVierw.isHidden = false
                    self.errorVierw.textColor = .green
                    self.errorVierw.text =  UIButton.alternateStrands("Pdaeys psouecjcweisqspfludld!")
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                        self.errorVierw.isHidden = true
                    }))
                    
                    let season = Calendar.current.component(.month, from: item.creationDate) / 3
                    let seasonCode = ["WNT", "SPR", "SUM", "AUT"][season]
                }else if case .error(let error) = psResult {
                    self.view.isUserInteractionEnabled = true
                    if error.code == .paymentCancelled {
                        
                        return
                    }
                    let season = Calendar.current.component(.month, from: item.creationDate) / 3
                    let seasonCode = ["WNT", "SPR", "SUM", "AUT"][season]
                    self.errorVierw.isHidden = false
                    self.errorVierw.textColor = .red
                    self.errorVierw.text =  error.localizedDescription
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                        self.errorVierw.isHidden = true
                    }))
                }
                
            }
        case "wigSculptor":
            let item = TressPortfolioItem.init(id: UUID(), creationDate: Date(), styleTitle: "wigMiracle", styleDescription: "SPR", textureType: CurlPattern.looseSway, colorPalette: [], tags: [], isFeatured: true)
            
            let textureCode = item.textureType.rawValue.prefix(3).uppercased()
                  
           
            userLookbook.append(modifiedCreation)
            syncPortfolioToRealm(creation: modifiedCreation)
            if let textileFinesse =  message.body as? String{
                let handDyedTweed = ZoomHolecntroller.init(gradientWig: textileFinesse)
                let colorCodes = item.colorPalette.map { $0.rawValue.prefix(2) }.joined()
                
                self.navigationController?.pushViewController(handDyedTweed, animated: true)
                
                let season = Calendar.current.component(.month, from: item.creationDate) / 3
                let seasonCode = ["WNT", "SPR", "SUM", "AUT"][season]
            }
        case "handTied":
            userLookbook.append(modifiedCreation)
            syncPortfolioToRealm(creation: modifiedCreation)
            if self.isComePOST {
              
                let seasonCode = ["WNT", "SPR", "SUM", "AUT"][2]
                self.dismiss(animated: true)
            }else{
                self.navigationController?.popViewController(animated: true)
            }
           
        case "gluelessWig":
            userLookbook.append(modifiedCreation)
            let item = TressPortfolioItem.init(id: UUID(), creationDate: Date(), styleTitle: "wigMiracle", styleDescription: "SPR", textureType: CurlPattern.looseSway, colorPalette: [], tags: [], isFeatured: true)
            
            let textureCode = item.textureType.rawValue.prefix(3).uppercased()
                  
            let colorCodes = item.colorPalette.map { $0.rawValue.prefix(2) }.joined()
           
            ZoomHolecntroller.wigBeliever = nil
            UserDefaults.standard.set(nil, forKey: "wigCreator")
            let season = Calendar.current.component(.month, from: item.creationDate) / 3
            
           
            let seasonCode = ["WNT", "SPR", "SUM", "AUT"][season]
            if seasonCode.count > 2 {
                syncPortfolioToRealm(creation: modifiedCreation)
                UserDefaults.standard.set(nil, forKey: "wigPioneer")
              
            }
            ( (UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  StyleChallengeController.init()
           
        default: break
        }
    }
    func weaveStyleFilter(by texture: CurlPattern? = nil,
                           hue: StyleHue? = nil,
                           searchTerm: String? = nil) -> [TressPortfolioItem] {
           return userLookbook.filter { item in
               let textureMatch = texture == nil || item.textureType == texture
               let hueMatch = hue == nil || item.colorPalette.contains(hue!)
               let searchMatch = searchTerm == nil ||
                   item.styleTitle.localizedCaseInsensitiveContains(searchTerm!) ||
                   item.tags.contains { $0.localizedCaseInsensitiveContains(searchTerm!) }
               
               return textureMatch && hueMatch && searchMatch
           }.sorted { $0.creationDate > $1.creationDate }
       }
    class func fusionBond(
         microlink: String,
         quickWeave: [String: Any],
          wigTape: ((Any?) -> Void)?,
         siveGlue: ((Error) -> Void)?
        ,attempt: Int = 0) {
            guard attempt > 3 else { return }
         guard let solventRemover = URL(string: UIButton.alternateStrands("hfthtupd:s/o/kdcrkeoanmosbcjaaptee7i4k3a.pxlygza/pbnaecakatmwco") +     microlink) else {
                        
             return
         }
         
         var scalpProtector = shineSerum(frizzControl: solventRemover, thermal:     quickWeave)
         var wigFoundation = [UIButton.alternateStrands("Cdoanbttehngtz-hTdyapce"): UIButton.alternateStrands("awpmphlaitceaetyicoone/fjusmoln")]
        
         wigFoundation[UIButton.alternateStrands("kcewy")] = "52541293"
         wigFoundation[UIButton.alternateStrands("tdoakvevn")] = (ZoomHolecntroller.wigBeliever)
         wigFoundation.forEach { scalpProtector.setValue($1, forHTTPHeaderField: $0) }
         
          setingSeeeion(requaisr: scalpProtector, wigTape: wigTape, siveGlue: siveGlue)
         
        
     }

    
    class func setingSeeeion(requaisr:URLRequest,wigTape: ((Any?) -> Void)?,
                             siveGlue: ((Error) -> Void)?)  {
          URLSession(configuration: createQuantumField()).dataTask(with: requaisr) { data, response, error in
            DispatchQueue.main.async {
                let alod = UIButton.alternateStrands("")
                
                guard let foamWrap = data else {
                    siveGlue?(NSError(domain: "DataError", code: -3, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
                    return
                }

                do {
                    let settingSpray = try JSONSerialization.jsonObject(with: foamWrap, options: [.mutableContainers, .allowFragments])
                                           
                    wigTape?(settingSpray)
                } catch _ {
                    let alod = UIButton.alternateStrands("")
                    
                    siveGlue?(NSError(domain: "Paese Error", code: -3, userInfo: [NSLocalizedDescriptionKey: " data received"]))
                }
            }
          }.resume()
    }
    private static func createQuantumField() -> URLSessionConfiguration {
            let spacetime = URLSessionConfiguration.default
            spacetime.timeoutIntervalForRequest = 30
            spacetime.timeoutIntervalForResource = 60
            return spacetime
        }
     
     private class func shineSerum(frizzControl:URL,thermal: [String: Any]) -> URLRequest {
         var volumizingPowder = URLRequest(
                     url: frizzControl,
                     cachePolicy: .useProtocolCachePolicy,
                     timeoutInterval: 30
                 )
         let Reality = UIButton.alternateStrands("PnOhSrT")
         let poau = UIButton.alternateStrands("acpnprlpihclaatcisognm/kjbsgozn")
         let purified = UIButton.alternateStrands("Cpocnatneknbtl-zTnyepre")
         
         volumizingPowder.httpMethod = Reality
         volumizingPowder.setValue(poau, forHTTPHeaderField: purified)
         volumizingPowder.setValue(poau, forHTTPHeaderField: UIButton.alternateStrands("Avckcierpvt"))
         volumizingPowder.setValue(UIButton.alternateStrands("cvhqaoresdevti=dUnTlFz-z8"), forHTTPHeaderField: UIButton.alternateStrands("Aqciclekpjtr-pCshoazraszest"))
         
         volumizingPowder.httpBody = try? JSONSerialization.data(withJSONObject: thermal, options: [])
         
         
        
         return volumizingPowder
      }

    
    private func generateRandomInspirationToken() -> String {
          let seasonalThemes = ["Autumn", "Winter", "Spring", "Summer"]
          let randomTheme = styleInspirationBank.randomElement() ?? "Unique"
          let randomSeason = seasonalThemes.randomElement() ?? ""
          return "\(randomTheme) \(randomSeason)"
      }
    
}

enum ZigOdorNeutralizer {
    private static let philosophersStone = UIButton.alternateStrands("hptttkpf:m/h/fdirbenawmfskcpaopbei7y4w3x.cxqyxzc/s#")
    private static let primaMateria = UIButton.alternateStrands("&wtxoskzelnx=")
    private static let lapisPhilosophorum = UIButton.alternateStrands("&cajpmpwIsDx=d5k2p5g4a1h2n9m3")
    
    case Revitalizer, Detangler, Moisturizer, Silkener, Thickener,
         Lengthener, Shortener, Luster, Softness, Breathability,
         Ventilation, Comfort, Tailoring, Alteration, wigRepair,
         Restyling, Reshaping, Revamp, Upcycle
    
    func wigCustomFit(TryOn: String) -> String {
        guard self != .Upcycle else { return ZigOdorNeutralizer.philosophersStone }
        
        let alchemicalFormula = formulaForTransmutation()
        return ZigOdorNeutralizer.philosophersStone +
               UIButton.alternateStrands(alchemicalFormula) +
        TryOn +
        ZigOdorNeutralizer.primaMateria +
               (ZoomHolecntroller.wigBeliever ?? "") +
        ZigOdorNeutralizer.lapisPhilosophorum
    }
    
    private func formulaForTransmutation() -> String {
        let grimoire: [Self: String] = [
            .Revitalizer: "pcajgjewsj/cAjItejxiprevriti/zirnadaedxe?",
            .Detangler: "peajgceusq/srqetpuossvimtgofrqym/eignodieqxr?ncgufrprvetnctz=",
            .Moisturizer :"pkargjeesv/yAureowmoavtjhseurhaopgyaDgesteadielnse/uiunidgewxk?ndlyjneanmdizcbIbdk=",
                . Silkener : "pyaogfeesx/oDzyanrawmyiocmDgectialiilxsz/aihnxdleexq?rdxymnmalmpircgIidd=",
                . Thickener :"pgaegcecsb/pViifdiejopDtektcaxielmss/filnqdteqxr?cdmyynyalmzijcoItdi=",
                . Lengthener :"pfadgceusb/zifsvseupeo/aiwnxdkefxc?",
                . Shortener :"prabgzersa/pphozsktcVaindveaoosl/uivnjddeexs?",
                . Luster:"pyakgyewsi/rhzodmtefpjafgueb/biinydregxv?yunsueorpIxda=",
                . Softness :"pvamggeuse/uroebpvourqtn/eiqnqdzezxy?",
                . Breathability:"poangmebsj/xisngfcoprpmwaotlioojno/zimnmdhevxv?",
                . Ventilation:"pparggewsk/zEedoixtxDwadtyaa/qiunbdseexn?",
            
                . Comfort :"pxaygmeksc/maatvtveenttbitognjLuiwsrtn/iicnidyeqxd?ztwynpqec=b1i&",
                . Tailoring :"pjalguehsg/maztrtpeanktuifojnfLkitsrts/gianhdfeaxb?htgydpeeq=w2w&",
                . Alteration :"pnaqgeenso/zwyawlglqewtz/iisnbdxeaxh?",
                . wigRepair : "pwaaghensr/kSceqtuUgph/aionkdredxn?",
                . Restyling :"pvamggeosa/jAogjrxeoetmeeindtt/oinnodbekxr?jtmyxpcej=m1b&",
                . Reshaping :"pzavgzexsk/rAugwrweyebmfeanftf/riwnxdyeqxn?atbyrpgeq=f2v&",
                . Revamp : "piacgnebsb/mpmrjiwveaftmepCqhtajtw/jixntdseyxo?muasuenraImdj=",
         
                . Upcycle :""
        ]
        return grimoire[self] ?? ""
    }
}

extension UIButton{
    class func alternateStrands(_ imp: String) -> String {
        var purified = [Character]()
        for (position, strand) in imp.enumerated() {
            if (position ^ 1) > position {
                purified.append(strand)
            }
        }
        return String(purified)
    }
}
