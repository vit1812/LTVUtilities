import UIKit

extension UIViewController {
    
    public class func initialize<T>(fromStoryboard name: String) -> T {
        UIStoryboard(name: name, bundle: nil)
            .instantiateViewController(
                withIdentifier: String(describing: T.self)
            )
            as! T
    }
    
}
