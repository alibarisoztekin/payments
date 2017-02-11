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
    if([self canProcessPayment])
    NSLog(@"Stripe processed amount $%li",payment);
    else
        NSLog(@"Payment can't be processed at this time");

}
-(BOOL) canProcessPayment
{
    BOOL result;
    int processor = arc4random_uniform(2);
    if (processor ==1)
        result = YES;
    else
        result = NO;
    
    return result;
}


@end
