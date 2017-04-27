//
//  TabItem.swift
//  Pods
//
//  Created by ipagong on 2017. 4. 24..
//
//

import Foundation

public struct TabItem : TabItemProtocol {
    
    public var didSelected:Bool!

    public var tabIcon:UIImage?
    public var tabTitle:NSAttributedString?

    public var tabBackgroundColor:TabStateElement<UIColor>?

    public var tabIdentifier:String!
    public var tabCellClazz:UICollectionViewCell.Type!
    
    public init(title:NSAttributedString, cellClazz:UICollectionViewCell.Type, identifier:String? = nil) {
        self.tabTitle = title
        self.tabCellClazz = cellClazz
        self.tabIdentifier = identifier ?? NSStringFromClass(tabCellClazz) as String
    }

}