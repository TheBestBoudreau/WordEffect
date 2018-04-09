//
//  main.m
//  WordEffect
//
//  Created by Tyler Boudreau on 2018-04-09.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char inputNum[6]={'1','2','3','4','5','6'};
        
        while(TRUE){
            printf("Enter a number from 1-6\n");
            
            fgets(inputNum, 1, stdin);
            printf("Your number is %s\n",inputNum);
            
            NSString *inputString = [NSString stringWithUTF8String:inputNum];
            
            NSLog(@"Input was :%@",inputString);
        }
    }
    return 0;
}
