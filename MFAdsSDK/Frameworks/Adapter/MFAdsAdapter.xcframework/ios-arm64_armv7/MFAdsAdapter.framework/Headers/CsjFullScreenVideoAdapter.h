//
//  CsjFullScreenVideoAdapter.h
//  AdvanceSDKDev
//
//  Created by CherryKing on 2020/4/13.
//  Copyright © 2020 bayescom. All rights reserved.
//

#import "MFAdsCore/EasyAdBaseAdPosition.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MFAdsAdspot/EasyAdFullScreenVideoDelegate.h"

@class EasyAdSupplier;
@class EasyAdFullScreenVideo;

NS_ASSUME_NONNULL_BEGIN

@interface CsjFullScreenVideoAdapter : EasyAdBaseAdPosition
@property (nonatomic, weak) id<EasyAdFullScreenVideoDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
