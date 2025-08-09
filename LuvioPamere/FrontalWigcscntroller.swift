//
//  FrontalWigcscntroller.swift
//  LuvioPamere
//
//  Created by  on 2025/8/6.
//

import UIKit

class FrontalWigcscntroller: UIViewController, UITextViewDelegate {
    @IBOutlet weak var neckline: UITextField!
    
    @IBOutlet weak var PolicyLabel: UITextView!
    
    @IBOutlet weak var lengths: UITextField!
    
    @IBOutlet weak var perfect: UIButton!
    
    @IBOutlet weak var errorVierw: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorVierw.isEnabled = false
        
        
        PolicyLabel.isEditable = false
        
        PolicyLabel.isScrollEnabled = false
        PolicyLabel.delegate = self
        lengths.attributedPlaceholder = NSAttributedString(string: "Enter password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        PolicyLabel.backgroundColor = .clear
        perfect.layer.cornerRadius = 12.5
       
        PolicyLabel.textContainerInset = .zero
        PolicyLabel.textContainer.lineFragmentPadding = 0
        perfect.layer.masksToBounds = true
        userAgreementRange()
    }
    
    private func userAgreementRange()  {
        let plainText = "By signing up, you agree to the User Agreement & Privacy Policy"
                
        let attributedString = NSMutableAttributedString(string: plainText)
        
        attributedString.addAttribute(.font,value: UIFont.systemFont(ofSize: 14),range: NSRange(location: 0, length: plainText.count))
        attributedString.addAttribute(.foregroundColor, value: UIColor.white, range: NSRange(location: 0, length: plainText.count))
        neckline.attributedPlaceholder = NSAttributedString(string: "Enter email adderss", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        let userAgreementRange = (plainText as NSString).range(of: "User Agreement")
        attributedString.addAttribute(.link,
                                     value: "luvio://userAgreement",
                                     range: userAgreementRange)
      
        let privacyPolicyRange = (plainText as NSString).range(of: "Privacy Policy")
        attributedString.addAttribute(.link,
                                     value: "luvio://privacyPolicy",
                                     range: privacyPolicyRange)
        
        PolicyLabel.linkTextAttributes = [
            .foregroundColor: UIColor.systemBlue,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
        PolicyLabel.textColor = .white
        PolicyLabel.attributedText = attributedString
    }

    @IBAction func balayage(_ sender: UIButton) {
        if perfect.isSelected == false {
            self.errorVierw.isHidden = false
            self.errorVierw.text =  "Read and agree to the User Agreement at First!"
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                self.errorVierw.isHidden = true
            }))
            return
        }
        
        if let emiaper = neckline.text,let jiao = lengths.text ,
           emiaper.isEmpty == false,jiao.isEmpty == false{
            
            self.errorVierw.isHidden = false
            self.errorVierw.textColor = .green
            self.errorVierw.text =  "log in....."
            ZoomHolecntroller.fusionBond(microlink: "/zrpvlgcxxuasohhz/stmmyutajakduea", quickWeave: ["wigPhoenix":"52541293","wigWarrior":emiaper,"wigSurvivor":jiao]) { wigRising in
                guard let wigLegacy = wigRising as? Dictionary<String,Any> ,
                     
                      let wigCulture = wigLegacy["data"] as? Dictionary<String,Any>
                        
                else {
                    self.errorVierw.isHidden = false
                    self.errorVierw.text =  "email or password error!"
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                        self.errorVierw.isHidden = true
                    }))
                    return
                }
                self.errorVierw.textColor = .green
                self.errorVierw.text = "Log in successful!"
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                    self.errorVierw.isHidden = true
                }))
                ZoomHolecntroller.wigBeliever = wigCulture["wigBeliever"] as? String
                
//                ZoomHolecntroller.wigPioneer = wigCulture["wigPioneer"] as? Int
                
                UserDefaults.standard.set(emiaper, forKey: "wigCreator")
                
                UserDefaults.standard.set(wigCulture["wigPioneer"] as? Int, forKey: "wigPioneer")
                
                
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  DeepWaveontroller.init()
                
                
            } siveGlue: { wigTradition in
                self.errorVierw.isHidden = false
                self.errorVierw.text =  wigTradition.localizedDescription
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                    self.errorVierw.isHidden = true
                }))
            }

          
            
        }else{
            
            self.errorVierw.isHidden = false
            self.errorVierw.text =  "Please enter email and password at First!"
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                self.errorVierw.isHidden = true
            }))
        }
    }
    
    func textView(_ textView: UITextView,
                     shouldInteractWith URL: URL,
                     in characterRange: NSRange) -> Bool {
            
            if URL.scheme == "luvio" {
                switch URL.host {
                case "userAgreement":
                    showUserAgreement(Bido: true)
                case "privacyPolicy":
                    showUserAgreement(Bido: false)
                default:
                    break
                }
                return false // 阻止Safari打开
            }
            return true
        }
    
    private func showUserAgreement(Bido:Bool) {
           let vc = UIViewController()
           vc.view.backgroundColor = .white
           vc.title = "User Agreement"
           navigationController?.pushViewController(vc, animated: true)
      
    }
    
    
    
    @IBAction func ClickableLabel(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
}
