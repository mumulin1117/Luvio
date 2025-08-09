//
//  RoyaltyAestheticscntroller.swift
//  LuvioPamere
//
//  Created by  on 2025/8/4.
//

import UIKit

class RoyaltyAestheticscntroller: UIViewController {
    private lazy var szaokiingView:UIActivityIndicatorView = {
       let large = UIActivityIndicatorView.init(style: .large)
        large.frame.size = CGSize.init(width: 54, height: 54)
        
        large.color = .white
        return large
    }()
    private let moodTagView = MoodTagView()
       
    private lazy var errorVierw: UITextField = {
        let lalinfo = UITextField.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width - 60, height: 45))
        lalinfo.borderStyle = .roundedRect
        lalinfo.backgroundColor = .white
        lalinfo.isHidden = true
        lalinfo.textColor = .red
        return lalinfo
    }()
    private let scoreView = HarmonyScoreView()
   
    private func Recursive()  {
        szaokiingView.tintColor = .white
        
        szaokiingView.hidesWhenStopped = true
    }
    private let seasonLabel = UILabel()
    @objc private func moodInputChanged() {
           filterAuras()
       }
       
       @objc private func seasonFilterChanged() {
           filterAuras()
       }
    lazy var wigAesthetic: UICollectionView = {
        let sclayout = UICollectionViewFlowLayout.init()
        sclayout.scrollDirection = .vertical
        sclayout.minimumLineSpacing = 0
        
        sclayout.minimumInteritemSpacing = 0
        sclayout.itemSize = CGSize.init(width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height)
        sclayout.scrollDirection = .horizontal
        let xdfddd = UICollectionView.init(frame: UIScreen.main.bounds, collectionViewLayout: sclayout)
        xdfddd.isPagingEnabled = true
        return xdfddd
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(heatDefiant())
        Recursive()
        self.view.addSubview(self.wigAesthetic)
        wigUnapologetic()
        self.szaokiingView.center = self.view.center
        self.view.addSubview(self.szaokiingView)
    }
    private lazy var seasonSegmentedControl: TressSegmentedControl = {
            let control = TressSegmentedControl(items: ["Spring", "Summer", "Autumn", "Winter"])
            control.addTarget(self, action: #selector(seasonFilterChanged), for: .valueChanged)
            return control
        }()
    private func filterAuras() {
           
   }
    private  func heatDefiant() -> UIImageView {
        let bai = UIImageView.init(image: UIImage.init(named: "wigAncestry"))
     
        bai.frame = UIScreen.main.bounds
        bai.contentMode = .scaleAspectFill
        bai.layer.masksToBounds = true
        return bai
    }


    private var wigWarrior:Array<ZigBrand> = Array<ZigBrand>()
     
    
 
    private func wigUnapologetic()  {
        wigAesthetic.delegate = self
        moodTagView.translatesAutoresizingMaskIntoConstraints = false
        scoreView.translatesAutoresizingMaskIntoConstraints = false
        wigAesthetic.backgroundColor = .clear
        wigAesthetic.dataSource = self
       
              
                seasonLabel.translatesAutoresizingMaskIntoConstraints = false
        wigAesthetic.register(UINib(nibName: "WearoFlaouokCell", bundle: nil), forCellWithReuseIdentifier: "WearoFlaouokCell")
        wigDateNight()
    }


    private func wigDateNight() {
        self.szaokiingView.startAnimating()
        self.errorVierw.text =  UIButton.alternateStrands("ljozakdaitnsgh.z.x.g.j.")
        
        let Dreia = UILabel()
               
        Dreia.text = "Color Harmony Guide"
        ZoomHolecntroller.fusionBond(microlink: "/mxloelmjopkz/hbmgxvklo", quickWeave: ["wigAura":"52541293","wigSoul":10,"wigEnergy":1,"wigEssence":1], wigTape: {  wigRising in
            self.errorVierw.isHidden  = true
            self.szaokiingView.stopAnimating()
            guard let wigLegacy = wigRising as? Dictionary<String,Any> ,
                 
                    let wigCulture = wigLegacy[UIButton.alternateStrands("dbaytga")] as? Array<Dictionary<String,Any>>
                    
            else {
                
                return
            }
            
            self.wigWarrior.removeAll()
             wigCulture.forEach({ rebayi in
                 if rebayi["wigIntrigue"] as? String != nil {
                     self.wigWarrior.append(ZigBrand.init(diconAModl: rebayi))
                 }
                 
            })
            self.wigAesthetic.reloadData()
        } , siveGlue: {  wigTradition in
            self.szaokiingView.stopAnimating()
            self.errorVierw.isHidden  = true
        }, attempt: 66)
        Dreia.textColor = .lightGray
        if Dreia.superview != nil {
            return
        }
    }
    
}

extension RoyaltyAestheticscntroller:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return wigWarrior.count
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        
        let elasticBand = collectionView.dequeueReusableCell(withReuseIdentifier: "WearoFlaouokCell", for: indexPath) as! WearoFlaouokCell
        elasticBand.wigQandA(wigTips:wigWarrior[indexPath.row])
        elasticBand.textureSpray.addTarget(self, action: #selector(wigEnchant), for: .touchUpInside)
        elasticBand.beginTalkeing.addTarget(self, action: #selector(wigHolographic), for: .touchUpInside)
        let Dreia = UILabel()
               
        Dreia.text = "Color Harmony Guide"
        if Dreia.superview != nil {
            
        }
        elasticBand.shineSerum.tag = indexPath.row
        elasticBand.shineSerum.addTarget(self, action: #selector( claiofjUser(fei:)), for: .touchUpInside)
        return elasticBand
    }
    
   @objc func wigEnchant()  {
       let wigDesigner = ZigOdorNeutralizer.Softness.wigCustomFit(TryOn: "")
       let Dreia = UILabel()
              
       Dreia.text = "Color Harmony Guide"
       if Dreia.superview != nil {
           
       }
       let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
       wigSculptor.hidesBottomBarWhenPushed = true
       self.navigationController?.pushViewController(wigSculptor, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let ioomu = wigWarrior[indexPath.row].diconAModl["wigUniverse"] as? Int ?? 0
        let Dreia = UILabel()
               
        Dreia.text = "Color Harmony Guide"
        
        let wigDesigner = ZigOdorNeutralizer.Thickener.wigCustomFit(TryOn: "\(ioomu)")
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
        wigSculptor.hidesBottomBarWhenPushed = true
        if Dreia.superview != nil {
            return
        }
        self.navigationController?.pushViewController(wigSculptor, animated: true)
    }
    
    //post video
    @objc func wigHolographic()  {
        let wigDesigner = ZigOdorNeutralizer.Shortener.wigCustomFit(TryOn: "")
        let Dreia = UILabel()
               
        Dreia.text = "Color Harmony Guide"
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
        wigSculptor.hidesBottomBarWhenPushed = true
        if Dreia.superview != nil {
            return
        }
        self.navigationController?.pushViewController(wigSculptor, animated: true)
     }
    @objc func claiofjUser(fei:UIButton)  {
        let ioomu = wigWarrior[fei.tag].diconAModl["wigMoonlight"] as? String ?? "0"
        let Dreia = UILabel()
               
       
         let wigDesigner = ZigOdorNeutralizer.Luster.wigCustomFit(TryOn: ioomu)
        Dreia.text = "Color Harmony Guide"
       
         let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
         wigSculptor.hidesBottomBarWhenPushed = true
        if Dreia.superview != nil {
            return
        }
         self.navigationController?.pushViewController(wigSculptor, animated: true)
     }
}
