//
//  QuadFrm.swift
//  QuadCalc+
//
//  Created by Mike Chu on 11/14/14.
//  Copyright (c) 2014 Mike Chu. All rights reserved.
//

import Foundation
import UIKit

class QuadFrm
{
    var a: Double
    var b:Double
    var c: Double
    
    
    init(a:Double, b:Double, c:Double)
    {
        self.a = a
        self.b = b
        self.c = c
    }
    
    func calcRoot1(a:Double, b:Double, c:Double) -> Double
    {
        var temp1 = sqrt((b * b) - 4 * a * c)
        var ans = (-b + temp1)/(2 * a)
        return ans
    }
    
    func calcRoot2(a:Double, b:Double, c:Double) -> Double
    {
        var temp1 = sqrt((b * b) - 4 * a * c)
        var ans = (-b - temp1)/(2 * a)
        return ans
    }
    
    func getDisc(a:Double, b:Double, c:Double) -> String
    {
        var ans = ""
        var desc = sqrt((b*b)-4*a*c)
        if(desc == 0)
        {
            ans = "There will only be one answer"
        }
        else if(desc % 2 == 0 && desc > 0)
        {
            ans = "The answers will be real and rational"
        }
        else if(desc % 2 != 0)
        {
            ans = "The answers will be real and irrational"
        }
        else if(desc < 0)
        {
            ans = "The answers will be imagnary"
        }
        return ans
    }
    
    func calcEquation(a:Double, b:Double) -> String
    {
        var sum = a + b
        var prod = a * b
        return "X^2 + \(-sum)X + \(prod)"
    }
}
