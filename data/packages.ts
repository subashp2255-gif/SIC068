export interface ItineraryItem {
  day: number;
  title: string;
  description: string;
  stay?: string;
  meals?: string;
  activityType?: "spiritual" | "safety" | "general";
}

export interface PackageInclusions {
  hotel: string | boolean;
  meals: string | boolean;
  transit: string | boolean;
  guide: string | boolean;
  darshan?: string | boolean;
}

export interface Package {
  id: string;
  title: string;
  duration: string;
  destinations: string;
  price: number;
  rating: number;
  reviewCount: number;
  image: string;
  tags: string[];
  inclusions: PackageInclusions;
  category: "Pilgrimage" | "Family" | "Heritage";
  region: "North India" | "South India" | "Char Dham" | "Maharashtra" | "Pan India";
  itinerary: ItineraryItem[];
  seniorFriendly: boolean;
  wheelchairAccess: boolean;
  vegMeals: boolean;
}

export const mockPackages: Package[] = [
  {
    id: "divine-south",
    title: "Divine South: Madurai & Rameswaram",
    duration: "4 Days / 3 Nights",
    destinations: "Madurai - Rameswaram - Dhanushkodi",
    price: 14500,
    rating: 4.8,
    reviewCount: 156,
    image: "https://lh3.googleusercontent.com/aida-public/AB6AXuAR1WO1m045T-GrLKlEhu4yWkAV-yqirE6T9-XCD7aHTt77PmDhai5rcKm8JPdikyxCH9jbmbP1EvY0zNruVjnlPZIkUpvzloF_txweNDM-Jk0VcTib8oSVFzXL8HGk0Ul4pd02bO76SeOAkwvmyEpcT0ti2dDyrvUt-rRAU7PQZl8y18x9vtKRQZ7j_GePdXeSbgmY86iMRhngYZM_WQmkklVviR8lWVLx0gIV68DPr61thdmvdF6eO8evykFx5ryLJMIOAiy1-Bs",
    tags: ["Senior Friendly", "Fast Filling"],
    inclusions: {
      hotel: "3-Star Hotel",
      meals: "Pure Veg Meals",
      transit: "AC Transport",
      guide: "Expert Guide"
    },
    category: "Pilgrimage",
    region: "South India",
    seniorFriendly: true,
    wheelchairAccess: false,
    vegMeals: true,
    itinerary: [
      { day: 1, title: "Arrival in Madurai", description: "Pickup from airport/railway station. Check-in at your premium hotel. In the evening, visit the magnificent Meenakshi Amman Temple for Darshan.", stay: "Madurai", meals: "Dinner Included", activityType: "spiritual" },
      { day: 2, title: "Madurai to Rameswaram", description: "Enjoy breakfast at the hotel, then drive to Rameswaram (approx 3.5 hours). Check-in and relax. In the evening, attend the beautiful temple rituals.", stay: "Rameswaram", meals: "Breakfast & Dinner Included", activityType: "general" },
      { day: 3, title: "Agni Theertham & Dhanushkodi", description: "Early morning holy bath at Agni Theertham. Guided excursion to the ghost town of Dhanushkodi. Free evening for personal prayers.", stay: "Rameswaram", meals: "Breakfast & Dinner Included", activityType: "spiritual" },
      { day: 4, title: "Departure", description: "Breakfast at hotel. Drive back to Madurai for departure flight/train.", stay: "N/A", meals: "Breakfast Included", activityType: "general" }
    ]
  },
  {
    id: "awadh-kashi",
    title: "Awadh & Kashi Darshan",
    duration: "5 Days / 4 Nights",
    destinations: "Ayodhya - Varanasi - Prayagraj",
    price: 18200,
    rating: 4.8,
    reviewCount: 218,
    image: "https://lh3.googleusercontent.com/aida-public/AB6AXuD55yje_WBSPz_DrWBCODVi0yoGveTFXaZJHAu3zsLTqz55Kpl6Kp5LH6DXhJsMWhV5s-UbXAwRlGbOrYtSIf0EnsnPvUkDQMDHJ682aMHGLpmf1jwaDQ0wajesfsKbwZ8wWua4uxKUEydTwFxuuqCO6qp3Ypiu04MnEdPtqPAeSMJz1c3c5eHGz-c_r_uZTT3VLDTvsgjk_hEymfWOdmfQorhEO0hTh8HBMtHybwxGA--TpJan8EsRmEyklC0J1vb0hR-wPvRtbx8",
    tags: ["Senior Friendly"],
    inclusions: {
      hotel: "4-Star Hotel",
      meals: "Pure Veg Meals",
      transit: "AC Transport",
      guide: "Expert Guide"
    },
    category: "Pilgrimage",
    region: "North India",
    seniorFriendly: true,
    wheelchairAccess: true,
    vegMeals: true,
    itinerary: [
      { day: 1, title: "Arrival in Varanasi", description: "Welcome at Varanasi airport. Transfer to the hotel. Evening Ganga Aarti at Dashashwamedh Ghat by private boat.", stay: "Varanasi", meals: "Dinner Included", activityType: "spiritual" },
      { day: 2, title: "Kashi Vishwanath Darshan", description: "Early morning VIP Darshan at Kashi Vishwanath temple. Visit Annapurna temple and Vishalakshi Temple. Drive to Sarnath in the afternoon.", stay: "Varanasi", meals: "Breakfast & Dinner Included", activityType: "spiritual" },
      { day: 3, title: "Varanasi to Prayagraj to Ayodhya", description: "Morning drive to Prayagraj. Holy dip at Triveni Sangam. Visit Hanuman Temple, then drive to Ayodhya.", stay: "Ayodhya", meals: "Breakfast & Dinner Included", activityType: "general" },
      { day: 4, title: "Ayodhya Ram Mandir Darshan", description: "VIP Darshan at Ram Janmabhoomi Mandir. Visit Hanuman Garhi and Kanak Bhawan. Evening walk along Saryu Ghat.", stay: "Ayodhya", meals: "Breakfast & Dinner Included", activityType: "spiritual" },
      { day: 5, title: "Departure from Ayodhya / Lucknow", description: "Breakfast at hotel. Transfer to Lucknow/Ayodhya airport for departure.", stay: "N/A", meals: "Breakfast Included", activityType: "general" }
    ]
  },
  {
    id: "jyotirlinga-gujarat",
    title: "Jyotirlinga Yatra: Gujarat",
    duration: "6 Days / 5 Nights",
    destinations: "Somnath - Dwarka - Nageshwar",
    price: 24000,
    rating: 4.7,
    reviewCount: 142,
    image: "https://lh3.googleusercontent.com/aida-public/AB6AXuAktLk9KBwBbY43-H4Zj4a2GnAF8CzgIrd-myWuc0oIuVV8gwf4tT1H76DiPRJPB2HorBAsutlbc3yd-XTQjxUsTp3Xoh20VvTofjOODKZiYa1cN86Dxmne44mTjWmbY6oMqidqUveNlpTaZLcxdaTRspz77BdhepjnmyOtxwbXE9H9V-krogUws8QrxcAAGKC2UGVIOyygDHEdHoByrhR8xfzMBqiAr0lpaD3QL5CzOf29TChM_iCy2qFCYlYddmSlOFQABgWjo38",
    tags: ["Most Popular"],
    inclusions: {
      hotel: "Premium Hotel",
      meals: "Pure Veg Meals",
      transit: "AC Transport",
      guide: "Expert Guide",
      darshan: "Special Darshan"
    },
    category: "Pilgrimage",
    region: "Pan India",
    seniorFriendly: true,
    wheelchairAccess: false,
    vegMeals: true,
    itinerary: [
      { day: 1, title: "Arrival in Ahmedabad & Somnath", description: "Arrive in Ahmedabad, meet your guide and drive to Somnath (approx 7 hours). Attend the evening Sound & Light Show.", stay: "Somnath", meals: "Dinner Included", activityType: "general" },
      { day: 2, title: "Somnath Temple Darshan", description: "Morning Abhishek Pooja at Somnath temple. Visit Triveni Sangam, Geeta Mandir and Bhalka Tirth.", stay: "Somnath", meals: "Breakfast & Dinner Included", activityType: "spiritual" },
      { day: 3, title: "Somnath to Dwarka", description: "Drive to Dwarka (approx 4 hours). Visit Porbandar (Kirti Mandir) on the way. Attend Dwarkadhish evening Aarti.", stay: "Dwarka", meals: "Breakfast & Dinner Included", activityType: "general" },
      { day: 4, title: "Bet Dwarka & Nageshwar Jyotirlinga", description: "Take a ferry to Bet Dwarka. Visit Nageshwar Jyotirlinga, Rukmini Temple, and Gopi Talav.", stay: "Dwarka", meals: "Breakfast & Dinner Included", activityType: "spiritual" },
      { day: 5, title: "Dwarka to Rajkot", description: "Morning prayers, check out and drive to Rajkot. Evening at leisure.", stay: "Rajkot", meals: "Breakfast & Dinner Included", activityType: "general" },
      { day: 6, title: "Departure", description: "Breakfast and transfer to Rajkot/Ahmedabad airport.", stay: "N/A", meals: "Breakfast Included", activityType: "general" }
    ]
  },
  {
    id: "sacred-south-heritage",
    title: "Sacred South India Heritage Tour",
    duration: "7 Days / 6 Nights",
    destinations: "Madurai - Rameswaram - Kanyakumari",
    price: 32500,
    rating: 4.8,
    reviewCount: 310,
    image: "https://lh3.googleusercontent.com/aida-public/AB6AXuDW5opxfk6dhSvOJ4WsgjHhNPtDw-W8zZB7hRZil7FiYKs1iB9RhClAaSJAkXYMQ4vOa-_jMKrRFl6SqZ4l_FAo2uQ_NiIlyfcJk2J9z7sD0RWthdKCWOeBwLfYMQnicOSp2k8CqOaTfSfdTgjB_3W3SVF4kCdKxL1JeYpH8pk6DqOtbIg33ViZGsP5LerNOYf0CGksJpP928I1CEDX7JCzyX7zbB5aoVDSBMG5jcCeF0wamgj4ocNMC1eVdc2XBvuJFCKVXe7R3jA",
    tags: ["Senior Friendly", "Best for Families"],
    inclusions: {
      hotel: "Premium Hotel",
      meals: "All Meals Included",
      transit: "AC Transport",
      guide: "Expert Guide"
    },
    category: "Heritage",
    region: "South India",
    seniorFriendly: true,
    wheelchairAccess: true,
    vegMeals: true,
    itinerary: [
      { day: 1, title: "Arrival in Madurai", description: "Check-in at premium hotel. Evening visit to Meenakshi Amman Temple.", stay: "Madurai", meals: "Dinner Included", activityType: "spiritual" },
      { day: 2, title: "Madurai to Rameswaram", description: "Morning drive (3.5 hrs). Rest period. Evening darshan at Ramanathaswamy Temple.", stay: "Rameswaram", meals: "Breakfast & Dinner Included", activityType: "spiritual" },
      { day: 3, title: "Agni Theertham & Dhanushkodi", description: "Early morning holy bath at Agni Theertham. Guided excursion to Dhanushkodi.", stay: "Rameswaram", meals: "Breakfast, Lunch & Dinner", activityType: "general" },
      { day: 4, title: "Rameswaram to Kanyakumari", description: "Scenic coastal drive. Visit Vivekananda Rock Memorial via accessible ferry.", stay: "Kanyakumari", meals: "Breakfast & Dinner Included", activityType: "general" },
      { day: 5, title: "Kanyakumari Sightseeing", description: "View the glorious sunrise. Visit Suchindram Temple and Kumari Amman Temple.", stay: "Kanyakumari", meals: "Breakfast, Lunch & Dinner", activityType: "spiritual" },
      { day: 6, title: "Kanyakumari to Trivandrum", description: "Drive to Trivandrum. Visit Padmanabhaswamy Temple (strict dress code strictly enforced).", stay: "Trivandrum", meals: "Breakfast & Dinner Included", activityType: "spiritual" },
      { day: 7, title: "Departure", description: "Breakfast at hotel. Transfer to Trivandrum Airport for departure.", stay: "N/A", meals: "Breakfast Included", activityType: "general" }
    ]
  },
  {
    id: "golden-triangle-spiritual",
    title: "Golden Triangle Spiritual Circuit",
    duration: "5 Days / 4 Nights",
    destinations: "Delhi - Amritsar - Golden Temple",
    price: 24000,
    rating: 4.8,
    reviewCount: 198,
    image: "https://lh3.googleusercontent.com/aida-public/AB6AXuCCDOuP4jQ7-zICx9FZ4CpMKFyziZaeqSye1vDlZh1FOaBBCtwBxvJfI-vDO3_a-ZQrSxfqihpsQy3IiuuoR_sQubSdZubHoUSWpJgwUSum3EKUDmxGxEmnU2TwcP3gi-WyBkRuS4qEBpzSTY4A0FSJUoK_fezF_tRcBqJAf0Vpjx1yWY5AGM7Dk7EsEip5lKbY9He_ctAJnB77tT-zowuWqgOJPqljxJI8Fab7F-h02acAb3ne5eGtYOvoUy-SIMin91qj8k2kWEQ",
    tags: ["Most Popular"],
    inclusions: {
      hotel: "Premium Hotel",
      meals: "All Meals Included",
      transit: "AC Transport",
      guide: "Expert Guide"
    },
    category: "Family",
    region: "North India",
    seniorFriendly: true,
    wheelchairAccess: true,
    vegMeals: true,
    itinerary: [
      { day: 1, title: "Arrival in Delhi", description: "Meet and greet at airport. Transfer to hotel. Afternoon visit to Akshardham Temple and evening laser show.", stay: "Delhi", meals: "Dinner Included", activityType: "spiritual" },
      { day: 2, title: "Delhi to Amritsar", description: "Morning train journey on superfast Shatabdi Express to Amritsar. Check-in. Night ceremony at Golden Temple.", stay: "Amritsar", meals: "Breakfast & Dinner Included", activityType: "spiritual" },
      { day: 3, title: "Golden Temple & Wagah Border", description: "Detailed morning guided visit of Harmandir Sahib (Golden Temple) and Jallianwala Bagh. Afternoon visit to Wagah Border ceremony.", stay: "Amritsar", meals: "Breakfast, Lunch & Dinner", activityType: "general" },
      { day: 4, title: "Amritsar to Delhi", description: "Breakfast, checkout, and morning at leisure for shopping. Return train to Delhi.", stay: "Delhi", meals: "Breakfast & Dinner Included", activityType: "general" },
      { day: 5, title: "Departure", description: "Transfer to Delhi airport for flight home.", stay: "N/A", meals: "Breakfast Included", activityType: "general" }
    ]
  },
  {
    id: "tirupati-darshan",
    title: "Tirupati Special Darshan Tour",
    duration: "3 Days / 2 Nights",
    destinations: "Chennai - Tirupati - Tirumala",
    price: 9200,
    rating: 4.9,
    reviewCount: 312,
    image: "https://lh3.googleusercontent.com/aida-public/AB6AXuCDEtH6CKIAJVgiR5X72lsSjGTKEQ9ppZH6mTQi2joArQvwNqMHP4VICUUyOzQ8cB5GLQJ8AgcC2c250H9nsj2pS3iGBw8yPtOZArugUZNNZ5DkeGbTyt5OX-UUUqD345M7DwoAWXo1Bn8FjylyCLDM2mtBP-OoKDO0p-PCePvo64gnRNPZ8cO0WgAw3c7ZxXl3aj-4LCq-VuAL9P_iYIQn7nlM7UiyDXQSZYa0laRw6nBBZKM-BfkDD6sFmEwxACLHM6Zgr2r_u-I",
    tags: ["Special Darshan"],
    inclusions: {
      hotel: "Premium Hotel",
      meals: false,
      transit: "AC Transport",
      guide: false
    },
    category: "Pilgrimage",
    region: "South India",
    seniorFriendly: true,
    wheelchairAccess: true,
    vegMeals: true,
    itinerary: [
      { day: 1, title: "Arrival in Chennai & Drive to Tirupati", description: "Pickup from Chennai and drive to Tirupati (approx 4 hours). Check-in and evening visit to Padmavathi Temple.", stay: "Tirupati", meals: "At own expense", activityType: "general" },
      { day: 2, title: "VIP Tirumala Balaji Darshan", description: "Drive up Tirumala hills for pre-booked Special Entry Darshan. Afternoon free for personal prayers and local sightseeing.", stay: "Tirupati", meals: "At own expense", activityType: "spiritual" },
      { day: 3, title: "Return to Chennai", description: "Morning checkout, drive back to Chennai for drop-off at Chennai Airport/Station.", stay: "N/A", meals: "At own expense", activityType: "general" }
    ]
  },
  {
    id: "kerala-temple-retreat",
    title: "Kerala Temple & Backwater Retreat",
    duration: "7 Days / 6 Nights",
    destinations: "Cochin - Guruvayur - Trivandrum",
    price: 32000,
    rating: 4.7,
    reviewCount: 89,
    image: "https://lh3.googleusercontent.com/aida-public/AB6AXuC6DotzZIqjF7mIIJlFlsPmVQBERi8jzDCh6lu92NWeXQrEGE9KpVYzUmR_BZaspIIFGuvnDdANKL4U9hH7ii39iSIWxhJyc0xgCaTvNVos1Dd6K567cODCJrvHgq5pkpMIsJe0o41mn7C3UutNC9sIvVJ33bTKIemVyYJgwUg4hY0XCWX-WSBQUi16QFs12_mA7dAEXDu2Ysp5obyRex8eUQz3_G9YB4DfgU4uFPXGQtCq8QnFQXNdb_asUDZiZkp2LmCtJBTEGTI",
    tags: ["Retreat"],
    inclusions: {
      hotel: "Premium Hotel",
      meals: "All Meals Included",
      transit: "AC Transport",
      guide: "Expert Guide"
    },
    category: "Family",
    region: "South India",
    seniorFriendly: true,
    wheelchairAccess: true,
    vegMeals: true,
    itinerary: [
      { day: 1, title: "Arrival in Cochin", description: "Check-in at waterfront hotel. Evening Kathakali performance.", stay: "Cochin", meals: "Dinner Included", activityType: "general" },
      { day: 2, title: "Guruvayur Temple Visit", description: "Drive to Guruvayur (approx 2 hours). VIP Darshan at the historic Sri Krishna Temple.", stay: "Guruvayur", meals: "Breakfast & Dinner Included", activityType: "spiritual" },
      { day: 3, title: "Guruvayur to Alleppey Houseboat", description: "Drive to Alleppey and board your traditional luxury houseboat. Cruise the serene backwaters.", stay: "Alleppey Houseboat", meals: "Breakfast, Lunch & Dinner", activityType: "general" },
      { day: 4, title: "Alleppey to Varkala Beach", description: "Check out of the houseboat, drive to Varkala. Visit Janardhana Swamy Temple on the cliff.", stay: "Varkala", meals: "Breakfast & Dinner Included", activityType: "spiritual" },
      { day: 5, title: "Varkala to Trivandrum", description: "Drive to Trivandrum. Visit Padmanabhaswamy Temple for Darshan.", stay: "Trivandrum", meals: "Breakfast & Dinner Included", activityType: "spiritual" },
      { day: 6, title: "Kovalam Excursion", description: "Day trip to Kovalam beach. Visit the Sagarika Marine Research Aquarium.", stay: "Trivandrum", meals: "Breakfast, Lunch & Dinner", activityType: "general" },
      { day: 7, title: "Departure", description: "Transfer to Trivandrum airport.", stay: "N/A", meals: "Breakfast Included", activityType: "general" }
    ]
  },
  {
    id: "premium-kashi-vishwanath",
    title: "Premium Kashi Vishwanath Darshan",
    duration: "4 Days / 3 Nights",
    destinations: "Varanasi - Kashi Vishwanath - Sarnath",
    price: 35000,
    rating: 4.9,
    reviewCount: 94,
    image: "https://lh3.googleusercontent.com/aida-public/AB6AXuDuOw_DVP5nshpMCzhA4G4vep_wkjIWpBFirXWg6sP0KdmSgTVLnZ3lCvzX7qGwt9wbokG0R_SazeGKM43jO2cGeUkpX_qkTy6AXdY_adg6aLrzz3i_aIIUynrEwvRGamJAjSi695im33tfb5zqvx1_9dAGcZeBKR0Xf7koBibm3NBQ0YLZnNk6o5ruBxdmQaSNW3f654W_Ksv3M2D1X2kmEQp_irFq41vNmwDqd-eoh3Fn6Zip_HJiXFAhcau582EG28ZlTC-Vci4",
    tags: ["Senior Friendly", "Fully Accessible"],
    inclusions: {
      hotel: "5-Star Stay",
      meals: "Pure Veg",
      transit: "AC SUV",
      guide: "Care Guide"
    },
    category: "Pilgrimage",
    region: "North India",
    seniorFriendly: true,
    wheelchairAccess: true,
    vegMeals: true,
    itinerary: [
      { day: 1, title: "Arrival & Premium Stays", description: "Airport pickup in a luxury AC SUV, transfer to Taj Nadesar Palace or similar premium hotel. Stroll in the historic gardens.", stay: "Varanasi (5-Star)", meals: "Gourmet Veg Dinner", activityType: "general" },
      { day: 2, title: "VIP Accessible Darshan", description: "Wheelchair-accessible VIP Corridor entry to Kashi Vishwanath Temple. Special pooja arrangements with temple pandit.", stay: "Varanasi (5-Star)", meals: "Breakfast & Dinner", activityType: "spiritual" },
      { day: 3, title: "Ganga Evening Aarti by Private Yacht", description: "Private luxury yacht cruise on the Ganges to witness Ganga Aarti with senior-friendly boarding arrangements.", stay: "Varanasi (5-Star)", meals: "Breakfast & Dinner", activityType: "spiritual" },
      { day: 4, title: "Sarnath & Departure", description: "Guided tour of Sarnath archaeological park (fully paved, ramp access). Transfer to airport.", stay: "N/A", meals: "Breakfast Included", activityType: "general" }
    ]
  },
  {
    id: "ayodhya-kashi-serenity",
    title: "Ayodhya & Kashi Serenity Tour",
    duration: "6 Days / 5 Nights",
    destinations: "Ayodhya - Varanasi - Prayagraj",
    price: 42500,
    rating: 4.8,
    reviewCount: 167,
    image: "https://lh3.googleusercontent.com/aida-public/AB6AXuA98-RulIUtFrdBuHyn4W3uKhtwXWZH6c0TkMmAUuSaj5vr3jzykCWGbrm_0SjomPMpkc2P66oVW2FOjeukbseF28HJ7OQXg8-JFQU5Jm257Q6btOsRfFeI7oTwOiOxXBE2ahX-J-B5DFZ6FObN0CaLiKt5y1_eC8uc8ObnAT52r3V7gyULloOIii0sY0M2MsyBpyd8R1rGZcD8hoboqaA1fodAauPCGxgjHGpNmJKZ3PRp43NQnCZdPjkU50f2Eyv6p4o8H1ULRhk",
    tags: ["Senior Friendly", "Matches Budget"],
    inclusions: {
      hotel: "Premium Stay",
      meals: "Satvik",
      transit: "Luxury Bus",
      guide: "First Aid"
    },
    category: "Pilgrimage",
    region: "North India",
    seniorFriendly: true,
    wheelchairAccess: true,
    vegMeals: true,
    itinerary: [
      { day: 1, title: "Arrival in Varanasi", description: "Check-in at your premium hotel. Evening orientation session and safety briefings with your group coordinator.", stay: "Varanasi", meals: "Satvik Dinner", activityType: "general" },
      { day: 2, title: "Varanasi Ghats & Temples", description: "Paced visits to Durga Temple, Sankat Mochan, and VIP Darshan at Kashi Vishwanath. E-rickshaw transport in narrow lanes.", stay: "Varanasi", meals: "Breakfast & Dinner", activityType: "spiritual" },
      { day: 3, title: "Prayagraj Triveni Sangam", description: "Drive to Prayagraj. Specially arranged motorboats with steps/ramps to ferry senior citizens directly to Triveni Sangam point.", stay: "Prayagraj", meals: "Breakfast & Dinner", activityType: "spiritual" },
      { day: 4, title: "Ayodhya Ram Mandir VIP Entry", description: "VIP entry passes to the grand Ram Mandir. Buggy services from parking directly to temple entrance gates.", stay: "Ayodhya", meals: "Breakfast & Dinner", activityType: "spiritual" },
      { day: 5, title: "Chappan Bhog & Saryu Aarti", description: "Attend the Saryu Aarti and enjoy a Satvik feast featuring Ayodhya's traditional delicacies.", stay: "Ayodhya", meals: "Breakfast & Dinner", activityType: "spiritual" },
      { day: 6, title: "Departure", description: "Transfer to Lucknow/Ayodhya Airport.", stay: "N/A", meals: "Breakfast Included", activityType: "general" }
    ]
  },
  {
    id: "prayagraj-kumbh-premium",
    title: "Prayagraj Kumbh Premium Camp",
    duration: "6 Days / 5 Nights",
    destinations: "Prayagraj - Triveni Sangam",
    price: 55000,
    rating: 4.8,
    reviewCount: 45,
    image: "https://lh3.googleusercontent.com/aida-public/AB6AXuA-jt2dwWeprzcfSMJm6xT1dHwWDrDMGF7AyVA1CDAs09Z2pSpPnygs96Rz_6YuqVfJ1gQ_mhJ6hfpQDAS9-0gvhsU_DdQx7JTK6ERWSGsrzZ7g1vkW3inc_0VFiwPG5qsaJjzZ29TMvXQYW-JNVcxUZzOjREI3jt98Tbbdn_BoNeGz7NONul3j64naZAxy7jooQCszsZS2ddgegzPK_j5kCd5z9XEiuA-yjlr8PtzYQLaO_Vu6egNKMYUuT_eDQXMGJzpOQe8h-ws",
    tags: ["Premium Experience", "Ramp Access"],
    inclusions: {
      hotel: "Luxury Tent",
      meals: "In-room Veg",
      transit: "Buggy",
      guide: "Helper"
    },
    category: "Heritage",
    region: "North India",
    seniorFriendly: true,
    wheelchairAccess: true,
    vegMeals: true,
    itinerary: [
      { day: 1, title: "Welcome at Kumbh Camp", description: "Traditional Vedic welcome. Check-in to your premium accessible Swiss Cottage with attached western bath.", stay: "Kumbh Camp", meals: "Satvik Dining", activityType: "general" },
      { day: 2, title: "Satsang & Yoga sessions", description: "Participate in early morning meditation. Evening Satsang with renowned spiritual gurus in the camp area.", stay: "Kumbh Camp", meals: "Breakfast, Lunch & Dinner", activityType: "spiritual" },
      { day: 3, title: "Private Sangam Bathing ghat", description: "Access a private, secured bathing area. Senior assistance helpers provided for the holy dip in Triveni Sangam.", stay: "Kumbh Camp", meals: "Breakfast, Lunch & Dinner", activityType: "spiritual" },
      { day: 4, title: "Akharas & Camp Tour", description: "Explore the vibrant tents and sadhu camps via golf carts/buggies to avoid walking in sand.", stay: "Kumbh Camp", meals: "Breakfast, Lunch & Dinner", activityType: "general" },
      { day: 5, title: "Lighthouse Sunset Views", description: "Evening sunset cruise with views of the vast illuminated tent city of Kumbh.", stay: "Kumbh Camp", meals: "Breakfast, Lunch & Dinner", activityType: "general" },
      { day: 6, title: "Checkout & Transfer", description: "Transfer to Prayagraj airport.", stay: "N/A", meals: "Breakfast Included", activityType: "general" }
    ]
  },
  {
    id: "haridwar-rishikesh-retreat",
    title: "Haridwar & Rishikesh Retreat",
    duration: "5 Days / 4 Nights",
    destinations: "Haridwar - Rishikesh",
    price: 15000,
    rating: 4.8,
    reviewCount: 104,
    image: "https://lh3.googleusercontent.com/aida-public/AB6AXuAUhI77FKiyEkUbw6PUZGPNa9d1J88oq5TYLMxhGeKIZEbwMSJW9HllWQssytAOBrXLn9A0wiNwnYZbIYRIqkt4ieOxWAgQgGwnfhNo1jaVMZb7IIDFfhCjwSC2DkYJGwbJPRZHP3zyivz6QaeM6teapasQtPI3lwSJz2Que9KU_68QX5gbc4-TQEX9IHOv8piz92qOqsa54Ts7aUs3jyKwfiFR0MFD2XMjW2f2ZU2hZm8WMz_7jqfIikT2hnHcMPYlgummkeOwcyo",
    tags: ["Wheelchair Friendly"],
    inclusions: {
      hotel: "Ashram Stay",
      meals: "Satvik Meals",
      transit: "AC Transport",
      guide: "Spiritual Guide"
    },
    category: "Pilgrimage",
    region: "North India",
    seniorFriendly: true,
    wheelchairAccess: true,
    vegMeals: true,
    itinerary: [
      { day: 1, title: "Haridwar Arrival", description: "Check-in at a comfortable ashram by the Ganges river. evening visit to Har Ki Pauri for Ganga Aarti.", stay: "Haridwar Ashram", meals: "Dinner Included", activityType: "spiritual" },
      { day: 2, title: "Mansa Devi Temple via Cable Car", description: "Visit Mansa Devi Temple. Arrangements made for wheelchair-accessible cable car services.", stay: "Haridwar Ashram", meals: "Breakfast & Dinner Included", activityType: "spiritual" },
      { day: 3, title: "Haridwar to Rishikesh", description: "Drive to Rishikesh (45 mins). Check-in. Visit Parmarth Niketan Ashram. Attend evening Ganga Aarti on the ghats.", stay: "Rishikesh Ashram", meals: "Breakfast & Dinner Included", activityType: "spiritual" },
      { day: 4, title: "Rishikesh Sightseeing", description: "Explore Ram Jhula and Lakshman Jhula area via electric battery carts. Attend a peaceful meditation session.", stay: "Rishikesh Ashram", meals: "Breakfast & Dinner Included", activityType: "general" },
      { day: 5, title: "Departure", description: "Breakfast, transfer to Dehradun Airport or Haridwar station.", stay: "N/A", meals: "Breakfast Included", activityType: "general" }
    ]
  },
  {
    id: "himalayan-chardham",
    title: "Himalayan Chardham",
    duration: "8 Days / 7 Nights",
    destinations: "Yamunotri - Gangotri - Kedarnath - Badrinath",
    price: 45000,
    rating: 4.8,
    reviewCount: 165,
    image: "https://lh3.googleusercontent.com/aida-public/AB6AXuBvKseiB5hZprunanNVHvXaC6NSvqi50PENgHifzjlFV_F-3FefPyQRSkose4HFWXc4UKGfXsL3NZfcqWndiR3XDl2tCGhp70JhCXpAMZBa0t63DyuzIULItECelXc44-v3BaHjoE803dVyw0CLX4AwzQEwTMI6RDtWdsmtiaeJkQk3kz_2IWijMXsc-dXo7ZsAZ7Jk_w0lvD39BQf0HoRprHEgX3qbo7rmT1eGLx94OYhiWrJFchO2PA_ot6vguJqXEFkia2b8NI0",
    tags: ["Char Dham"],
    inclusions: {
      hotel: "Premium Hotel",
      meals: "Pure Veg Meals",
      transit: "AC SUV",
      guide: "Expert Guide"
    },
    category: "Pilgrimage",
    region: "Char Dham",
    seniorFriendly: false,
    wheelchairAccess: false,
    vegMeals: true,
    itinerary: [
      { day: 1, title: "Dehradun to Barkot", description: "Pickup from Dehradun, drive to Barkot (approx 5.5 hours). Rest and prepare for trekking.", stay: "Barkot", meals: "Dinner Included", activityType: "general" },
      { day: 2, title: "Yamunotri Darshan", description: "Drive to Janki Chatti. Trek/Pony ride to Yamunotri Temple. Holy bath in Surya Kund, Pooja of Yamunaji.", stay: "Barkot", meals: "Breakfast & Dinner", activityType: "spiritual" },
      { day: 3, title: "Barkot to Uttarkashi", description: "Drive to Uttarkashi (approx 3.5 hours). Visit Vishwanath Temple in the evening.", stay: "Uttarkashi", meals: "Breakfast & Dinner", activityType: "spiritual" },
      { day: 4, title: "Gangotri Darshan", description: "Drive to Gangotri. Take a holy dip in the Bhagirathi river, perform rituals, and attend Darshan.", stay: "Uttarkashi", meals: "Breakfast & Dinner", activityType: "spiritual" },
      { day: 5, title: "Uttarkashi to Guptkashi", description: "Drive to Guptkashi (approx 7.5 hours). Rest and prepare for Kedarnath.", stay: "Guptkashi", meals: "Breakfast & Dinner", activityType: "general" },
      { day: 6, title: "Kedarnath Darshan via Heli", description: "Fly to Kedarnath Temple via Helicopter (pre-booked). Express VIP Darshan, return to Guptkashi.", stay: "Guptkashi", meals: "Breakfast & Dinner", activityType: "spiritual" },
      { day: 7, title: "Guptkashi to Badrinath", description: "Drive to Badrinath (approx 6.5 hours). Attend the evening Aarti at Badrinath Temple.", stay: "Badrinath", meals: "Breakfast & Dinner", activityType: "spiritual" },
      { day: 8, title: "Badrinath to Rishikesh / Dehradun", description: "Morning checkout, drive back to Dehradun for departure.", stay: "N/A", meals: "Breakfast Included", activityType: "general" }
    ]
  },
  {
    id: "shirdi-darshan",
    title: "Shirdi Sai Baba Darshan",
    duration: "3 Days / 2 Nights",
    destinations: "Pune - Shirdi - Shani Shingnapur",
    price: 11500,
    rating: 4.8,
    reviewCount: 220,
    image: "https://lh3.googleusercontent.com/aida-public/AB6AXuCsAJO9cyslP31GDjt37NvUejm1ZmQjAf3MVobEU08Zop7PclABqQa3wKl-BufkOdOj6QTIINukLa_IMSI7_ZLZIEmBYhI8VOVNZgWUmfWRlYwoPjRPz-q27hHJl1EfjGy7eEbUvBRV5im6HoAWRqF6CngDvk2c7yo0OODmfCm2ABMDH0qLyQ0Fcc72n2XHOsDZy5hvwScfGK0UujiieFk3hvun_rXD36bwvXM4XtbEHDKnybQfBygp7vffhogJ8-EX2N_0AcYf1WU",
    tags: ["Devotional"],
    inclusions: {
      hotel: "Premium Hotel",
      meals: "Pure Veg Meals",
      transit: "AC Transport",
      guide: "Local Guide"
    },
    category: "Pilgrimage",
    region: "Maharashtra",
    seniorFriendly: true,
    wheelchairAccess: true,
    vegMeals: true,
    itinerary: [
      { day: 1, title: "Arrival in Pune & Drive to Shirdi", description: "Arrive in Pune, transfer to Shirdi (approx 4 hours). Evening visit to Sai Baba Temple for VIP Darshan.", stay: "Shirdi", meals: "Dinner Included", activityType: "spiritual" },
      { day: 2, title: "Shirdi Sightseeing & Shani Shingnapur", description: "Visit Dwarkamai, Chavadi, and Gurusthan in Shirdi. Afternoon drive to the famous Shani Shingnapur Temple (70 kms).", stay: "Shirdi", meals: "Breakfast & Dinner Included", activityType: "spiritual" },
      { day: 3, title: "Checkout & Return", description: "Breakfast, checkout, return drive to Pune Airport or railway station for your journey back.", stay: "N/A", meals: "Breakfast Included", activityType: "general" }
    ]
  }
];
