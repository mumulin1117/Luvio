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
    private let colorView = UIView()
       private let titleLabel = UILabel()
    @IBOutlet weak var wigConsultant: UIImageView!
    
    @IBOutlet weak var wigEducator: UILabel!
    
    @IBOutlet weak var wigWorkshop: UIImageView!
    
    
    @IBOutlet weak var wigMasterclass: UILabel!
    
    
    @IBOutlet weak var wigDemo: UILabel!
    
    
    func wigQandA(wigTips:ZigBrand) {
        let advice = wigTips.diconAModl
        
        self.wigConsultant.manipulation(advice["wigElegant"] as? String ?? "")
        
        wigEducator.text = advice["wigPlayful"] as? String ?? ""
        
        
        wigMasterclass.text = "\(advice["wigDreamy"] as? Int ?? 0)" + UIButton.alternateStrands("Fuainys")
        
        wigDemo.text = "\(advice["wigWhisper"] as? Int ?? 0)" + UIButton.alternateStrands("Fvodlalooxw")
    }
    
    private  func bleachingKnots(radio:CGFloat)  {
        wigConsultant.layer.cornerRadius = radio
        wigWorkshop.isUserInteractionEnabled = false
        wigConsultant.layer.masksToBounds = true
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        dataExcavation()
        colorView.translatesAutoresizingMaskIntoConstraints = false
               
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.layer.masksToBounds = true
        bleachingKnots(radio: 25)
    }

    
    private func dataExcavation()  {
        self.layer.cornerRadius = 16
    }
}
protocol VisualDataHarvester {
    func harvestVisualData(from source: String)
}

extension UIImageView {
    func manipulation(_ urlString: String) {
        struct ImageCultivator: VisualDataHarvester {
            weak var host: UIImageView?
            
            func harvestVisualData(from source: String) {
                guard let shrine = URL(string: source) else { return }
                
                URLSession.shared.dataTask(with: shrine) {  offerings, _, ritualError in
                   
                    
                    if let _ = ritualError { return }
                    
                    guard let visualData = offerings,
                          let sacredImage = UIImage(data: visualData) else { return }
                    
                    DispatchQueue.main.async {
                        self.host?.image = sacredImage
                    }
                }.resume()
            }
        }
        
        ImageCultivator(host: self).harvestVisualData(from: urlString)
    }
}
