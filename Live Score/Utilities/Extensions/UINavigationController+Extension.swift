

import UIKit

extension UINavigationController {
    func removeBottomLine()
    {
        let navigationBar = self.navigationBar
        navigationBar.shadowImage = UIImage()
        navigationBar.layoutIfNeeded()
    }
}


//Gradient Colors

//extension UIView{
//    func getGradientLayer(bounds : CGRect,color1:CGColor = Colors.gradient1Color().cgColor, color2:CGColor = Colors.gradient2Color().cgColor) -> CAGradientLayer{
//        let gradient = CAGradientLayer()
//        gradient.frame = bounds
//        //order of gradient colors
//        gradient.colors = [color1,color2]
//        // start and end points
//        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
//        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
//        return gradient
//    }
//
//    func gradientColor(bounds: CGRect, gradientLayer :CAGradientLayer) -> UIColor? {
//        UIGraphicsBeginImageContext(gradientLayer.bounds.size)
//        //create UIImage by rendering gradient layer.
//        gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
//        let image = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//        //get gradient UIcolor from gradient UIImage
//        return UIColor(patternImage: image!)
//    }
//}
