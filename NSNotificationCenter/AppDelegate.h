//
//  AppDelegate.h
//  NSNotificationCenter
//
//  Created by Kevin Cleathero on 2017-06-11.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

