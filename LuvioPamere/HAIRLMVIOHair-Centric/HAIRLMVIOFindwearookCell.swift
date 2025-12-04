//
//  HAIRLMVIOFindwearookCell.swift
//  LuvioPamere
//
//  Created by  on 2025/8/6.
//

import UIKit

class HAIRLMVIOFindwearookCell: UICollectionViewCell {

    @IBOutlet weak var HAIRLMVIOwigMoodBoard: UIImageView!
    
    @IBOutlet weak var HAIRLMVIOwigShowcase: UILabel!
    
    @IBOutlet weak var HAIRLMVIOwigCollection: UIButton!
    
    @IBOutlet weak var HAIRLMVIOwigCatalog: UILabel!
    
    @IBOutlet weak var HAIRLMVIOaijnxmhh: UILabel!
    
    @IBOutlet weak var HAIRLMVIOwigLookbook: UIImageView!
    
    @IBOutlet weak var HAIRLMVIOwigPortfolio: UIImageView!
    
    @IBOutlet weak var HAIRLMVIOwigGallery: UIImageView!
    
    
    @IBOutlet weak var HAIRLMVIOwigCommunity: UIButton!
    
    @IBOutlet weak var HAIRLMVIOwigEnthusiast: UIButton!
    
    @IBOutlet weak var HAIRLMVIOwigDesigner: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        HAIRLMVIObleachingKnots(HAIRLMVIOradio:22, HAIRLMVIOwihsf: HAIRLMVIOwigMoodBoard)
        
        HAIRLMVIObleachingKnots(HAIRLMVIOradio:16, HAIRLMVIOwihsf: HAIRLMVIOwigLookbook)
        HAIRLMVIObleachingKnots(HAIRLMVIOradio:16, HAIRLMVIOwihsf: HAIRLMVIOwigPortfolio)
        HAIRLMVIObleachingKnots(HAIRLMVIOradio:16, HAIRLMVIOwihsf: HAIRLMVIOwigGallery)
    }
    private func HAIRLMVIObleachingKnots(HAIRLMVIOradio:CGFloat,HAIRLMVIOwihsf:UIView)  {
        HAIRLMVIOwigMoodBoard.layer.cornerRadius = HAIRLMVIOradio
       
        HAIRLMVIOwigMoodBoard.layer.masksToBounds = true
    }
    
    func HAIRLMVIOwigQandA(HAIRLMVIOwigTips:ZigBrand) {
        let advice = HAIRLMVIOwigTips.diconAModl
        
        self.HAIRLMVIOwigMoodBoard.HAIRLMVIOmanipulation(advice["wigRainbow"] as? String ?? "")
        
        HAIRLMVIOwigShowcase.text = advice["wigSunshine"] as? String ?? ""
        HAIRLMVIOwigCatalog.text = advice["wigStardust"] as? String ?? ""
        
        HAIRLMVIOwigCommunity.setTitle("\(advice["wigPrism"] as? Int ?? 0)", for: .normal)
        
        HAIRLMVIOwigEnthusiast.setTitle("\(advice["wigIridescent"] as? Int ?? 0)", for: .normal)
        
        let list = advice["wigShimmer"] as? Array<String>
        if let q = list?.first {
            HAIRLMVIOwigLookbook.HAIRLMVIOmanipulation(q)
        }
        
        if let s = list?.last {
            HAIRLMVIOwigGallery.HAIRLMVIOmanipulation(s)
        }
        
        if  list?.count ?? 0 >= 3 {
            HAIRLMVIOwigPortfolio.HAIRLMVIOmanipulation(list?[1] ?? "")
        }
        let tiamgo = (advice["wigGlitter"] as? Int ?? 0)
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss" 

        let date = Date(timeIntervalSince1970: TimeInterval(tiamgo / 1000))

        // 将格式化后的日期设置为文本
        HAIRLMVIOaijnxmhh.text = formatter.string(from: date)
    }
    
}
