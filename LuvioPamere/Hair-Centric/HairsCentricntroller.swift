//
//  HairsCentricntroller.swift
//  LuvioPamere
//
//  Created by  on 2025/8/6.
//

import UIKit

class HairsCentricntroller: UIViewController {
    private lazy var szaokiingView:UIActivityIndicatorView = {
       let large = UIActivityIndicatorView.init(style: .large)
        large.frame.size = CGSize.init(width: 54, height: 54)
        large.tintColor = .white
        
        large.hidesWhenStopped = true
        large.color = .white
        return large
    }()
    
    
    @IBOutlet weak var errorVierw: UITextField!
    private var wigAchiever:Array<ZigBrand> = Array<ZigBrand>()
    
    
    @IBOutlet weak var wigCreator: UICollectionView!
    
    private var wigWarrior:Array<ZigBrand> = Array<ZigBrand>()
   
    @IBOutlet weak var wigInfluencer: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wigCreator.backgroundColor = .clear
        heatDefiant()
        wigInfluencer.backgroundColor = .clear
        wigUnapologetic()
        self.szaokiingView.center = self.view.center
        self.view.addSubview(self.szaokiingView)
        wigDateNight()
    }
    private func heatDefiant()  {
        wigCreator.delegate = self
        wigSpecialist.isUserInteractionEnabled = true
        
        wigCreator.dataSource = self
        let sclayout = UICollectionViewFlowLayout.init()
        sclayout.scrollDirection = .horizontal
        sclayout.minimumLineSpacing = 20
        sclayout.minimumInteritemSpacing = 20
        sclayout.itemSize = CGSize.init(width: 204, height: 80)
        wigCreator.collectionViewLayout = sclayout
        wigCreator.register(UINib(nibName: "HairACTCell", bundle: nil), forCellWithReuseIdentifier: "HairACTCell")
    }
    func wigDateNight() {//用户列表 香薰列表
        self.szaokiingView.startAnimating()
        self.errorVierw.text =  "loading....."
        ZoomHolecntroller.fusionBond(microlink: "/lzbmtyz/ewraccqlvpam", quickWeave: ["wigFuturistic":"52541293"]) { wigRising in
            self.errorVierw.isHidden  = true
            self.szaokiingView.stopAnimating()
            guard let wigLegacy = wigRising as? Dictionary<String,Any> ,
                 
                    let wigCulture = wigLegacy["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                
                return
            }
            self.wigAchiever.removeAll()
             wigCulture.forEach({ rebayi in
                 self.wigAchiever.append(ZigBrand.init(diconAModl: rebayi))
            })
            self.wigCreator.reloadData()
            
        } siveGlue: { wigTradition in
            self.szaokiingView.stopAnimating()
            self.errorVierw.isHidden  = true
        }

        ZoomHolecntroller.fusionBond(microlink: "/mxloelmjopkz/hbmgxvklo", quickWeave: ["wigAura":"52541293","wigSoul":10,"wigHeart":2,"wigEssence":5,"wigEnergy":1]) { wigRising in
            self.errorVierw.isHidden  = true
            guard let wigLegacy = wigRising as? Dictionary<String,Any> ,
                 
                    let wigCulture = wigLegacy["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                
                return
            }
            
            self.wigWarrior.removeAll()
             wigCulture.forEach({ rebayi in
                 self.wigWarrior.append(ZigBrand.init(diconAModl: rebayi))
            })
            self.wigInfluencer.reloadData()
        } siveGlue: { wigTradition in
            self.errorVierw.isHidden  = true
        }
        
    }
    
    private func wigUnapologetic()  {
        wigInfluencer.delegate = self
        wigSpecialist.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(wigRuleBreaker)))
        wigInfluencer.dataSource = self
        let sclayout = UICollectionViewFlowLayout.init()
        sclayout.scrollDirection = .vertical
        sclayout.minimumLineSpacing = 9
        sclayout.minimumInteritemSpacing = 9
        sclayout.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 9 - 26)/2, height: 228)
        wigInfluencer.collectionViewLayout = sclayout
        wigInfluencer.register(UINib(nibName: "HairWigLookCell", bundle: nil), forCellWithReuseIdentifier: "HairWigLookCell")
    }

    @IBOutlet weak var wigSpecialist: UIImageView!
    
    
    
   @objc func wigRuleBreaker()  {
       let wigDesigner = ZigOdorNeutralizer.Revitalizer.wigCustomFit(TryOn: "")
       
       let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
       wigSculptor.hidesBottomBarWhenPushed = true
       self.navigationController?.pushViewController(wigSculptor, animated: true)
       
   }
    
}



extension HairsCentricntroller:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == wigCreator {
            return wigAchiever.count
        }
        
        return wigWarrior.count
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == wigCreator {
            let elasticBand = collectionView.dequeueReusableCell(withReuseIdentifier: "HairACTCell", for: indexPath) as! HairACTCell
            
            elasticBand.wigQandA(wigTips:wigAchiever[indexPath.row])
            return elasticBand
            
        }
        
        let elasticBand = collectionView.dequeueReusableCell(withReuseIdentifier: "HairWigLookCell", for: indexPath) as! HairWigLookCell
        elasticBand.wigQandA(wigTips:wigWarrior[indexPath.row])
        return elasticBand
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == wigCreator {
            let ioomu = wigAchiever[indexPath.row].diconAModl["wigWhimsical"] as? Int ?? 0
            
            let wigDesigner = ZigOdorNeutralizer.Luster.wigCustomFit(TryOn: "\(ioomu)")
            
            let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
            wigSculptor.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(wigSculptor, animated: true)
            return
        }
        
        
        
        let ioomu = wigWarrior[indexPath.row].diconAModl["wigUniverse"] as? Int ?? 0
        
        let wigDesigner = ZigOdorNeutralizer.Moisturizer.wigCustomFit(TryOn: "\(ioomu)")
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
        wigSculptor.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(wigSculptor, animated: true)
    }
    
    
}
