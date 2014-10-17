//
//  TestTabBarItem.swift
//  AdaptiveController
//
//  Created by Arcilite on 17.10.14.
//  Copyright (c) 2014 Ramotion. All rights reserved.
//

import Foundation
import UIKit
import AdaptiveController
import XCTest

class TestTabBarItem:   AdaptiveApperanceProtocol {
    
    var font:UIFont?
    var text:NSString?
    var image:UIImage?
    var selectedImage:UIImage?
    var insets:UIEdgeInsets?
    var color:UIColor?
    var offset :UIOffset?
    
    init(){
        
    }
    
    func setFontToAdaptiveButton(font: UIFont){
        XCTAssertNotNil(font)
         XCTAssert(font.isEqual(self.font), "Fail  font")
    }
    
    func setTitleToAdaptiveButton(text: NSString){
         XCTAssertNotNil(text)
         XCTAssertNotNil(self.text)
         println(text)
         XCTAssert(text.isEqualToString(self.text!), "Fail  text")
    }
    
    func setImageToAdaptiveButton(image: UIImage){
        XCTAssert(image.isEqual(self.image), "Fail  image")
    }
    
    func setSelectedImageToAdaptiveButton(image: UIImage){
        XCTAssert(image.isEqual(self.selectedImage), "Fail Selected image")
    }
    
    func setImageInsetsToAdaptiveButton(insets: UIEdgeInsets){
        XCTAssert(UIEdgeInsetsEqualToEdgeInsets(insets, self.insets!), "Fail insets")
    }
    
    func setTitleOffsetToAdaptiveButton(offset: UIOffset){
        println(offset)
        println(self.offset)
        XCTAssert(UIOffsetEqualToOffset(offset,self.offset!), "Fail offset")
    }
    
    func setTitleColorToAdaptiveButton(color: UIColor){
       XCTAssert(color.isEqual(self.color), "Fail color")
    }
    
    
    
}