#import "AppleTree.h"

@implementation AppleTree

@synthesize arrayOfApple = _arrayOfApple;
@synthesize countOfApple = _countOfApple;

-(bool) dropApple: (Apple *) apple
{
    NSUInteger indexObjectInArray = [[self arrayOfApple] indexOfObject:apple];
    if(indexObjectInArray != NSNotFound)
    {
        [[[self arrayOfApple] objectAtIndex:indexObjectInArray] drop];
        [[self arrayOfApple] removeObject:apple];
        [self setCountOfApple:@([[self countOfApple] integerValue] - 1)];
        NSLog(@"Apple was droped");
        return true;
    }
    return false;
}
-(void) addApple:(Apple *)apple
{
    [[self arrayOfApple] addObject: apple];
    [self setCountOfApple:@([[self countOfApple] integerValue] + 1)];
    NSLog(@"Apple was added");
}
-(void) grow
{
    int countAddApple = arc4random()%6;
    
    int c = [[self arrayOfApple] count];
    
    if(c==0){
        Apple * apple = [[Apple alloc] init:[NSNumber numberWithInt:11] :@"Antonovka"];
        [[self arrayOfApple] addObject: apple];
        [self setCountOfApple:@([[self countOfApple] integerValue] + 1)];        c++;
    }
    for(int i = 0; i < countAddApple; ++i)
    {
        Apple *capple = [[self arrayOfApple]objectAtIndex: arc4random()%c];
        NSString *csort = capple.sort;
        [[self arrayOfApple] addObject: [[Apple alloc] init:
                                         [[NSNumber alloc] initWithInt: (arc4random()%6 + 1)]:csort]];
    }
    [self setCountOfApple:@([[self countOfApple] integerValue] + countAddApple)];
    NSLog(@"AppleTree grew");
    
}
-(void) shake
{
    int countDropApple = arc4random()%6;
    NSUInteger countAppleInArray = [[self arrayOfApple] count];
    
    for(int i = 0; i < countDropApple && i < countAppleInArray; ++i)
    {
        [[[self arrayOfApple] lastObject] drop];
        [[self arrayOfApple] removeLastObject];
    }
    [self setCountOfApple:@([[self countOfApple] integerValue] - countDropApple)];
    NSLog(@"AppleTree was shaken");

}

-(NSString *) description
{
    NSString * myString = @"Count of apples = ";
    myString = [myString stringByAppendingFormat: @"%d \n ", [[self countOfApple] integerValue]+1];
    myString = [myString stringByAppendingString: @"Apples: \n "];
    int i = 0;
    for(Apple * apple in [self arrayOfApple]){
        i++;
        myString = [myString stringByAppendingFormat: @"%d) sort = %@, seeds = %d\n ", i, apple.sort,
                    [apple.seed intValue]];
    }
    return myString;
}

-(id) init
{
    self = [super init];
    if(self)
    {
        NSMutableArray * temp = [[NSMutableArray alloc] init];
        [self setArrayOfApple:temp];
        [self setCountOfApple:@0];
      
        NSLog(@"AppleTree was created");
    }
    return self;
}

@end