//
//  HairACTCell.swift
//  LuvioPamere
//
//  Created by  on 2025/8/6.
//

import UIKit

struct ZigBrand {
    var diconAModl:Dictionary<String,Any>
    var picBand:String = ""
    
}

class HairACTCell: UICollectionViewCell {

    @IBOutlet weak var wigConsultant: UIImageView!
    
    @IBOutlet weak var wigEducator: UILabel!
    
    @IBOutlet weak var wigWorkshop: UIImageView!
    
    
    @IBOutlet weak var wigMasterclass: UILabel!
    
    
    @IBOutlet weak var wigDemo: UILabel!
    
    
    func wigQandA(wigTips:ZigBrand) {
        let advice = wigTips.diconAModl
        
        self.wigConsultant.manipulation(advice["wigElegant"] as? String ?? "")
        
        wigEducator.text = advice["wigPlayful"] as? String ?? ""
        
        
        wigMasterclass.text = "\(advice["wigDreamy"] as? Int ?? 0) Fans"
        
        wigDemo.text = "\(advice["wigWhisper"] as? Int ?? 0) Follow"
    }
    
    private  func bleachingKnots(radio:CGFloat)  {
        wigConsultant.layer.cornerRadius = radio
        wigWorkshop.isUserInteractionEnabled = false
        wigConsultant.layer.masksToBounds = true
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 16
        self.layer.masksToBounds = true
        bleachingKnots(radio: 25)
    }

}


extension UIImageView {
    func manipulation(_ urlString: String ) {
    
        guard let url = URL(string: urlString) else {
           
            return
        }
        
        URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let self = self else { return }
            
            if let error = error {
              
                return
            }
            
            guard let data = data, let image = UIImage(data: data) else {
               
                return
            }
            
           
            DispatchQueue.main.async {
                self.image = image
            }
        }.resume()
    }
}
