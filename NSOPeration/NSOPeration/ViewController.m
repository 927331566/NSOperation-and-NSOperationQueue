//
//  ViewController.m
//  NSOPeration
//
//  Created by 王璐 on 2023/5/4.
//

#import "ViewController.h"
#import "NSOperationTest.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    [queue addOperationWithBlock:^{
        for (int i = 0; i < 2; i++) {
            [NSThread sleepForTimeInterval:2];
            NSLog(@"%d--%@", i, [NSThread currentThread]);
        }
        
        // 回到主线程进行操作
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            [NSThread sleepForTimeInterval:2];
            NSLog(@"main---%@", [NSThread currentThread]);
        }];
    }];

    
//    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
//    NSBlockOperation *op1 = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"执行任务1,%@",[NSThread currentThread]);
//    }];
//    NSBlockOperation *op2 = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"执行任务2,%@",[NSThread currentThread]);
//    }];
//    NSBlockOperation *op3 = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"执行任务3,%@",[NSThread currentThread]);
//    }];
//    // 设置优先级
//    op1.queuePriority = NSOperationQueuePriorityLow;
//    op2.queuePriority = NSOperationQueuePriorityHigh;
//    op3.queuePriority = NSOperationQueuePriorityNormal;
//    // 将操作加入队列
//    [queue addOperations:[NSArray arrayWithObjects:op1, op2, op3, nil] waitUntilFinished:YES];
    
//    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
//        NSBlockOperation *op1 = [NSBlockOperation blockOperationWithBlock:^{
//            NSLog(@"执行任务1,%@",[NSThread currentThread]);
//        }];
//        NSBlockOperation *op2 = [NSBlockOperation blockOperationWithBlock:^{
//            NSLog(@"执行任务2,%@",[NSThread currentThread]);
//        }];
//        NSBlockOperation *op3 = [NSBlockOperation blockOperationWithBlock:^{
//            NSLog(@"执行任务3,%@",[NSThread currentThread]);
//        }];
//        // 设置服务质量
//        op1.qualityOfService = NSQualityOfServiceBackground;
//        op2.qualityOfService = NSQualityOfServiceUserInitiated;
//        op3.qualityOfService = NSQualityOfServiceUtility;
//        // 将操作加入队列
//        [queue addOperations:[NSArray arrayWithObjects:op1, op2, op3, nil] waitUntilFinished:YES];
//
    
    
//    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
//        NSBlockOperation *op1 = [NSBlockOperation blockOperationWithBlock:^{
//            NSLog(@"执行任务1,%@",[NSThread currentThread]);
//        }];
//        NSBlockOperation *op2 = [NSBlockOperation blockOperationWithBlock:^{
//            NSLog(@"执行任务2,%@",[NSThread currentThread]);
//        }];
//        NSBlockOperation *op3 = [NSBlockOperation blockOperationWithBlock:^{
//            NSLog(@"执行任务3,%@",[NSThread currentThread]);
//        }];
//        // 设置优先级
//        op1.queuePriority = NSOperationQueuePriorityLow;
//        op2.queuePriority = NSOperationQueuePriorityHigh;
//        op3.queuePriority = NSOperationQueuePriorityNormal;
//        // 将操作加入队列
//        [queue addOperations:[NSArray arrayWithObjects:op1, op2, op3, nil] waitUntilFinished:YES];
//    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
//
//    NSBlockOperation *firstOperation = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"begin firstOperation");
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"firstOperation end");
//    }];
//    firstOperation.queuePriority = NSOperationQueuePriorityLow;
//
//    NSBlockOperation *secondOperation = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"begin secondOperation");
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"secondOperation end");
//    }];
//    secondOperation.queuePriority = NSOperationQueuePriorityHigh;
//
//    NSBlockOperation *thirdOperation = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"begin thirdOperation");
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"thirdOperation end");
//    }];
//    thirdOperation.queuePriority = NSOperationQueuePriorityNormal;
//
//    queue.maxConcurrentOperationCount = 3;
//
//
//    [queue addOperation:firstOperation];
//    [queue addOperation:secondOperation];
//    [queue addOperation:thirdOperation];

    
//    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
        
//    NSBlockOperation *firstOperation = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"firstOperation");
//    }];
//    NSBlockOperation *secondOperation = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"secondOperation");
//    }];
//    NSBlockOperation *thirdOperation = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"thirdOperation");
//    }];
//
//    [secondOperation addDependency:firstOperation]; // 让secondOperation依赖于firstOperation，即firstOperation先执行，在执行secondOperation
//    [firstOperation addDependency:secondOperation]; // 让firstOperation依赖于secondOperation，即secondOperation先执行，在执行firstOperation
//
//    [queue addOperation:firstOperation];
//    [queue addOperation:secondOperation];
//    [queue addOperation:thirdOperation];

