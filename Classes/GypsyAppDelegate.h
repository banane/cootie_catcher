//
//  GypsyAppDelegate.h
//  Gypsy
//
//  Created by Anna on 2/25/10.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GypsyViewController;

@interface GypsyAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GypsyViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GypsyViewController *viewController;

@end

