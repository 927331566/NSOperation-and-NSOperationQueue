//
//  NSOperationTest.m
//  NSOPeration
//
//  Created by 王璐 on 2023/5/5.
//

#import "NSOperationTest.h"

@implementation NSOperationTest
- (void)start {
    if (!self.isCancelled) {
        
        [NSThread sleepForTimeInterval:2];
        NSLog(@"test1---%@", [NSThread currentThread]);
        [NSThread sleepForTimeInterval:2];
        NSLog(@"test2---%@", [NSThread currentThread]);
        [NSThread sleepForTimeInterval:2];
        NSLog(@"test3---%@", [NSThread currentThread]);
        [NSThread sleepForTimeInterval:2];
        NSLog(@"test4---%@", [NSThread currentThread]);
    }
}
//- (void)main {
//    if (!self.isCancelled) {
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"test1---%@", [NSThread currentThread]);
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"test2---%@", [NSThread currentThread]);
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"test3---%@", [NSThread currentThread]);
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"test4---%@", [NSThread currentThread]);
//    }
//}
@end
