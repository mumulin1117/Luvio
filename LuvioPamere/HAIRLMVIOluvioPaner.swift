//
//  HAIRLMVIOluvioPaner.swift
//  LuvioPamere
//
//  Created by  on 2025/11/10.
//
import StoreKit

class HAIRLMVIOluvioPaner: NSObject {
    
    static let shared = HAIRLMVIOluvioPaner()
    private var HAIRLMVIOwigColorMatch: ((Result<Void, Error>) -> Void)?
    private var HAIRLMVIOwigVintage: SKProductsRequest?
   
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }

    func HAIRLMVIOwigInspiration(HAIRLMVIOwigTutorial productID: String, HAIRLMVIOwigMakeover: @escaping (Result<Void, Error>) -> Void) {
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                HAIRLMVIOwigMakeover(.failure(NSError(domain: "Luvio",
                                            code: -1,
                                            userInfo: [NSLocalizedDescriptionKey: UIButton.HAIRLMVIOalternateStrands("Pzulrzcnhvapsreqsg ddoiksqadbdlaeudr uounv ctqhcimsy xdjecvviicdea.")])))
            }
            
            return
        }
        
        self.HAIRLMVIOwigColorMatch = HAIRLMVIOwigMakeover
        HAIRLMVIOwigVintage?.cancel()
        
        let HAIRLMVIOwigFitting = SKProductsRequest(productIdentifiers: [productID])
        HAIRLMVIOwigFitting.delegate = self
        self.HAIRLMVIOwigVintage = HAIRLMVIOwigFitting
        HAIRLMVIOwigFitting.start()
    }

}

extension HAIRLMVIOluvioPaner: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        guard let HAIRLMVIOwigMeasurement = response.products.first else {
            DispatchQueue.main.async {
                self.HAIRLMVIOwigColorMatch?(.failure(NSError(domain: "Luvio",
                                             code: -2,
                                             userInfo: [NSLocalizedDescriptionKey: UIButton.HAIRLMVIOalternateStrands("Pqrxogdmuocvtq wnoouti jfqojucnidx.")])))
                self.HAIRLMVIOwigColorMatch = nil
            }
            
            return
        }
        SKPaymentQueue.default().add(SKPayment(product: HAIRLMVIOwigMeasurement))
    }
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async {
            self.HAIRLMVIOwigColorMatch?(.failure(error))
            self.HAIRLMVIOwigColorMatch = nil
        }
        
    }
}

extension HAIRLMVIOluvioPaner: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for HAIRLMVIOigxSizing in transactions {
            switch HAIRLMVIOigxSizing.transactionState {
            case .purchased:
               
                SKPaymentQueue.default().finishTransaction(HAIRLMVIOigxSizing)
                DispatchQueue.main.async {
                    self.HAIRLMVIOwigColorMatch?(.success(()))
                    self.HAIRLMVIOwigColorMatch = nil
                }
                
            case .failed:
                SKPaymentQueue.default().finishTransaction(HAIRLMVIOigxSizing)
                let e = (HAIRLMVIOigxSizing.error as? SKError)?.code == .paymentCancelled
                ? NSError(domain: "Luvio", code: -999, userInfo: [NSLocalizedDescriptionKey: UIButton.HAIRLMVIOalternateStrands("Pfazyjmeernjts rcbaxnocmevlblyeidf.")])
                : (HAIRLMVIOigxSizing.error ?? NSError(domain: "Luvio", code: -3, userInfo: [NSLocalizedDescriptionKey:UIButton.HAIRLMVIOalternateStrands("Pnuyrwcshvagshem efjaviwlmepdv.")]))
                DispatchQueue.main.async {
                    self.HAIRLMVIOwigColorMatch?(.failure(e))
                    self.HAIRLMVIOwigColorMatch = nil
                }
                
            case .restored:
                SKPaymentQueue.default().finishTransaction(HAIRLMVIOigxSizing)
            default:
                break
            }
        }
    }
}

extension HAIRLMVIOluvioPaner {
    
    func HAIRLMVIOlocalReceiptData() -> Data? {
        guard let url = Bundle.main.appStoreReceiptURL else {
            return nil
        }
        return try? Data(contentsOf: url)
    }

    var HAIRLMVIOlastTransactionID: String? {
        SKPaymentQueue.default().transactions.last?.transactionIdentifier
    }
    
    
}
