//
//  HomePageAirQualityStatusSectionControllerCell.swift
//  AirKnow
//
//  Created by 陈超邦 on 2017/9/9.
//  Copyright © 2017年 AirKnow-TaskForce. All rights reserved.
//

import UIKit
import SwiftTheme
import SnapKit

class HomePageAirQualityStatusSectionControllerCell: UICollectionViewCell {
    
    // Circle BG
    lazy var circleBackgroundView: UIView = {
        let circleBackgroundViewInternal = UIView()
        circleBackgroundViewInternal.theme_backgroundColor = AirKnowConfig.homePageAirQualityStatusSectionControllerCellBGStringStyles
        circleBackgroundViewInternal.layer.cornerRadius = 2
        return circleBackgroundViewInternal
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        func layoutCircleBackgroundView() {
            self.contentView.addSubview(circleBackgroundView)
            circleBackgroundView.snp.makeConstraints { (make) in
                make.left.equalTo(self.contentView.snp.left).offset(AirKnowConfig.homePageAirQualityStatusSectionControllerCelLeftPadding)
                make.right.equalTo(self.contentView.snp.right).offset(AirKnowConfig.homePageAirQualityStatusSectionControllerCelRightPadding)
                make.top.equalTo(self.contentView.snp.top)
                make.bottom.equalTo(self.contentView.snp.bottom)
            }
        }
        layoutCircleBackgroundView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}