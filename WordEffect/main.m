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
        char inputString[255];
        while(TRUE){
            printf("Enter a number from 1-6\n");
            printf("Enter a string\n");
            
            fgets(inputNum,6,stdin);
            fgets(inputString, 255, stdin);
            printf("Your number is %s\n",inputNum);
            printf("Your String is %s\n)",inputString);
            
            NSString *convertNum = [NSString stringWithUTF8String:inputNum];
            NSString *convertString =[NSString stringWithUTF8String:inputString];
            
            NSString *loudString = [convertString uppercaseString];
            NSString *quietString =[convertString lowercaseString];
            NSUInteger stringLength = [convertString length];
            NSString *ehString =[convertString stringByAppendingString:@",eh?"];
            NSString *spaceString =[convertString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
            
        
            
            switch ([convertNum integerValue])
            {
                case 1:
                    NSLog(@"%@",loudString);break;
                case 2:
                    NSLog(@"%@",quietString);break;
                case 3:
                    NSLog(@"%lu",(unsigned long)stringLength);break;
                case 4:
                    NSLog(@"%@",ehString);break;
                case 5: {
                    
                    unichar lastChar = [convertString characterAtIndex:[convertString length] - 2];
                                     
                    if (lastChar == '?'){
                        printf("I don't know \n");
                    }
                    else if (lastChar == '!'){
                        printf("Whoa calm down!\n");
                    }
                    else {
                        NSLog(@"%@",convertString);break;
                }
                case 6:
                    NSLog(@"%@",spaceString);break;
                
             }
            
        }
        }
    }
    return 0;
}
