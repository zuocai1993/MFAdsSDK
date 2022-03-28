//
//  CsjBannerAdapter.h
//  AdvanceSDKDev
//
//  Created by CherryKing on 2020/4/9.
//  Copyright © 2020 bayescom. All rights reserved.
//

#import "MFAdsCore/EasyAdBaseAdPosition.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MFAdsAdspot/EasyAdBannerDelegate.h"

@class EasyAdSupplier;
@class EasyAdBanner;

NS_ASSUME_NONNULL_BEGIN

@interface CsjBannerAdapter : EasyAdBaseAdPosition

@property (nonatomic, weak) id<EasyAdBannerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
