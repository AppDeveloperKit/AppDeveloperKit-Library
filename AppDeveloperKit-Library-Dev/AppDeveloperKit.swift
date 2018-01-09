
// ====================================================
//
//              DO NOT EDIT.  Auto Generated.
//
// =====================================================
//

import AppDeveloperKit

extension BrickExample {

   func adk_deinitBrickExample() {

       let adk = ADK_Config.shared()

       adk.deregisterClass(sender: self)
   }

   func adk_initBrickExample() {

       let adk = ADK_Config.shared()

       weak var weakSelf: BrickExample? = self

       adk.registerClass(sender: self, name: "BrickExample")


       adk.configBool(sender: self, name: "horizontal", initComplete: { (data) in
           if data != nil {
               weakSelf?._horizontal = data!
           }
       }, changeComplete: { (data) in
           if data != nil {
               weakSelf?.horizontal = data!
           }
       })


       adk.configJSON(sender: self, name: "json", initComplete: { (data) in
           if data != nil {
               weakSelf?._json = data!
           }
       }, changeComplete: { (data) in
           if data != nil {
               weakSelf?.json = data!
           }
       })


   }
}


