# PreviewControllerHideBottomButtons

###Description
Repo demonstrates how to remove UIToolbar buttons on [QLPreviewController](https://developer.apple.com/library/ios/documentation/NetworkingInternet/Reference/QLPreviewController_Class/).

</br>

###Steps:
--
1. Subclass [UIToolbar](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIToolbar_Class/)
2. Create UINavigationController using [
init(navigationBarClass:toolbarClass:)](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UINavigationController_Class/#//apple_ref/occ/instm/UINavigationController/initWithNavigationBarClass:toolbarClass:) and supply `UIToolbar subsclass` created in step 1 for `toolbarClass`
3. Inside of `UIToolbar subsclass` override [
setItems(_:animated:)](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIToolbar_Class/#//apple_ref/occ/instm/UIToolbar/setItems:animated:). To remove all buttons call super with empty array `super.setItems([], animated: false)` or potentially you can add only buttons you want to keep. 

--

</br>
Clone and run example to see it in action.