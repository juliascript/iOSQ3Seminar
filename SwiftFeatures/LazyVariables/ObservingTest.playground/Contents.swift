//: Playground - noun: a place where people can play

import UIKit

extension UIImage {
    func resizedTo(size: CGSize) -> UIImage {
        /* Some computational-intensive image resizing algorithm here */
    }
}

class Avatar {
    static let defaultSmallSize = CGSize(width: 64, height: 64)
    
    var smallImage: UIImage
    var largeImage: UIImage
    
    init(largeImage: UIImage) {
        self.largeImage = largeImage
        self.smallImage = largeImage.resizedTo(size: Avatar.defaultSmallSize)
    }
}



































class Avatar {
    static let defaultSmallSize = CGSize(width: 64, height: 64)
    
    lazy var smallImage: UIImage = self.largeImage.resizedTo(size: Avatar.defaultSmallSize)
    var largeImage: UIImage
    
    init(largeImage: UIImage) {
        self.largeImage = largeImage
    }
}


/*
 If we access the smallImage lazy var without assigning a specific value to it beforehand, then and only then will the default value be computed then returned. Then if we access the property later again, the value will already have been computed once so it will just return that stored value.
*/
/*
//If we gave smallImage an explicit value before accessing it, then the computational-intensive default value will never be computed, and the explicit value we gave will be returned instead.
*/
/*
//If we never access the smallImage property ever, its default value won’t be computed either!
*/




















