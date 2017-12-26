//
//  StringTests.swift
//  BxTextFieldTests
//
//  Created by Sergan on 26/12/2017.
//  Copyright © 2017 Byterix. All rights reserved.
//

import XCTest
@testable import BxTextField

class StringTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testCreatingRect() {
        let string = "Text with something context"
        let srcRange: NSRange = NSRange(location: 5, length: 9)
        
        guard let dstRange = Range<String.Index>.init(srcRange, in: string) else {
            XCTAssert(false)
            return
        }
        
        let range = string.makeNSRange(from: dstRange)
        XCTAssertEqual(srcRange.location, range.location)
        XCTAssertEqual(srcRange.length, range.length)
    }

    
}
