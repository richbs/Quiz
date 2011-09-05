//
//  QuizAppDelegate.m
//  Quiz
//
//  Created by Rich Barrett-Small on 08/08/2011.
//  Copyright 2011 Victoria & Albert Museum. All rights reserved.
//

#import "QuizAppDelegate.h"

@implementation QuizAppDelegate

- (id)init
{
    
    // Call the init method implemented by the superclass
    self = [super init];
    
    if (self) {
        // Create 2 arrays and make pointers to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
    
        // Add Qs and As
        [questions addObject:@"What's 7+7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"From what is Cognac made?"];
        [answers addObject:@"Grapes"];    
    
    }
    
    return self;
    
}


- (IBAction)showQuestion:(id)sender
{
    // step to next Q
    currentQuestionIndex++;
    
    NSLog(@"Index: %d", currentQuestionIndex);
    NSLog(@"Q Len: %d", [questions count]);

    
    // AM I past last Q
    if (currentQuestionIndex == [questions count]) {
        
    
        // reset counter
        currentQuestionIndex = 0;
    }
    
    // Get string at that index
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    NSLog(@"Q: %@", question);

    [questionField setText:question];
    
    [answerField setText:@"Wait for it…"];
    
    
}

-(IBAction)showAnswer:(id)sender
{
    
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];

    [answerField setText:answer];
    
}

@synthesize window=_window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end
