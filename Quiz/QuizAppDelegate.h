//
//  QuizAppDelegate.h
//  Quiz
//
//  Created by Rich Barrett-Small on 08/08/2011.
//  Copyright 2011 Victoria & Albert Museum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizAppDelegate : NSObject <UIApplicationDelegate> {
    
    int currentQuestionIndex;
    
    // The model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    // The view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
