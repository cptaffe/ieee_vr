<!-- Intro -->
title: Introduction
build_lists: true

Augmented Reality (AR) is the next generation for technology as it incorporates
the real world with the virtual world. Vuforia is a high-level API that allows
developers to easily design these applications for the general public with development time.

This tutorial will cover the usage of Vuforia in standalone applications as
well as paired with OpenCV to create an immersive experience.

We encourage you to view the presentation from your laptops as reference during
the example projects. The presentation is being hosted online at
http://byteflame.org/ieee_vr_vuforia/

General Overview
- Vuforia
- Unity Applications
- OpenCV Integration

---
<!-- Qualcomm -->
title: Qualcomm
subtitle: An Overview
class: segue dark nobackground

---
title: Qualcomm
subtitle: The Parent Company

Qualcomm designed and currently maintains the Vuforia SDK. They have been in the Fortune 500 since 2003 and  still continue to be a leader in product innovation.

Sample Fields of study
- Automotive
- Healthcare
- Networking
- Wearables

---
<!-- Vuforia -->
title: Vuforia - Features
subtitle: Application Overview
class: segue dark nobackground

---
title: Vuforia Applications
subtitle: Text Recognition

This example application was created by Qualcomm. A link to the official video
can be found [here](https://www.youtube.com/watch?v=KLqFQ2u52iU)

<div class="ytvideo">
	<object width="640" height="390" class="ytvideo">
		<param name="movie" value="https://www.youtube.com/v/KLqFQ2u52iU?version=3&autoplay=0&autohide=1&rel=0"></param>
		<param name="allowScriptAccess" value="always"></param>
		<embed src="https://www.youtube.com/v/KLqFQ2u52iU?version=3&autoplay=0&autohide=1&rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" width="640" height="390"></embed>
	</object>
</div>

---
title: Vuforia Applications
subtitle: Object Recognition

This example application was created by Qualcomm. A link to the official video
can be found [here](https://www.youtube.com/watch?v=mXpr37pR34U)

<div class="ytvideo">
	<object width="640" height="390" class="ytvideo">
		<param name="movie" value="https://www.youtube.com/v/mXpr37pR34U?version=3&autoplay=0&autohide=1&rel=0"></param>
		<param name="allowScriptAccess" value="always"></param>
		<embed src="https://www.youtube.com/v/mXpr37pR34U?version=3&autoplay=0&autohide=1&rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" width="640" height="390"></embed>
	</object>
</div>

---
title: Vuforia Applications
subtitle: Smart Terrain

This example application was created by Qualcomm. A link to the official video
can be found [here](https://www.youtube.com/watch?v=UOfN1plW_Hw)

<div class="ytvideo">
	<object width="640" height="390" class="ytvideo">
		<param name="movie" value="https://www.youtube.com/v/UOfN1plW_Hw?version=3&autoplay=0&autohide=1&rel=0"></param>
		<param name="allowScriptAccess" value="always"></param>
		<embed src="https://www.youtube.com/v/UOfN1plW_Hw?version=3&autoplay=0&autohide=1&rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" width="640" height="390"></embed>
	</object>
</div>

---
title: Vuforia Applications
subtitle: Cylindrical Targets

This example application was created by Qualcomm. A link to the official video
can be found [here](https://www.youtube.com/watch?v=LqgmlkJcqA4)

<div class="ytvideo">
	<object width="640" height="390" class="ytvideo">
		<param name="movie" value="https://www.youtube.com/v/LqgmlkJcqA4?version=3&autoplay=0&autohide=1&rel=0"></param>
		<param name="allowScriptAccess" value="always"></param>
		<embed src="https://www.youtube.com/v/LqgmlkJcqA4?version=3&autoplay=0&autohide=1&rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" width="640" height="390"></embed>
	</object>
</div>

---
<!-- Vuforia Getting Started -->
title: Vuforia - Setting Up
subtitle: Getting Started
class: segue dark nobackground

---
title: Vuforia Account
subtitle: Creating a Developer Account

Registering for a developer account is easy and can be found [here](https://developer.vuforia.com/user/register)

Enter your information and sign up for a free developer account.

---
title: Unity Extension
subtitle: Resource Page Navigation

The navigation bar on the top of the page has links to various sites available to
developers.

Go ahead and click the Resource tab

The bar on the left contains extensions for Android, iOS, and Unity. For this tutorial,
download the current extension for Unity.

---
title: Importing to Unity
subtitle: Click the Extension

With Unity open, run the extension from the download location, and import all the files.

This extension will import the Vuforia SDK into the root directory of the project.

---
title: Getting to know Vuforia
subtitle: The Insides
class: segue dark nobackground

---
title: Getting to know Vuforia
subtitle: File System

Editor and Plugins folders
	Contains the code

Qualcomm Augmented Reality
	Contains important resources

StreamingAssets
	Contains the target databases from the developer portal

---
title: Getting to know Vuforia
subtitle: Asset Analysis
