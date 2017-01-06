//
//  Helper+UIImageView.swift
//  common
//
//  Created by peerapat atawatana on 7/5/2559 BE.
//  Copyright © 2559 DaydreamClover. All rights reserved.
//

import UIKit

public extension Helper {
    struct Image {
        
        static func configCircularImage(_ imageView:UIImageView) {
            imageView.layer.cornerRadius    = imageView.frame.size.height / 2;
            imageView.layer.masksToBounds   = true;
        }
        
        /*
         -(void)setRoundedView:(UIImageView *)roundedView toDiameter:(float)newSize;
         {
         CGPoint saveCenter = roundedView.center;
         CGRect newFrame = CGRectMake(roundedView.frame.origin.x, roundedView.frame.origin.y, newSize, newSize);
         roundedView.frame = newFrame;
         roundedView.layer.cornerRadius = newSize / 2.0;
         roundedView.center = saveCenter;
         }
         */
        
        static func ResizeImage(_ image: UIImage, targetSize: CGSize) -> UIImage {
            // This is the rect that we've calculated out and this is what is actually used below
            let rect = CGRect(x: 0, y: 0, width: targetSize.width, height: targetSize.height)
            
            // Actually do the resizing to the rect using the ImageContext stuff
            UIGraphicsBeginImageContextWithOptions(targetSize, false, 1.0)
            image.draw(in: rect)
            let newImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            return newImage!
        }
        
        static func getDataBase64(_ data:Foundation.Data) -> String {
            return data.base64EncodedString(options: .lineLength64Characters)
        }
        
        static func getImageBase64WithCompression(_ image:UIImage, compression:CGFloat) -> String? {
            if let photoData = UIImageJPEGRepresentation(image, compression) {
                return photoData.base64EncodedString(options: .lineLength64Characters)
            }
            return nil
        }
        
        static func getImageDataWithCompression(_ image:UIImage, compression:CGFloat) -> Foundation.Data? {
           return UIImageJPEGRepresentation(image, compression)
        }
        
        static func decodeImageBase4ToNSData(_ strBase64:String) -> Foundation.Data? {
            return Foundation.Data(base64Encoded: strBase64, options: NSData.Base64DecodingOptions.ignoreUnknownCharacters)
        }

        static func sizeForImageResizeByKeepAspectRatio(_ maxSize:CGFloat, width:CGFloat, height:CGFloat)-> CGSize? {
            let maxWidth            = width > height ? width : height
            if maxWidth > maxSize {
                let scaleRatio      = maxSize/maxWidth
                let newWidth        = width * scaleRatio
                let newHeight       = height * scaleRatio
                let newSize         = CGSize(width: newWidth, height: newHeight)
                return newSize
            }
            return nil
            
        }
        
        static func resizeImageInTableViewCell(_ imageView:UIImageView, width:CGFloat, height:CGFloat) {
            let itemSize = CGSize(width: width, height: height);
            UIGraphicsBeginImageContextWithOptions(itemSize, false, UIScreen.main.scale);
            let imageRect = CGRect(x: 0.0, y: 0.0, width: itemSize.width, height: itemSize.height);
            imageView.image!.draw(in: imageRect)
            imageView.image! = UIGraphicsGetImageFromCurrentImageContext()!;
            UIGraphicsEndImageContext();
        }
    }
    
}
