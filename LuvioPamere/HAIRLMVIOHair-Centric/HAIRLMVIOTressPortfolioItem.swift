//
//  HAIRLMVIOTressPortfolioItem.swift
//  LuvioPamere
//
//  Created by  on 2025/8/9.
//

import UIKit

struct HAIRLMVIOTressPortfolioItem: Identifiable {
    let id: UUID
    let creationDate: Date
    var styleTitle: String
    var styleDescription: String
    var textureType: HAIRLMVIOCurlPattern
    var colorPalette: [HAIRLMVIOStyleHue]
    var tags: [String]
    var isFeatured: Bool
    var inspirationWord: String?
}
enum HAIRLMVIOCurlPattern: String, CaseIterable {
    case silkenWave = "Waterfall Flow"
    case tightCoil = "Spring Coil"
    case looseSway = "Ocean Sway"
    case zigZag = "Lightning Bolt"
    case undefined = "Mystery Texture"
}

enum HAIRLMVIOStyleHue: String, CaseIterable {
    case HAIRLMVIOmidnightEbony = "Ebony Night"
    case sunriseBlonde = "Golden Dawn"
    case rubyRadiance = "Ruby Glow"
    case emeraldDream = "Emerald Mist"
    case unicornShift = "Prism Shift"
}
