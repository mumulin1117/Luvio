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
    private let moodTagView = MoodTagView()
      
    private let scoreView = HarmonyScoreView()
    func bleachingKnots(radio:CGFloat)  {
        wigConsultant.layer.cornerRadius = radio
        ombreBlend.layer.masksToBounds = true
        scoreView.translatesAutoresizingMaskIntoConstraints = false
        wigConsultant.layer.masksToBounds = true
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        ombreBlend.layer.cornerRadius = 16
        moodTagView.translatesAutoresizingMaskIntoConstraints = false
               
        bleachingKnots(radio: 25)
    }

}
class TressRoundedTextField: UITextField {
    // Implementation omitted for brevity
}

class TressSegmentedControl: UISegmentedControl {
    // Implementation omitted for brevity
}

class MoodTagView: UIView {
    func setTags(_ tags: [String]) {
        // Implementation would create tag labels
    }
}

class HarmonyScoreView: UIView {
    func setScore(_ score: Int) {
        // Implementation would show star rating
    }
}
