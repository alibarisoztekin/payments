//
//  StripePaymentService.m
//  Payments
//
//  Created by Ali Barış Öztekin on 2017-02-10.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void) processPaymentAmount:(NSInteger) payment
{
    NSLog(@"Stripe processed amount $%li",payment);

}

@end
