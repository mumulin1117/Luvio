//
//  HAIRLMVIO_LookModel.swift
//  LuvioPamere
//
//  Created by  on 2025/12/4.
//

import UIKit

struct HAIRLMVIO_LookModel {
    let hairLuvioLookId: String
    let hairLuvioCreatorName: String
    let hairLuvioWigName: String
    let hairLuvioStyleStory: String
    let hairLuvioMediaType: HAIRLMVIO_MediaType
    let hairLuvioMediaMagicName: String
    let hairLuvioCreateTime: Date
    var hairLuvioHeartGlowCount: Int
    var hairLuvioStyleChatCount: Int
    var hairLuvioUserGlowed: Bool
    let hairLuvioStyleTags: [String]
    let hairLuvioCreatorAvatarName: String
    
    enum HAIRLMVIO_MediaType {
        case hairLuvioImageMagic
        case hairLuvioVideoVibe
    }
}
