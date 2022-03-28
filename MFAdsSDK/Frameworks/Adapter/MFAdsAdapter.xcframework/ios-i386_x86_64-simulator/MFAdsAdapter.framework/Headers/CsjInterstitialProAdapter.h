//
//  CsjInterstitialProAdapter.h
//  AdvanceSDK
//
//  Created by MS on 2021/5/20.
//


#import "MFAdsCore/EasyAdBaseAdPosition.h"
#import <Foundation/Foundation.h>
#import "MFAdsAdspot/EasyAdInterstitialDelegate.h"

@class EasyAdSupplier;
@class EasyAdInterstitial;


NS_ASSUME_NONNULL_BEGIN

@interface CsjInterstitialProAdapter : EasyAdBaseAdPosition
@property (nonatomic, weak) id<EasyAdInterstitialDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
