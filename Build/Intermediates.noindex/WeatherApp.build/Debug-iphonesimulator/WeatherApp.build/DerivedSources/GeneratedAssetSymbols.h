#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "clear sky" asset catalog image resource.
static NSString * const ACImageNameClearSky AC_SWIFT_PRIVATE = @"clear sky";

/// The "clouds" asset catalog image resource.
static NSString * const ACImageNameClouds AC_SWIFT_PRIVATE = @"clouds";

/// The "cold" asset catalog image resource.
static NSString * const ACImageNameCold AC_SWIFT_PRIVATE = @"cold";

/// The "haze" asset catalog image resource.
static NSString * const ACImageNameHaze AC_SWIFT_PRIVATE = @"haze";

/// The "hot" asset catalog image resource.
static NSString * const ACImageNameHot AC_SWIFT_PRIVATE = @"hot";

/// The "rainy" asset catalog image resource.
static NSString * const ACImageNameRainy AC_SWIFT_PRIVATE = @"rainy";

#undef AC_SWIFT_PRIVATE