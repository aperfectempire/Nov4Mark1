//
//  View.swift
//  Nov4Mark1
//
//  Created by SSCSIS on 1/10/15.
//  Copyright (c) 2015 aperfectempire. All rights reserved.
//

import UIKit

class View: UIView {
	
	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		println("init frame = \(frame)");
		println("init bounds = \(bounds)");
		
		backgroundColor = UIColor.whiteColor();
	}
	
	// Only override drawRect: if you perform custom drawing.
	// An empty implementation adversely affects performance during animation.
	
	override func drawRect(rect: CGRect)
	{
		// Drawing code
		println("drawRect frame = \(frame)");
		println("drawRect bounds = \(bounds)");
		
		/*
		Create the invisible square that will surround the circle.
		Place the upper left corner of the square at the upper left corner of
		the View.  bounds.origin.x and bounds.origin.y are the coordinates of
		the upper left corner of the View.
		*/
		var radius: CGFloat = 0.3 * bounds.size.width;	//in pixels
		
		let r: CGRect = CGRectMake(
			bounds.origin.x + bounds.size.width / 2 - radius,
			bounds.origin.y + bounds.size.height / 2 - radius,
			2 * radius,
			2 * radius);
		
		var c: CGContextRef = UIGraphicsGetCurrentContext();
		CGContextBeginPath(c);	//unnecessary here: the path is already empty.
		CGContextAddEllipseInRect(c, r);
		CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 1.0);	//red, opaque
		CGContextFillPath(c);
	}
	
}