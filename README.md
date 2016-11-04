# Utils
ios Utils oc的工具库

## Category
```objective-c
/**
 *  产生一个Image的倒影，并把这个倒影图片加在一个View上面。
 *  @param  image :被倒影的原图。
 *  @param  frame :盖在上面的图。
 *  @param  opacity :倒影的透明度，0为完全透明，即倒影不可见;1为完全不透明。
 *  @param  view :倒影加载在上面。
 *  return  产生倒影后的View。
 */
+ (UIView *)reflectImage:(UIImage *)image withFrame:(CGRect)frame opacity:(CGFloat)opacity atView:(UIView *)view;

//开始和停止旋转动画
- (void)startRotationAnimatingWithDuration:(CGFloat)duration;
@interface UIView (Animation)

//揭开
+ (void)animationReveal:(UIView *)view direction:(NSString *)direction;

//渐隐渐消
+ (void)animationFade:(UIView *)view;

//翻转
+ (void)animationFlip:(UIView *)view direction:(NSString *)direction;

//旋转缩放
+ (void)animationRotateAndScaleEffects:(UIView *)view;//各种旋转缩放效果。
+ (void)animationRotateAndScaleDownUp:(UIView *)view;//旋转同时缩小放大效果

//push
+ (void)animationPush:(UIView *)view direction:(NSString *)direction;

//Curl UnCurl
+ (void)animationCurl:(UIView *)view direction:(NSString *)direction;
+ (void)animationUnCurl:(UIView *)view direction:(NSString *)direction;

//Move
+ (void)animationMove:(UIView *)view direction:(NSString *)direction;

//立方体
+ (void)animationCube:(UIView *)view direction:(NSString *)direction;

//水波纹
+ (void)animationRippleEffect:(UIView *)view;

//相机开合
+ (void)animationCameraEffect:(UIView *)view type:(NSString *)type;

//吸收
+ (void)animationSuckEffect:(UIView *)view;
@interface UIImage (Addition)

/**
 *  抓取屏幕。
 *  @param  scale :屏幕放大倍数，1为原尺寸。
 *  return  屏幕后的Image。
 */
+ (UIImage *)grabScreenWithScale:(CGFloat)scale;

/**
 *  抓取UIView及其子类。
 *  @param  view : UIView及其子类。
 *  @param  scale :屏幕放大倍数，1为原尺寸。
 *  return  抓取图片后的Image。
 */
+ (UIImage *)grabImageWithView:(UIView *)view scale:(CGFloat)scale;

/**
 *  合并两个Image。
 *  @ param  image1、image2: 两张图片。
 *  @ param  frame1、frame2:两张图片放置的位置。
 *  @ param  size:返回图片的尺寸。
 *  return  合并后的两个图片的Image。
 */
+ (UIImage *)mergeWithImage1:(UIImage *)image1 image2:(UIImage *)image2 frame1:(CGRect)frame1 frame2:(CGRect)frame2 size:(CGSize)size;

/**
 *  把一个Image盖在另一个Image上面。
 *  @ param  image : 底图。
 *  @param  mask :盖在上面的图。
 *  return  Image。
 */
+ (UIImage *)maskImage:(UIImage *)image withMask:(UIImage *)mask;

/**
 *  把一个Image尺寸缩放到另一个尺寸。
 *  @ param  view : UIView及其子类。
 *  @ param  scale :屏幕放大倍数，1为原尺寸。
 *  return  尺寸更改后的Image。
 */
+ (UIImage *)scaleImage:(UIImage *)image toSize:(CGSize)size;

/**
 *  改变一个Image的色彩。
 *  @ param  image : 被改变的Image。
 *  @ param  color : 要改变的目标色彩。
 *  return  色彩更改后的Image。
 */
+(UIImage *)colorizeImage:(UIImage *)image withColor:(UIColor *)color;

//按frame裁减图片
+ (UIImage *)captureView:(UIView *)view frame:(CGRect)frame;
/** 获取设备型号*/
+ (NSString *)deviceVersion;

/** 获取iOS系统的版本号 */
+ (NSString*)systemVersion;

/** 判断当前设备是否ipad */
+ (BOOL)isIpad;

/** 判断当前设备是否iphone */
+ (BOOL)isIphone;

/** 判断当前系统是否有摄像头 */
+ (BOOL)hasCamera;

//获取设备状态，是否插入耳机，如果插入耳机，则返回“YES"
//+ (BOOL)isHeadphone;

//获取用户语言。
+ (NSString *)userPreferLanguages;

//判断是否为5系列。
+ (BOOL)isIphone5OriPod5;
- (NSString *)platformInfo;        //平台信息
- (NSString *)cpuType;             //cpu型号
- (NSString *)cpuFrequency;        //cpu频率
- (NSUInteger)cpuCount;            //cpu核数
- (NSArray *)cpuUsage;                 //cpu利用率
- (NSUInteger)totalMemoryBytes;    //获取手机内存总量,返回的是字节数
- (NSUInteger)freeMemoryBytes;     //获取手机可用内存,返回的是字节数
- (long long)freeDiskSpaceBytes;   //获取手机硬盘空闲空间,返回的是字节数
- (long long)totalDiskSpaceBytes;  //获取手机硬盘总空间,返回的是字节数
- (BOOL)isJailBreak;               //是否越狱
- (BOOL)bluetoothCheck;            //是否支持蓝牙

#import <UIKit/UIKit.h>

@interface UIColor (Addition)

/**
 *  根据RGB返回UIColor。
 *  @ param  red、green、blue :范围0—255。
 *  @param  alpha :透明度。
 *  return  UIColor。
 */
+ (UIColor *)red:(int)red green:(int)green blue:(int)blue alpha:(CGFloat)alpha;

/**
 *  根据UIColor返回RGB数组。
 *  @ param  color :传递的参数。
 *  return  RGB数组
 */
+ (NSArray *)convertColorToRBG:(UIColor *)color;

/**
 *  根据十六进制颜色值返回UIColor。
 *  @param  hexColor
 *  return  UIColor。
 */
+ (UIColor *)convertHexColorToUIColor:(NSInteger)hexColor;
@interface NSFileManager (Addition)

/**
 *  在相应目录下创建一个文件夹。
 *  @param  folder :文件夹名。
 *  @param  path :文件夹所在路径。
 *  return  成功返回YES，失败返回NO。若已存在直接返回YES。
 */
+ (BOOL)createFolder:(NSString *)folder atPath:(NSString *)path;

/**
 *  保存文件到相应路径下。
 *  @param  data :要保存的数据。
 *  @param  name :要保存的文件名，如a.txt等。
 *  @param  path :文件保存的路径目录。
 *  return  成功返回YES，失败返回NO。
 */
+ (BOOL)saveData:(NSData *)data withName:(NSString *)name atPath:(NSString *)path;

/**
 *  查找并返回文件。
 *  @param  fileName :要查找的文件名。
 *  @param  path :文件所在的目录。
 *  return  成功返回文件，失败返回nil。
 */
+ (NSData *)findFile:(NSString *)fileName atPath:(NSString *)path;

/**
 *  删除文件。
 *  @param  fileName :要删除的文件名。
 *  @param  path :文件所在的目录。
 *  return  成功返回YES，失败返回NO。
 */
+ (BOOL)deleteFile:(NSString *)fileName atPath:(NSString *)path;

#import <Foundation/Foundation.h>

@interface NSDate (Addition)
/**
 *  将日期转化为字符串。
 *  @param  format :转化格式，形如@"yyyy年MM月dd日hh时mm分ss秒"。
 *  return  返回转化后的字符串。
 */
- (NSString *)convertDateToStringWithFormat:(NSString *)format;

/**
 *  将字符串转化为日期。
 *  @param  string :给定的字符串日期。
 *  @param  format :转化格式，形如@"yyyy年MM月dd日hh时mm分ss秒"。日期格式要和string格式一致，否则会为空。
 *  return  返回转化后的日期。
 */
- (NSDate *)convertStringToDate:(NSString *)string format:(NSString *)format;

```
## AESCrypto DES3Util
```objective-c
// 加密方法
+ (NSString*)encrypt:(NSString*)plainText;
// 解密方法
+ (NSString*)decrypt:(NSString*)encryptText;
```
