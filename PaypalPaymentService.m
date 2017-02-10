//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Ali Barış Öztekin on 2017-02-10.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void) processPaymentAmount:(NSInteger) payment
{
    NSLog(@"Paypal processed amount $%li",payment);

}

@end
