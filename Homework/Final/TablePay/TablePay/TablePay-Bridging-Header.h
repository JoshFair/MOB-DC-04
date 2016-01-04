//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//

import Parse
import Bolts

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // [Optional] Power your app with Local Datastore. For more info, go to
        // https://parse.com/docs/ios/guide#local-datastore
        Parse.enableLocalDatastore()
        
        // Initialize Parse.
        Parse.setApplicationId("qnwoZFmvtdumdBIO5Rlpqn4wvUjLN5vzu2YUuvrO",
                               clientKey: "FiUdZH6JdzxCOJcri1ZuoWRuUJAoQQTQmksWm2ow")
        
        // [Optional] Track statistics around application opens.
        PFAnalytics.trackAppOpenedWithLaunchOptions(launchOptions)
        
        // ...
    }
    
    // ...

