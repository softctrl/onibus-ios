//
//  UILabel+DetailLabel.m
//  Busao
//
//  Created by Diego Chohfi on 4/5/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "UILabel+DetailLabel.h"

@implementation UILabel (DetailLabel)

+ (UILabel *) detailLabelWithText: (NSString *) texto withCentralization: (BOOL) centralized{
    UIFont *font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:(14)];
    CGRect frame = [[UIScreen mainScreen] applicationFrame];
    CGRect rect = CGRectMake(0, 0, frame.size.width, 30);
    UILabel *label = [[UILabel alloc] initWithFrame:rect];
    [label setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
    if (centralized) {
        label.textAlignment =  UITextAlignmentCenter;
    }
    label.textColor = [UIColor whiteColor];
    label.backgroundColor = [UIColor colorWithRed:0.0 green:0.1 blue:0.1 alpha:0.75];
    label.font = font;
    label.text = texto;
    return label;
}

+(UILabel*) labelWithText: (NSString*) text andStartingAtX: (int) x andY: (int) y {
    UIFont *font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:(14)];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(x, y, 60, 30)];
    [label setText:text];
    label.textColor = [UIColor whiteColor];
    label.font = font;
    
    return label;
}

@end
