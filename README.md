# BEASTKEEPER

# "The World's Hottest New Startup is BeastKeeper..."

# App Context    

An unprecedented, global mandate to deregulate *small-scale food production* requires nations and localities to remove legislation and local ordinances that currently act as obstacles.  This creates a shift in policy away from discouraging personal and community efforts to acheive local-level food security.  All over the world, small organic producers and backyard homesteaders are emerging; families and communities are enthusiastically adopting the new paradigm.  It quickly becomes clear that not only do 'naturally designed, bio-intensive food production systems' (ie. gardens) function better with animal inputs like manure and pest control, real food security includes eggs, meat, honey and cheese.  People who've never kept beasts before are using the BeastKeeper app to manage the realities of having livestock in their backyards and community gardens.  

Keeping 'Magnificent Chickens' has cachet and raw milk will be legal in September.

# Technical Overview

<h4>Key Goals</h4>

In addition to *learning to code in Swift*, my intention with the coding challenge is to demonstrate awareness of the larger business context that applications are developed for.  I want to explore the design of a compressed model with a few extendable classes and structs that indicate some planning for performance optimization and future extensibility.  I will write a readable and logically structured view controller that largely shortcuts the implementation of the model and persistence in order to move the demontration to the UI. The UI should show application of good design principles, autolayout constaints, some scalability and the ability to add new Magnificent Chickens with a photo on the profile. Hopefully, we will see a schedule of inoculations which can be marked as complete.

Knowledge of standard iOS design concepts and Xcode enviroment should be evident throughout. 

<h4>Key Features</h4>

- Maintain Beast - Profiles including photos, pre-scheduled Innoculations and Checkups, ad-hoc scheduling for medical appointments
- Scalable UI - Think rabbits.  The UI intuitively scales up when populations increase rapidly and compacts when animals are sold or butchered, for example.
- Contextual UI - BeastKeeper has to be intelligent about how Beasts and Beast populations (ie. beehives) display.  Display styles are determined by looking at classifications and group sizes...the display for 3 prized horses is different than that display for a population of 3000 salmon in one enclosure in a fish farm with multiple enclosures.
- Localized - BeastKeeper as a larger entity is probably a GMO or a business that contracts with governments to facilitate implementing SOME common-sense guidelines...like innoculation schedule or tracking sales and adoptions of Beasts.  Nations will comply to different degrees.  And it will have to do this, in multiple languages.   
- Informative -  People will need to share BeastKeeper information with prospective buyers, medical practitioners. 
- Social - People will want to share pictures of their Beasts with their friends in Messages and via social media.  

<h4>Key Technologies and Design Patterns (non-comprehensive)</h4>

- BeastKeeper is built using Swift 4 in Xcode 9.
- Localized Version Control and Github Repository
- MVC architecture
- Model is explored in context then greatly condensed
- View controller takes shortcuts around incomplete model for demo purposes and timely implementation of the UI.






