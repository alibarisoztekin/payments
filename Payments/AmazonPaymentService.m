//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Ali Barış Öztekin on 2017-02-10.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

-(void) processPaymentAmount:(NSInteger) payment
{
    NSLog(@"Amazon processed amount $%li",payment);
}

@end
