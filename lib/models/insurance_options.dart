import 'package:flutter/material.dart';

import 'insurance.dart';

class InsuranceOptions extends ChangeNotifier {
  // list insurance categories
  final List<Insurance> _menu = [
    // private car insurance
    Insurance(
        name: "Comprehensive Insurance",
        description: "Provides coverage for third-party liabilities and damages to the policyholder's vehicle due to accidents, theft, natural disasters, or vandalism.",
        imagePath: "lib/img/private_car/private5.png",
        price:  "60000",
        category: InsuranceCategory.private,
        availableAddons: [
          Addon(name: "Personal accident coverage", price: 5000),
          Addon(name: "personal, non-commercial purposes", price: 3000)
        ],
    ),
    Insurance(
      name: "Collision coverage",
      description: "Covers repair or replacement costs for the policyholder’s vehicle in case of an accident, regardless of fault.",
      imagePath: "lib/img/private_car/private1.jpeg",
      price:  "50000",
      category: InsuranceCategory.private,
      availableAddons: [
        Addon(name: "Passenger accident coverage", price: 3000),
        Addon(name: "personal coverage", price: 4000)
      ],
    ),
    Insurance(
      name: "Personal Injury Protection",
      description: "Covers medical expenses for the policyholder and passengers, regardless of fault.",
      imagePath: "lib/img/private_car/private2.jpg",
      price:  "45000",
      category: InsuranceCategory.private,
      availableAddons: [
        Addon(name: "Personal accident coverage", price: 5000),
        Addon(name: "personal and non-commercial purposes", price: 3000)
      ],
    ),
    Insurance(
      name: "Uninsured/Under insured Motorist Coverage",
      description: "Provides coverage if the policyholder is hit by a driver with insufficient or no insurance.",
      imagePath: "lib/img/private_car/private3.jpeg",
      price:  "65000",
      category: InsuranceCategory.private,
      availableAddons: [
        Addon(name: "Personal accident coverage", price: 5000),
        Addon(name: "personal and non-commercial purposes", price: 3000)
      ],
    ),
    Insurance(
      name: "Engine Protection Cover",
      description: "Covers damages to the engine and its components, often excluded in standard policies.",
      imagePath: "lib/img/private_car/private4.jpeg",
      price:  "90000",
      category: InsuranceCategory.private,
      availableAddons: [
        Addon(name: "Modified Engines", price: 150000),
        Addon(name: "New motor", price: 120000)
      ],
    ),


    // commercial insurance
    Insurance(
      name: "Commercial Insurance",
      description: "For vehicles used for business purposes (e.g., delivery trucks, taxis, or ride-sharing services).",
      imagePath: "lib/img/commercial/com1.png",
      price:  "72000",
      category: InsuranceCategory.commercial,
      availableAddons: [
        Addon(name: "coverage for cargo,", price: 100000),
        Addon(name: "coverage for passengers/drivers,", price: 50000)
      ],
    ),
    Insurance(
      name: "Roadside Assistance Coverage",
      description: "Provides help for breakdowns, towing, fuel delivery, or flat tire repair.",
      imagePath: "lib/img/commercial/com2.jpg",
      price:  "30000",
      category: InsuranceCategory.commercial,
      availableAddons: [
        Addon(name: "Flatbed", price: 90000),
        Addon(name: "Breakdown and towing", price: 40000)
      ],
    ),
    Insurance(
      name: "Key Replacement Cover",
      description: "Covers cost associated with losing or replacing keys.",
      imagePath: "lib/img/commercial/com3.jpg",
      price:  "10000",
      category: InsuranceCategory.commercial,
      availableAddons: [
        Addon(name: "Key Programming", price: 7000),
        Addon(name: "Duplicate Key", price: 5000)
      ],
    ),
    Insurance(
      name: "Passenger Cover",
      description: "Offers personal accident insurance for passengers in the vehicle.",
      imagePath: "lib/img/commercial/com4.png",
      price:  "20000",
      category: InsuranceCategory.commercial,
      availableAddons: [
        Addon(name: "Each passenger", price: 10000),
      ],
    ),
    Insurance(
      name: "Temporary Insurance",
      description: "Provides coverage for a limited duration, typically from a few days to a few months.",
      imagePath: "lib/img/commercial/com5.jpg",
      price:  "10000",
      category: InsuranceCategory.commercial,
      availableAddons: [
        Addon(name: "Change to Yearly", price: 50000),
      ],
    ),


    // 3rd party insurance
    Insurance(
      name: "Third-Party Liability Insurance",
      description: "Covers damages or injuries caused to a third party (person, vehicle, or property).",
      imagePath: "lib/img/third_party/third1.jpg",
      price:  "40000",
      category: InsuranceCategory.thirdParty,
      availableAddons: [
        Addon(name: "Cover for policyholder's own vehicle", price: 55000),
        Addon(name: "Cover damage on policyholder's or passenger", price: 65000),
      ],
    ),
    Insurance(
      name: "Third Party Vehicle Damage Insurance",
      description: "Covers damage caused to another person’s property (e.g., vehicle, house, or shop).",
      imagePath: "lib/img/third_party/third2.jpg",
      price:  "45000",
      category: InsuranceCategory.thirdParty,
      availableAddons: [
        Addon(name: "Cover for policyholder's own vehicle", price: 55000),
        Addon(name: "Cover damage on policyholder's or passenger", price: 65000),      ],
    ),
    Insurance(
      name: "Third-Party Bodily Injury Insurance",
      description: "Covers medical expenses, legal liabilities, or compensation claims if someone is injured or dies due to the policyholder's vehicle.",
      imagePath: "lib/img/third_party/third3.jpeg",
      price:  "42000",
      category: InsuranceCategory.thirdParty,
      availableAddons: [
        Addon(name: "Cover medical expenses", price: 60000),
        Addon(name: "Cover compensation", price: 65000),      ],
    ),
    Insurance(
      name: "Third-Party Only Insurance",
      description: "The basic mandatory type, covering property and injury liabilities but excluding the policyholder's vehicle.",
      imagePath: "lib/img/third_party/third4.jpg",
      price:  "50000",
      category: InsuranceCategory.thirdParty,
      availableAddons: [
        Addon(name: "Legal Expense Cover:", price: 50000),
        Addon(name: "3rd party Passenger Cover::", price: 30000),
      ],
    ),
    Insurance(
      name: "Third-Party Only Insurance",
      description: "The basic mandatory type, covering property and injury liabilities but excluding the policyholder's vehicle.",
      imagePath: "lib/img/third_party/third1.jpg",
      price:  "50000",
      category: InsuranceCategory.thirdParty,
      availableAddons: [
        Addon(name: "Legal Expense Cover:", price: 50000),
        Addon(name: "3rd party Passenger Cover::", price: 30000),
      ],
    ),


    // fleet insurance
    Insurance(
      name: "Liability-Only Fleet Insurance",
      description: "Covers third-party property damage or injury caused by any vehicle in the fleet.",
      imagePath: "lib/img/fleet/fleet1.jpg",
      price:  "25000",
      category: InsuranceCategory.fleet,
      availableAddons: [
        Addon(name: "Cargo Coverage:", price: 50000),
        Addon(name: "Replacement Vehicle Cover:", price: 62000),
      ],
    ),
    Insurance(
      name: "Comprehensive Fleet Insurance:",
      description: "Covers both third-party liabilities and damage to vehicles in the fleet.",
      imagePath: "lib/img/fleet/fleet2.png",
      price:  "44000",
      category: InsuranceCategory.fleet,
      availableAddons: [
        Addon(name: "Tracking and Monitoring:", price: 35000),
        Addon(name: "Driving Behavior Analytics:", price: 30000),
      ],
    ),
    Insurance(
      name: "Specialized Fleet Insurance",
      description: "Tailored for specific industries (e.g., logistics, delivery, or taxi services) and may include cargo coverage or passenger liability.",
      imagePath: "lib/img/fleet/fleet3.jpeg",
      price:  "90000",
      category: InsuranceCategory.fleet,
      availableAddons: [
        Addon(name: "Cargo Coverage:", price: 100000),
        Addon(name: "Replacement Vehicle Cover:", price: 6000),
      ],
    ),
    Insurance(
      name: "No Claim Bonus (NCB) Protection",
      description: "Retains the NCB even if one vehicle in the fleet makes a claim.",
      imagePath: "lib/img/fleet/fleet4.jpeg",
      price:  "50000",
      category: InsuranceCategory.fleet,
      availableAddons: [
        Addon(name: "Legal Expense Cover:", price: 50000),
        Addon(name: "3rd party Passenger Cover::", price: 30000),
      ],
    ),
    Insurance(
      name: "Usage-Based Insurance",
      description: "Premiums depend on driving behavior, tracked via telematics devices or apps.",
      imagePath: "lib/img/fleet/fleet5.png",
      price:  "103000",
      category: InsuranceCategory.fleet,
      availableAddons: [
        Addon(name: "Total Fleet Cover:", price: 150000),
      ],
    ),

    // pay-as-you-drive insurance
    Insurance(
      name: "Pay-As-You-Drive Insurance (Usage-Based Insurance)",
      description: "Depend on the actual mileage driven by the policyholder.",
      imagePath: "lib/img/drive/v5.jpg",
      price:  "445000",
      category: InsuranceCategory.payAsYouDrive,
      availableAddons: [
        Addon(name: "Zero Depreciation Cover:", price: 33000),
      ],
    ),
    Insurance(
      name: "Distance-Based PAYD Insurance:",
      description: "Charges premiums based on total miles or kilometers driven.",
      imagePath: "lib/img/drive/v4.jpg",
      price:  "115000",
      category: InsuranceCategory.payAsYouDrive,
      availableAddons: [
        Addon(name: "Accident Forgiveness:", price: 88000),
        Addon(name: "Safe Driving Rewards:", price: 102000),
      ],
    ),
    Insurance(
      name: "Behavior-Based PAYD Insurance:",
      description: "Uses telematics to monitor driving habits, including speed, braking, and acceleration, to determine premiums.",
      imagePath: "lib/img/drive/v3.jpeg",
      price:  "78000",
      category: InsuranceCategory.payAsYouDrive,
      availableAddons: [
        Addon(name: "Breakdown Assistance:", price: 55000),
        Addon(name: "Pay-How-You-Drive:", price: 48000),
      ],
    ),
    Insurance(
      name: "Hybrid PAYD Insurance",
      description: " Combines distance and behavior monitoring for premium calculations.",
      imagePath: "lib/img/drive/v2.jpeg",
      price:  "49500",
      category: InsuranceCategory.payAsYouDrive,
      availableAddons: [
        Addon(name: "Total Fleet Cover:", price: 150000),
        Addon(name: "Pay-How-You-Drive:", price: 48000),
      ],
    ),
    Insurance(
      name: "Seasonal Coverage",
      description: "Allows activation of coverage during specific periods when the vehicle is used more frequently.",
      imagePath: "lib/img/drive/v1.jpg",
      price:  "54000",
      category: InsuranceCategory.payAsYouDrive,
      availableAddons: [
        Addon(name: "Glass and Windscreen Cover::", price: 61000),
      ],
    ),

  ];

  /*

  GETTERS

   */

  List<Insurance> get menu => _menu;

  /*

  OPERATIONS

  */

  // add to cart

  // remove from cart

  // get total price of cart

  // get total number of items in the cart

  // clear the cart

  /*

  HELPERS

  */
  // generate a receipt

  // format double value into money

  // forat list addons into a string summary
}