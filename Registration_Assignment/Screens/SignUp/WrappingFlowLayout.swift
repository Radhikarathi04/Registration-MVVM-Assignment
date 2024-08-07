//
//  WrappingFlowLayout.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 01/07/2024.
//

//import UIKit
//
//class WrappingFlowLayout: UICollectionViewFlowLayout {
//	override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
//		guard let attributes = super.layoutAttributesForElements(in: rect) else { return nil }
//		var currentRowY: CGFloat = -1
//		var currentMaxY: CGFloat = 0
//		var leftInset: CGFloat = sectionInset.left
//		for attribute in attributes {
//			if attribute.frame.origin.y >= currentMaxY {
//				currentRowY = attribute.frame.origin.y
//				leftInset = sectionInset.left
//			}
//			attribute.frame.origin.x = leftInset
//			leftInset += attribute.frame.width + minimumInteritemSpacing
//			currentMaxY = max(currentMaxY, attribute.frame.maxY)
//		}
//		return attributes
//	}
//}
