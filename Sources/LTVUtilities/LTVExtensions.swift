// MARK: UIKit

import UIKit

extension UIViewController {
    
    public class func viewController<T>(fromStoryboard name: String, bundle: Bundle? = nil) -> T {
        UIStoryboard(name: name, bundle: bundle)
            .instantiateViewController(
                withIdentifier: String(describing: T.self)
            )
            as! T
    }
    
}

extension UIView {
    
    class func viewFromNib<Type>(nibName: String, bundle: Bundle? = nil) -> Type? {
        return UINib(nibName: nibName, bundle: bundle)
            .instantiate(withOwner: Type.self, options: nil)
            .first(where: {
                $0 is Type
            }) as? Type
    }
    
}

// MARK: Foundation

extension Array {
    
    subscript(safe index: Int) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
    
}
