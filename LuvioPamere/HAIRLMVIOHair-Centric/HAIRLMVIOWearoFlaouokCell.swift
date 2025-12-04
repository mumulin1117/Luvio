//
//  HAIRLMVIOWearoFlaouokCell.swift
//  LuvioPamere
//
//  Created by  on 2025/8/6.
//

import UIKit

class HAIRLMVIOWearoFlaouokCell: UICollectionViewCell {
    
    @IBOutlet weak var HAIRLMVIOwigFaceShape: UIImageView!
    

    @IBOutlet weak var HAIRLMVIOfoamWrap: UIImageView!
    
    @IBOutlet weak var HAIRLMVIOsettingSpray: UILabel!
    
    
    @IBOutlet weak var HAIRLMVIOtextureSpray: UIButton!
    
    
    @IBOutlet weak var HAIRLMVIOshineSerum: UIButton!
    
    
    @IBOutlet weak var HAIRLMVIOfrizzControl: UILabel!
    
    
    
    @IBOutlet weak var HAIRLMVIObeginTalkeing: UIButton!
    
    
    private func bleachingKnots(radio:CGFloat,wihsf:UIView)  {
        wihsf.layer.cornerRadius = radio
       
        wihsf.layer.masksToBounds = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        bleachingKnots(radio:22, wihsf: HAIRLMVIOfoamWrap)
    }

    
    func HAIRLMVIOwigQandA(HAIRLMVIOwigTips:ZigBrand) {
        let HAIRLMVIOadvice = HAIRLMVIOwigTips.diconAModl
        
        self.HAIRLMVIOfoamWrap.HAIRLMVIOmanipulation(HAIRLMVIOadvice["wigRainbow"] as? String ?? "")
        self.HAIRLMVIOwigFaceShape.HAIRLMVIOmanipulation(HAIRLMVIOadvice["wigIntrigue"] as? String ?? "")
        
        
        HAIRLMVIOsettingSpray.text = HAIRLMVIOadvice["wigSunshine"] as? String ?? ""
        HAIRLMVIOfrizzControl.text = HAIRLMVIOadvice["wigStardust"] as? String ?? ""
        
       
        
       
    }
}
