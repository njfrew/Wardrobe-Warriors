//
//  matchingTests.swift
//  FitFinderTests
//
//  Created by Noah Frew on 5/5/21.
//

import XCTest
import SwiftUI
@testable import FitFinder

class MatchingTests: XCTestCase {
    var sut: OutfitSubmissionSwiftUIView!
    @Environment(\.managedObjectContext) private var viewContext

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = OutfitSubmissionSwiftUIView()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }

    func testFittingColorOne() throws {
        var articlesOfClothing = [ArticleOfClothing]()

        let articleOfClothingOne = ArticleOfClothing(context: viewContext, image: nil, red: 0, blue: 255, green: 255, rawFormality: "casual", rawTypeOfClothing: "pants", rawAppropriateTemperature: "mild")
        let articleOfClothingTwo = ArticleOfClothing(context: viewContext, image: nil, red: 0, blue: 0, green: 0, rawFormality: "casual", rawTypeOfClothing: "pants", rawAppropriateTemperature: "mild")
        let articleOfClothingThree = ArticleOfClothing(context: viewContext, image: nil, red: 0, blue: 0, green: 0, rawFormality: "casual", rawTypeOfClothing: "pants", rawAppropriateTemperature: "mild")
        let articleOfClothingFour = ArticleOfClothing(context: viewContext, image: nil, red: 0, blue: 0, green: 0, rawFormality: "casual", rawTypeOfClothing: "pants", rawAppropriateTemperature: "mild")
        let articleOfClothingFive = ArticleOfClothing(context: viewContext, image: nil, red: 0, blue: 0, green: 0, rawFormality: "casual", rawTypeOfClothing: "pants", rawAppropriateTemperature: "mild")
        
        if articleOfClothingOne != nil || articleOfClothingTwo != nil || articleOfClothingThree != nil || articleOfClothingFour != nil || articleOfClothingFive != nil {
            articlesOfClothing.insert(articleOfClothingOne!, at: 0)
            articlesOfClothing.insert(articleOfClothingTwo!, at: 1)
            articlesOfClothing.insert(articleOfClothingThree!, at: 2)
            articlesOfClothing.insert(articleOfClothingFour!, at: 3)
            articlesOfClothing.insert(articleOfClothingFive!, at: 4)
        }
        
        
        let result = sut.matchComplementaryColors(inputColor: .red, consideredBottoms: articlesOfClothing)
        
        XCTAssertEqual(result, 0, "Color found was cyan.")
    }

    func testFittingColorTwo() throws {
        var articlesOfClothing = [ArticleOfClothing]()

        let articleOfClothingOne = ArticleOfClothing(context: viewContext, image: nil, red: 0, blue: 0, green: 255, rawFormality: "casual", rawTypeOfClothing: "pants", rawAppropriateTemperature: "mild")
        let articleOfClothingTwo = ArticleOfClothing(context: viewContext, image: nil, red: 255, blue: 0, green: 0, rawFormality: "casual", rawTypeOfClothing: "pants", rawAppropriateTemperature: "mild")
        let articleOfClothingThree = ArticleOfClothing(context: viewContext, image: nil, red: 0, blue: 0, green: 0, rawFormality: "casual", rawTypeOfClothing: "pants", rawAppropriateTemperature: "mild")
        let articleOfClothingFour = ArticleOfClothing(context: viewContext, image: nil, red: 255, blue: 0, green: 0, rawFormality: "casual", rawTypeOfClothing: "pants", rawAppropriateTemperature: "mild")
        let articleOfClothingFive = ArticleOfClothing(context: viewContext, image: nil, red: 0, blue: 0, green: 255, rawFormality: "casual", rawTypeOfClothing: "pants", rawAppropriateTemperature: "mild")
        
        if articleOfClothingOne != nil || articleOfClothingTwo != nil || articleOfClothingThree != nil || articleOfClothingFour != nil || articleOfClothingFive != nil {
            articlesOfClothing.insert(articleOfClothingOne!, at: 0)
            articlesOfClothing.insert(articleOfClothingTwo!, at: 1)
            articlesOfClothing.insert(articleOfClothingThree!, at: 2)
            articlesOfClothing.insert(articleOfClothingFour!, at: 3)
            articlesOfClothing.insert(articleOfClothingFive!, at: 4)
        }
        
        
        let result = sut.matchComplementaryColors(inputColor: .gray, consideredBottoms: articlesOfClothing)
        
        XCTAssertEqual(result, 2, "Color found was black.")
    }
    
    func testFittingColorThree() throws {
        var articlesOfClothing = [ArticleOfClothing]()

        let articleOfClothingOne = ArticleOfClothing(context: viewContext, image: nil, red: 125, blue: 255, green: 125, rawFormality: "casual", rawTypeOfClothing: "pants", rawAppropriateTemperature: "mild")
        let articleOfClothingTwo = ArticleOfClothing(context: viewContext, image: nil, red: 125, blue: 255, green: 125, rawFormality: "casual", rawTypeOfClothing: "pants", rawAppropriateTemperature: "mild")
        let articleOfClothingThree = ArticleOfClothing(context: viewContext, image: nil, red: 125, blue: 255, green: 125, rawFormality: "casual", rawTypeOfClothing: "pants", rawAppropriateTemperature: "mild")
        let articleOfClothingFour = ArticleOfClothing(context: viewContext, image: nil, red: 125, blue: 255, green: 125, rawFormality: "casual", rawTypeOfClothing: "pants", rawAppropriateTemperature: "mild")
        let articleOfClothingFive = ArticleOfClothing(context: viewContext, image: nil, red: 255, blue: 255, green: 255, rawFormality: "casual", rawTypeOfClothing: "pants", rawAppropriateTemperature: "mild")
        
        if articleOfClothingOne != nil || articleOfClothingTwo != nil || articleOfClothingThree != nil || articleOfClothingFour != nil || articleOfClothingFive != nil {
            articlesOfClothing.insert(articleOfClothingOne!, at: 0)
            articlesOfClothing.insert(articleOfClothingTwo!, at: 1)
            articlesOfClothing.insert(articleOfClothingThree!, at: 2)
            articlesOfClothing.insert(articleOfClothingFour!, at: 3)
            articlesOfClothing.insert(articleOfClothingFive!, at: 4)
        }
        
        
        let result = sut.matchComplementaryColors(inputColor: .magenta, consideredBottoms: articlesOfClothing)
        
        XCTAssertEqual(result, 4, "Color found was white.")
    }
    
}
