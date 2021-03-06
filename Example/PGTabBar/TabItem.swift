//
//  TabItem.swift
//  Pods
//
//  Created by ipagong on 2017. 4. 24..
//
//

import Foundation
import PGTabBar

public struct TabItem : TabItemProtocol {
    public var tabIdentifier: String!

    
    public var title:NSAttributedString
    public var selectedTitle:NSAttributedString
    
    public init(title:NSAttributedString, selectedTitle:NSAttributedString, cellClazz:UICollectionViewCell.Type, identifier:String? = nil) {
        self.title = title
        self.selectedTitle = selectedTitle
        self.tabCellClazz = cellClazz
    }

    public var didSelected:Bool!
    public var tabItemKey:String!
    public var tabCellClazz:UICollectionViewCell.Type!
    public var itemMinimumWidth:CGFloat {
        return title.boundingRect(with: CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude),
                                  options: [.usesLineFragmentOrigin],
                                  context: nil).size.width
    }
    
    
    public var hashValue: Int {
        return title.hashValue
    }
    
    public static func ==(lhs: TabItem, rhs: TabItem) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
