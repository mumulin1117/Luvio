//
//  HAIRLMVIO_StyleFlowLayout.swift
//  LuvioPamere
//
//  Created by mumu on 2025/12/4.
//

import UIKit

class HAIRLMVIO_StyleFlowLayout: UICollectionViewFlowLayout {
    var hairLuvioMinimumLineSpacing: CGFloat = 0
    var hairLuvioMinimumInteritemSpacing: CGFloat = 0
    
    override var minimumLineSpacing: CGFloat {
        get { return hairLuvioMinimumLineSpacing }
        set { hairLuvioMinimumLineSpacing = newValue }
    }
    
    override var minimumInteritemSpacing: CGFloat {
        get { return hairLuvioMinimumInteritemSpacing }
        set { hairLuvioMinimumInteritemSpacing = newValue }
    }
    
    override func prepare() {
        super.prepare()
        scrollDirection = .vertical
    }
}
