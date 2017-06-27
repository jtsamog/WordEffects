//
//  main.m
//  WordEffects
//
//  Created by Endeavour2 on 6/26/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChars[256]; //255 long unit of character
        printf("Please type in a text as input \n");
        fgets(inputChars, 255, stdin);
        
        printf("Your text is: %s\n", inputChars); //print out the user's text
        
        //convert char array to an NSString object
        NSString *inputString = [[NSString stringWithUTF8String:inputChars] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        
        NSLog(@" line %d: The string you entered is: %@  %p %p",__LINE__, inputString, &inputString, *&inputString);
//        NSLog(@" line %d: Memory Address is: %p while Value is: %p",__LINE__, &inputString, *&inputString);
//        NSLog(@" line %d: Memory Address is: %p",__LINE__, &inputString);
//        NSLog(@" line %d: Value is: %p",__LINE__, *&inputString);
        
        
        
        while (YES) {
            NSLog(@"Which operation would you want to do?\n 1) Uppercase\n 2) Lowercase\n 3) Canadianize\n 4) De-space it\n 5) Respond\n 6) Numberize");
            
            int optionNumber = 0;
            scanf("%d", &optionNumber);
            
            if (optionNumber == 1) {
                NSLog(@" line %d: Your text is printed in Uppercase: %@ %p  %p",__LINE__, inputString.uppercaseString, &inputString, *&inputString); //take whatever string the user inputs and MAKE IT LOUDER!
//                NSLog(@" line %d: Memory Address is: %p while Value is: %p",__LINE__, &inputString, *&inputString);
                
            }
            else if (optionNumber == 2) {
                NSLog(@" line %d: Your text is printed in lowercase: %@  %p  %p",__LINE__, inputString.lowercaseString, &inputString, *&inputString); //take whatever string the user inputs and make it lowercase
//                NSLog(@" line %d: Memory Address is: %p while Value is: %p",__LINE__, &inputString, *&inputString);
            }
            else if (optionNumber == 3) {
                NSString *canadianize = @", eh?";
                NSLog(@"Canadianized version: %@", [[inputString uppercaseString] stringByAppendingString:canadianize]);
            }
            else if (optionNumber == 4) {
                NSLog(@"Despaced text as: %@", [[inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"] uppercaseString]);
            }
            else if (optionNumber == 5) {
                if ([inputString hasSuffix:@"?"]) {
                    NSLog(@"I dont know");
                }
                else if ([inputString hasSuffix:@"!"]) {
                    NSLog(@"Whoa! Calm down");
                }
            }
            else if (optionNumber == 6) {
                if ([inputString rangeOfCharacterFromSet:[NSCharacterSet characterSetWithCharactersInString:@"0123456789"]].location != NSNotFound) {
                    
                    int inputInt = [inputString intValue];
                    NSLog(@"NSString '%d' converted to Int", inputInt);
                    
                }else{
                    NSLog(@"Input '%@' should be a number", inputString);
                    }
            }
            else {
            NSLog(@"Input shopuld be a number");
            }
            
        }
    }
    return 0;
}
