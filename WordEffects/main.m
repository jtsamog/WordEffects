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
        
        NSLog(@" line %d: The string you entered is: %@",__LINE__, inputString);
        
        
        
        
        
        
    }
    return 0;
}
