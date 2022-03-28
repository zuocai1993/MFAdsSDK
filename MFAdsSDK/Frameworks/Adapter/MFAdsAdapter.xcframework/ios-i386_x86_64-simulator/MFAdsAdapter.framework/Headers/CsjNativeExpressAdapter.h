//
//  CsjNativeExpressAdapter.h
//  AdvanceSDKDev
//
//  Created by CherryKing on 2020/4/9.
//  Copyright © 2020 bayescom. All rights reserved.
//

#import "MFAdsCore/EasyAdBaseAdPosition.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MFAdsAdspot/EasyAdNativeExpressDelegate.h"

@class EasyAdSupplier;
@class EasyAdNativeExpress;

NS_ASSUME_NONNULL_BEGIN

@interface CsjNativeExpressAdapter : EasyAdBaseAdPosition
@property (nonatomic, weak) id<EasyAdNativeExpressDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
