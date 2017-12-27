//
//  CGRect+AdjustmentsTests.swift
//  GradientProgressBarTests
//
//  Created by Felix Mau on 04.03.17.
//  Copyright © 2017 Felix Mau. All rights reserved.
//

import XCTest
@testable import GradientProgressBar

class CGRectAdjustmentsTests: XCTestCase {

    /// Accuracy used for floating value comparison.
    let accuracy = CGFloat(Float.ulpOfOne)

    func testUpdateWidthBy10Percent() {
        let rect = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 123.4)
        let rectWidthUpdateBy10Percent = rect.update(widthByFactor: 1.1)

        XCTAssertEqual(rectWidthUpdateBy10Percent.origin.x, 0.0, accuracy: accuracy)
        XCTAssertEqual(rectWidthUpdateBy10Percent.origin.y, 0.0, accuracy: accuracy)
        XCTAssertEqual(rectWidthUpdateBy10Percent.width, 110.0, accuracy: accuracy)
        XCTAssertEqual(rectWidthUpdateBy10Percent.height, 123.4, accuracy: accuracy)
    }

    func testUpdateWidthByMinus10Percent() {
        let rect = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 123.4)
        let rectWidthUpdateBy10Percent = rect.update(widthByFactor: 0.9)

        XCTAssertEqual(rectWidthUpdateBy10Percent.origin.x, 0.0, accuracy: accuracy)
        XCTAssertEqual(rectWidthUpdateBy10Percent.origin.y, 0.0, accuracy: accuracy)
        XCTAssertEqual(rectWidthUpdateBy10Percent.width, 90.0, accuracy: accuracy)
        XCTAssertEqual(rectWidthUpdateBy10Percent.height, 123.4, accuracy: accuracy)
    }
}
