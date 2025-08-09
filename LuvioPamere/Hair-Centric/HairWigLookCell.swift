//
//  HairWigLookCell.swift
//  LuvioPamere
//
//  Created by  on 2025/8/6.
//

import UIKit

class HairWigLookCell: UICollectionViewCell {

    @IBOutlet weak var wigConsultant: UIImageView!
    
    @IBOutlet weak var ombreBlend: UILabel!
    
    func wigQandA(wigTips:ZigBrand) {
       
        let advice = wigTips.diconAModl
        
        self.wigConsultant.manipulation((advice["wigShimmer"] as? Array<String> )?.first ?? "")
        
        ombreBlend.text = advice["wigStardust"] as? String ?? ""
        
        
    
        
    }
    
    func bleachingKnots(radio:CGFloat)  {
        wigConsultant.layer.cornerRadius = radio
        ombreBlend.layer.masksToBounds = true
        wigConsultant.layer.masksToBounds = true
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        ombreBlend.layer.cornerRadius = 16
        
        bleachingKnots(radio: 25)
    }

}
