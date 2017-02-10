//
//  PaymentGateway.h
//  Payments
//
//  Created by Ali Barış Öztekin on 2017-02-10.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void) processPaymentAmount:(NSInteger) payment;


@end

@interface PaymentGateway : NSObject

@property (nonatomic,strong) id<PaymentDelegate> paymentDelegate;


@end