//    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
//
//    NSBlockOperation *firstOperation = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"firstOperation");
//    }];
//    NSBlockOperation *secondOperation = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"secondOperation");
//    }];
//    NSBlockOperation *thirdOperation = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"thirdOperation");
//    }];
//
//    [secondOperation addDependency:firstOperation]; // 让secondOperation依赖于firstOperation，即firstOperation先执行，在执行secondOperation
//    [thirdOperation addDependency:secondOperation]; // 让thirdOperation依赖于secondOperation，即secondOperation先执行，在执行thirdOperation
//
//    [queue addOperation:firstOperation];
//    [queue addOperation:secondOperation];
//    [queue addOperation:thirdOperation];

    
//    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
//
//    NSBlockOperation *firstOperation = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"firstOperation");
//    }];
//    NSBlockOperation *secondOperation = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"secondOperation");
//    }];
//    NSBlockOperation *thirdOperation = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"thirdOperation");
//    }];
//
//    [queue addOperation:firstOperation];
//    [queue addOperation:secondOperation];
//    [queue addOperation:thirdOperation];

    
//    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
//
//    //queue.maxConcurrentOperationCount = 1;
//    queue.maxConcurrentOperationCount = 2;
//
//    [queue addOperationWithBlock:^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"1---%@", [NSThread currentThread]);
//    }];
//
//    [queue addOperationWithBlock:^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"2---%@", [NSThread currentThread]);
//    }];
//
//    [queue addOperationWithBlock:^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"3---%@", [NSThread currentThread]);
//    }];
//
//    [queue addOperationWithBlock:^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"4---%@", [NSThread currentThread]);
//    }];
//
//    [queue addOperationWithBlock:^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"5---%@", [NSThread currentThread]);
//    }];

    
    
//    NSOperationQueue* queue = [[NSOperationQueue alloc] init];
//
//    [queue addOperationWithBlock:^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"1---%@", [NSThread currentThread]);
//    }];
//
//    [queue addOperationWithBlock:^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"2---%@", [NSThread currentThread]);
//    }];
//
//    [queue addOperationWithBlock:^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"3---%@", [NSThread currentThread]);
//    }];
    
//    NSOperationQueue* queue = [[NSOperationQueue alloc] init];
//    NSInvocationOperation* first = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(operationFirst) object:nil];
//    NSBlockOperation* second = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"2---%@", [NSThread currentThread]);
//    }];
//    [second addExecutionBlock:^{
//        NSLog(@"add---%@", [NSThread currentThread]);
//    }];
//    NSInvocationOperation* third = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(operationThird) object:nil];
//    [queue addOperation:first];
//    [queue addOperation:second];
//    [queue addOperation:third];
    
    
    
    //主队列获取方法
    //NSOperationQueue* queue = [NSOperationQueue mainQueue];
    //自定义队列（非主队列）
    //NSOperationQueue* queue = [[NSOperationQueue alloc] init];
    
//    // 1.创建 NSInvocationOperation 对象
//    NSInvocationOperation *op = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(testOp) object:nil];
//    // 2.调用 start 方法开始执行操作
//    [op start];

    //创NSBlockOperation对象
    //NSBlockOperation* op = [NSBlockOperation blockOperationWithBlock:^{
        //NSLog(@"blockOp---%@", [NSThread currentThread]);
    //}];
    //调用start方法开始执行
    //[op start];
    // Do any additional setup after loading the view.
    
    
//    NSBlockOperation* op = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"op```%@", [NSThread currentThread]);
//    }];
//    [op addExecutionBlock:^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"1---block  %@", [NSThread currentThread]);
//    }];
//    [op addExecutionBlock:^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"2---block %@", [NSThread currentThread]);
//    }];
//    [op addExecutionBlock:^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"3---block %@", [NSThread currentThread]);
//    }];
//    [op addExecutionBlock:^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"4---block %@", [NSThread currentThread]);
//    }];
//    [op addExecutionBlock:^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"5---block %@", [NSThread currentThread]);
//    }];
//    NSOperationTest* test = [[NSOperationTest alloc] init];
//    NSLog(@"%d", test.finished);
//    [test start];
//    NSLog(@"%d", test.finished);
    //[op start];
}
- (void)operationFirst {
    NSLog(@"1---%@", [NSThread currentThread]);
}
- (void)operationThird {
    NSLog(@"3---%@", [NSThread currentThread]);
}
- (void)testOp {
    NSLog(@"testOp--%@", [NSThread currentThread]);
}
@end
