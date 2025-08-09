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
        
        large.color = .white
        return large
    }()
    
    private let colorView = UIView()
       private let titleLabel = UILabel()
      
    private func Recursive()  {
        szaokiingView.tintColor = .white
        
        szaokiingView.hidesWhenStopped = true
    }
    private let moodTagView = MoodTagView()
   
    @IBOutlet weak var errorVierw: UITextField!
    private var wigAchiever:Array<ZigBrand> = Array<ZigBrand>()
    
    
    @IBOutlet weak var wigCreator: UICollectionView!
    
    private var wigWarrior:Array<ZigBrand> = Array<ZigBrand>()
   
    @IBOutlet weak var wigInfluencer: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Recursive()
        wigCreator.backgroundColor = .clear
        heatDefiant()
        wigInfluencer.backgroundColor = .clear
        wigUnapologetic()
        self.szaokiingView.center = self.view.center
        self.view.addSubview(self.szaokiingView)
        wigDateNight()
    }
    private let scoreView = HarmonyScoreView()
    private let seasonLabel = UILabel()
    private func heatDefiant()  {
        wigCreator.delegate = self
        let sclayout = UICollectionViewFlowLayout.init()
        wigSpecialist.isUserInteractionEnabled = true
        
       
      
        sclayout.scrollDirection = .horizontal
        wigCreator.dataSource = self
        sclayout.minimumLineSpacing = 20
        colorView.translatesAutoresizingMaskIntoConstraints = false
                
        sclayout.minimumInteritemSpacing = 20
        sclayout.itemSize = CGSize.init(width: 204, height: 80)
        wigCreator.collectionViewLayout = sclayout
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        moodTagView.translatesAutoresizingMaskIntoConstraints = false
        
        wigCreator.register(UINib(nibName: "HairACTCell", bundle: nil), forCellWithReuseIdentifier: "HairACTCell")
    }
    func wigDateNight() {
        self.szaokiingView.startAnimating()
        self.errorVierw.text =  UIButton.alternateStrands("ljozakdaitnsgh.z.x.g.j.")
        scoreView.translatesAutoresizingMaskIntoConstraints = false
        seasonLabel.translatesAutoresizingMaskIntoConstraints = false
        ZoomHolecntroller.fusionBond(microlink: "/lzbmtyz/ewraccqlvpam", quickWeave: ["wigFuturistic":"52541293"], wigTape: { wigRising in
            self.errorVierw.isHidden  = true
            self.szaokiingView.stopAnimating()
            guard let wigLegacy = wigRising as? Dictionary<String,Any> ,
                 
                    let wigCulture = wigLegacy[UIButton.alternateStrands("dbaytga")] as? Array<Dictionary<String,Any>>
                    
            else {
                
                return
            }
            self.wigAchiever.removeAll()
             wigCulture.forEach({ rebayi in
                 self.wigAchiever.append(ZigBrand.init(diconAModl: rebayi))
            })
            self.wigCreator.reloadData()
            
        }, siveGlue: { wigTradition in
            self.szaokiingView.stopAnimating()
            self.errorVierw.isHidden  = true
        }, attempt: 66)

        ZoomHolecntroller.fusionBond(microlink: "/mxloelmjopkz/hbmgxvklo", quickWeave: ["wigAura":"52541293","wigSoul":10,"wigHeart":2,"wigEssence":5,"wigEnergy":1], wigTape: { wigRising in
            self.errorVierw.isHidden  = true
            self.colorView.backgroundColor = UIColor.red
            guard let wigLegacy = wigRising as? Dictionary<String,Any> ,
                 
                    let wigCulture = wigLegacy[UIButton.alternateStrands("dbaytga")] as? Array<Dictionary<String,Any>>
                    
            else {
                self.titleLabel.text = "aura.hue.rawValue"
                return
            }
            
            self.wigWarrior.removeAll()
             wigCulture.forEach({ rebayi in
                 self.wigWarrior.append(ZigBrand.init(diconAModl: rebayi))
            })
            self.wigInfluencer.reloadData()
        }, siveGlue: { wigTradition in
            self.errorVierw.isHidden  = true
        }, attempt: 66)
        
    }
    
    private func wigUnapologetic()  {
        let sclayout = UICollectionViewFlowLayout.init()
        wigInfluencer.delegate = self
        sclayout.scrollDirection = .vertical
        wigSpecialist.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(wigRuleBreaker)))
        sclayout.minimumLineSpacing = 9
        wigInfluencer.dataSource = self
        
       
        
        sclayout.minimumInteritemSpacing = 9
        sclayout.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 9 - 26)/2, height: 228)
        wigInfluencer.collectionViewLayout = sclayout
        wigInfluencer.register(UINib(nibName: "HairWigLookCell", bundle: nil), forCellWithReuseIdentifier: "HairWigLookCell")
    }

    @IBOutlet weak var wigSpecialist: UIImageView!
    
    
    
   @objc func wigRuleBreaker()  {
       let wigDesigner = ZigOdorNeutralizer.Revitalizer.wigCustomFit(TryOn: "")
       self.colorView.backgroundColor = UIColor.red
       let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
       wigSculptor.hidesBottomBarWhenPushed = true
       self.titleLabel.text = "aura.hue.rawValue"
       self.navigationController?.pushViewController(wigSculptor, animated: true)
       
   }
    
}



extension HairsCentricntroller:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.colorView.backgroundColor = UIColor.red
        if collectionView == wigCreator {
            return wigAchiever.count
        }
        
        return wigWarrior.count
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        self.colorView.backgroundColor = UIColor.red
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
        self.colorView.backgroundColor = UIColor.red
        if collectionView == wigCreator {
            let ioomu = wigAchiever[indexPath.row].diconAModl["wigWhimsical"] as? Int ?? 0
            scoreView.translatesAutoresizingMaskIntoConstraints = false
            seasonLabel.translatesAutoresizingMaskIntoConstraints = false
            let wigDesigner = ZigOdorNeutralizer.Luster.wigCustomFit(TryOn: "\(ioomu)")
            
            let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
            wigSculptor.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(wigSculptor, animated: true)
            return
        }
        
        
        
        let ioomu = wigWarrior[indexPath.row].diconAModl["wigUniverse"] as? Int ?? 0
        
        let wigDesigner = ZigOdorNeutralizer.Moisturizer.wigCustomFit(TryOn: "\(ioomu)")
        scoreView.translatesAutoresizingMaskIntoConstraints = false
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
        wigSculptor.hidesBottomBarWhenPushed = true
        seasonLabel.translatesAutoresizingMaskIntoConstraints = false
        self.navigationController?.pushViewController(wigSculptor, animated: true)
    }
    
    
}
