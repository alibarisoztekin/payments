//
//  main.m
//  Payments
//
//  Created by Ali Barış Öztekin on 2017-02-10.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int payment = arc4random_uniform(900)+100;
        while (YES) {
         
        PaymentGateway* paymentGateway = [[PaymentGateway alloc] init];
        NSLog(@"Thank you for shopping at Acme.com\n\n Your total today is $%i Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon",payment);
        char userInput[3];
        
        fgets( userInput, 3, stdin);
        char userChoice = userInput[0];

        switch (userChoice) {
            case '1':
                paymentGateway.paymentDelegate =[[PaypalPaymentService alloc] init];
                [paymentGateway.paymentDelegate processPaymentAmount:payment];
                break;
            case '2':
                paymentGateway.paymentDelegate =[[StripePaymentService alloc] init];
                [paymentGateway.paymentDelegate processPaymentAmount:payment];
                break;
            case '3':
                paymentGateway.paymentDelegate =[[AmazonPaymentService alloc] init];
                [paymentGateway.paymentDelegate processPaymentAmount:payment];
                break;
                
            default:
                break;
        }
        
        }
    }
    return 0;
}
