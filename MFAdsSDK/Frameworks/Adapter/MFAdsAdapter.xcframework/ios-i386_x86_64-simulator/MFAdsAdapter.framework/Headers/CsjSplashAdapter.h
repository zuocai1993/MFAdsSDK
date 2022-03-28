//
//  CsjSplashAdapter.h
//  AdvanceSDKExample
//
//  Created by CherryKing on 2020/4/8.
//  Copyright © 2020 Mercury. All rights reserved.
//
#import "MFAdsCore/EasyAdBaseAdPosition.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MFAdsAdspot/EasyAdSplashDelegate.h"

@class EasyAdSupplier;
@class EasyAdSplash;

NS_ASSUME_NONNULL_BEGIN

@interface CsjSplashAdapter : EasyAdBaseAdPosition
@property (nonatomic, weak) id<EasyAdSplashDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
