//
//  NaturalsMotioncntroller.swift
//  LuvioPamere
//
//  Created by  on 2025/8/6.
//

import UIKit

class NaturalsMotioncntroller: UIViewController {
    private lazy var szaokiingView:UIActivityIndicatorView = {
       let large = UIActivityIndicatorView.init(style: .large)
        large.frame.size = CGSize.init(width: 54, height: 54)
        large.tintColor = .white
        
        large.hidesWhenStopped = true
        large.color = .white
        return large
    }()
    
    @IBOutlet weak var errorVierw: UITextField!
    
    private var wigWarrior:Array<ZigBrand> = Array<ZigBrand>()
    @IBOutlet weak var wigAesthetic: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        wigUnapologetic()
        self.szaokiingView.center = self.view.center
        self.view.addSubview(self.szaokiingView)
        wigDateNight()
    }
    private func wigUnapologetic()  {
        wigAesthetic.delegate = self
        wigAesthetic.backgroundColor = .clear
        wigAesthetic.dataSource = self
        let sclayout = UICollectionViewFlowLayout.init()
        sclayout.scrollDirection = .vertical
        sclayout.minimumLineSpacing = 8
        sclayout.minimumInteritemSpacing = 8
        sclayout.itemSize = CGSize.init(width: UIScreen.main.bounds.width, height: 268)
        wigAesthetic.collectionViewLayout = sclayout
        wigAesthetic.register(UINib(nibName: "FindwearookCell", bundle: nil), forCellWithReuseIdentifier: "FindwearookCell")
    }

    @IBAction func wigSkinTone(_ sender: Any) {
       
        let wigDesigner = ZigOdorNeutralizer.Breathability.wigCustomFit(TryOn: "")
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
        wigSculptor.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(wigSculptor, animated: true)
    }
    
    @IBAction func wigPersonalization(_ sender: UIButton) {
        let wigDesigner = ZigOdorNeutralizer.Detangler.wigCustomFit(TryOn: "")
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
        wigSculptor.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(wigSculptor, animated: true)
    }
    
    
    
}
extension NaturalsMotioncntroller:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        wigWarrior.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        
        let elasticBand = collectionView.dequeueReusableCell(withReuseIdentifier: "FindwearookCell", for: indexPath) as! FindwearookCell
        elasticBand.wigQandA(wigTips: wigWarrior[indexPath.row])
        elasticBand.wigDesigner.addTarget(self, action: #selector(wigEnchant), for: .touchUpInside)
        elasticBand.wigCollection.tag = indexPath.row
        elasticBand.wigCollection.addTarget(self, action: #selector(claiofjUser(fei:)), for: .touchUpInside)
        return elasticBand
    }
    
   @objc func wigEnchant()  {
       let wigDesigner = ZigOdorNeutralizer.Softness.wigCustomFit(TryOn: "")
       
       let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
       wigSculptor.hidesBottomBarWhenPushed = true
       self.navigationController?.pushViewController(wigSculptor, animated: true)
    }
    
   @objc func claiofjUser(fei:UIButton)  {
       let ioomu = wigWarrior[fei.tag].diconAModl["wigMoonlight"] as? String ?? "0"
        
        let wigDesigner = ZigOdorNeutralizer.Luster.wigCustomFit(TryOn: ioomu)
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
        wigSculptor.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(wigSculptor, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let ioomu = wigWarrior[indexPath.row].diconAModl["wigUniverse"] as? Int ?? 0
        
        let wigDesigner = ZigOdorNeutralizer.Silkener.wigCustomFit(TryOn: "\(ioomu)")
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
        wigSculptor.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(wigSculptor, animated: true)
    }
    
    
    func wigDateNight() {
        self.szaokiingView.startAnimating()
        self.errorVierw.text =  "loading....."
        

        ZoomHolecntroller.fusionBond(microlink: "/mxloelmjopkz/hbmgxvklo", quickWeave: ["wigAura":"52541293","wigSoul":10,"wigEnergy":1,"wigEssence":1]) { wigRising in
            self.errorVierw.isHidden  = true
            self.szaokiingView.stopAnimating()
            guard let wigLegacy = wigRising as? Dictionary<String,Any> ,
                 
                    let wigCulture = wigLegacy["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                
                return
            }
            
            self.wigWarrior.removeAll()
             wigCulture.forEach({ rebayi in
                 if rebayi["wigIntrigue"] as? String == nil {
                     self.wigWarrior.append(ZigBrand.init(diconAModl: rebayi))
                 }
                 
            })
            self.wigAesthetic.reloadData()
        } siveGlue: { wigTradition in
            self.szaokiingView.stopAnimating()
            self.errorVierw.isHidden  = true
        }
        
    }
    
}
