import Foundation
import SwiftUI

class DonationViewModel: ObservableObject {
    
    @Published var selectedCategory: String = "Plants"

    // For general donations (cloths, blood, veg, etc.)
    struct DonationItem: Identifiable {
        let id = UUID()
        let category: String
        let imageName: String
        let donorName: String
        let itemName: String
    }


    let categories = [
        ("plants", "Plants"),
        ("cloths", "Cloths"),
        ("blood", "Blood"),
        ("veg", "Vegetables"),
        ("books", "Books"),
        ("toys", "Toys"),
        ("furniture", "Furniture"),
        ("electronics", "Electronics"),
        ("shoes", "Shoes"),
        ("medicines", "Medicines"),
        ("stationery", "Stationery"),
        ("groceries", "Groceries"),
        ("water", "Water"),
        ("blankets", "Blankets"),
        ("utensils", "Utensils"),
        ("bags", "Bags"),
        ("sanitary", "Sanitary Items"),
        ("school", "School Supplies"),
        ("pet", "Pet Supplies"),
        ("money", "Monetary Support")
    ]


    // Plant donations
    let plantDonations: [DonationItem] = [
        .init(category: "Plants", imageName: "neem", donorName: "Aarav Sharma", itemName: "neem"),
        .init(category: "Plants", imageName: "banyan", donorName: "Meera Patel", itemName: "banyan"),
        .init(category: "Plants", imageName: "peepal", donorName: "Rohan Verma", itemName: "peepal"),
        .init(category: "Plants", imageName: "mango", donorName: "Isha Kapoor", itemName: "mango"),
        .init(category: "Plants", imageName: "guava", donorName: "Isha Kapoor", itemName: "guava"),
        .init(category: "Plants", imageName: "jamun", donorName: "Isha Kapoor", itemName: "jamun"),
        .init(category: "Plants", imageName: "lemon", donorName: "Isha Kapoor", itemName: "lemon"),
        .init(category: "Plants", imageName: "jackfruit", donorName: "Isha Kapoor", itemName: "jackfruit"),
        .init(category: "Plants", imageName: "coconut", donorName: "Isha Kapoor", itemName: "coconut")
    ]
   

    let clothDonations: [DonationItem] = [
        .init(category: "Cloths", imageName: "jacket", donorName: "Ravi Kumar", itemName: "Winter Jacket"),
        .init(category: "Cloths", imageName: "saree", donorName: "Pooja Shah", itemName: "Sarees"),
        .init(category: "Cloths", imageName: "tshirt", donorName: "Anjali Rao", itemName: "T-Shirts")
    ]

    let bloodDonations: [DonationItem] = [
        .init(category: "Blood", imageName: "blood_a", donorName: "Rahul Mehta", itemName: "A+ Blood"),
        .init(category: "Blood", imageName: "blood_b", donorName: "Neha Jain", itemName: "B+ Blood"),
        .init(category: "Blood", imageName: "blood_o", donorName: "Karan Singh", itemName: "O+ Blood")
    ]

    let vegDonations: [DonationItem] = [
        .init(category: "Vegetables", imageName: "carrot", donorName: "Sneha Singh", itemName: "Carrots"),
        .init(category: "Vegetables", imageName: "potato", donorName: "Manoj Das", itemName: "Potatoes"),
        .init(category: "Vegetables", imageName: "tomato", donorName: "Divya Yadav", itemName: "Tomatoes")
    ]

    let bookDonations: [DonationItem] = [
        .init(category: "Books", imageName: "books", donorName: "Rishi Malhotra", itemName: "Textbooks"),
        .init(category: "Books", imageName: "book_story", donorName: "Sahil Khan", itemName: "Story Books"),
        .init(category: "Books", imageName: "book_english", donorName: "Nisha Gupta", itemName: "English Grammar")
    ]

    let toyDonations: [DonationItem] = [
        .init(category: "Toys", imageName: "toys", donorName: "Nina Gupta", itemName: "Stuffed Toys"),
        .init(category: "Toys", imageName: "lego", donorName: "Dev Arora", itemName: "Lego Set"),
        .init(category: "Toys", imageName: "puzzle", donorName: "Kriti Das", itemName: "Puzzle Box")
    ]

    let furnitureDonations: [DonationItem] = [
        .init(category: "Furniture", imageName: "chair", donorName: "Arjun Shah", itemName: "Wooden Chair"),
        .init(category: "Furniture", imageName: "table", donorName: "Priya Verma", itemName: "Study Table"),
        .init(category: "Furniture", imageName: "sofa", donorName: "Ramesh Nair", itemName: "Small Sofa")
    ]

    let electronicsDonations: [DonationItem] = [
        .init(category: "Electronics", imageName: "phone", donorName: "Karan Rao", itemName: "Old Smartphone"),
        .init(category: "Electronics", imageName: "tablet", donorName: "Shreya Iyer", itemName: "Tablet"),
        .init(category: "Electronics", imageName: "laptop", donorName: "Arjun Menon", itemName: "Laptop")
    ]

    let shoeDonations: [DonationItem] = [
        .init(category: "Shoes", imageName: "shoes", donorName: "Zara Khan", itemName: "Running Shoes"),
        .init(category: "Shoes", imageName: "boots", donorName: "Tina Bansal", itemName: "Winter Boots"),
        .init(category: "Shoes", imageName: "sandals", donorName: "Ritika Shah", itemName: "Kids Sandals")
    ]

    let medicineDonations: [DonationItem] = [
        .init(category: "Medicines", imageName: "medicine", donorName: "Dr. Verma", itemName: "First Aid Kit"),
        .init(category: "Medicines", imageName: "bandage", donorName: "Clinic Care", itemName: "Bandages"),
        .init(category: "Medicines", imageName: "syrup", donorName: "Asha Clinic", itemName: "Cough Syrup")
    ]

    let stationeryDonations: [DonationItem] = [
        .init(category: "Stationery", imageName: "pen", donorName: "Reena Joshi", itemName: "Pens & Pencils"),
        .init(category: "Stationery", imageName: "notebook", donorName: "Suresh Thakur", itemName: "Notebooks"),
        .init(category: "Stationery", imageName: "eraser", donorName: "Lakshmi Roy", itemName: "Erasers")
    ]

    let groceryDonations: [DonationItem] = [
        .init(category: "Groceries", imageName: "rice", donorName: "Lakshmi Menon", itemName: "Rice Packets"),
        .init(category: "Groceries", imageName: "dal", donorName: "Sanjay Rawat", itemName: "Dal Packets"),
        .init(category: "Groceries", imageName: "wheat", donorName: "Kavita Iyer", itemName: "Wheat Flour")
    ]

    let waterDonations: [DonationItem] = [
        .init(category: "Water", imageName: "water", donorName: "Naveen Iyer", itemName: "Water Bottles"),
        .init(category: "Water", imageName: "filter", donorName: "Clean India", itemName: "Water Filter"),
        .init(category: "Water", imageName: "jug", donorName: "Seva Group", itemName: "Steel Jugs")
    ]

    let blanketDonations: [DonationItem] = [
        .init(category: "Blankets", imageName: "blanket", donorName: "Ishaan Reddy", itemName: "Warm Blanket"),
        .init(category: "Blankets", imageName: "quilt", donorName: "Smita Shah", itemName: "Quilt"),
        .init(category: "Blankets", imageName: "sheet", donorName: "NGO Help", itemName: "Bed Sheet")
    ]

    let utensilDonations: [DonationItem] = [
        .init(category: "Utensils", imageName: "utensil", donorName: "Megha Sinha", itemName: "Steel Plates"),
        .init(category: "Utensils", imageName: "spoon", donorName: "Anil Yadav", itemName: "Spoons Set"),
        .init(category: "Utensils", imageName: "pan", donorName: "Home Needs", itemName: "Non-Stick Pan")
    ]

    let bagDonations: [DonationItem] = [
        .init(category: "Bags", imageName: "bag", donorName: "Ritu Narayan", itemName: "School Bag"),
        .init(category: "Bags", imageName: "backpack", donorName: "Youth Club", itemName: "Backpack"),
        .init(category: "Bags", imageName: "duffle", donorName: "Pradeep Rana", itemName: "Duffle Bag")
    ]

    let sanitaryDonations: [DonationItem] = [
        .init(category: "Sanitary Items", imageName: "sanitary", donorName: "Health NGO", itemName: "Pads"),
        .init(category: "Sanitary Items", imageName: "soap", donorName: "Swachh Bharat", itemName: "Soap Bars"),
        .init(category: "Sanitary Items", imageName: "handwash", donorName: "Clean Hands Org", itemName: "Handwash")
    ]

    let schoolSupplyDonations: [DonationItem] = [
        .init(category: "School Supplies", imageName: "notebook", donorName: "Asha Foundation", itemName: "Notebooks"),
        .init(category: "School Supplies", imageName: "bag", donorName: "Bright Future", itemName: "School Bag"),
        .init(category: "School Supplies", imageName: "stationery", donorName: "Shiksha Mission", itemName: "Stationery Kit")
    ]

    let petDonations: [DonationItem] = [
        .init(category: "Pet Supplies", imageName: "pet", donorName: "Animal Care", itemName: "Dog Food"),
        .init(category: "Pet Supplies", imageName: "leash", donorName: "Pets NGO", itemName: "Leash & Collar"),
        .init(category: "Pet Supplies", imageName: "bowl", donorName: "Care For Paws", itemName: "Pet Bowl")
    ]

    let moneyDonations: [DonationItem] = [
        .init(category: "Monetary Support", imageName: "money", donorName: "Generous Donor", itemName: "₹5,000"),
        .init(category: "Monetary Support", imageName: "money", donorName: "Vikram Sen", itemName: "₹1,000"),
        .init(category: "Monetary Support", imageName: "money", donorName: "Priya Nair", itemName: "₹2,500")
    ]


  
    var filteredOtherDonations: [DonationItem] {
           switch selectedCategory {
           case "Plants": return plantDonations
           case "Cloths": return clothDonations
           case "Blood": return bloodDonations
           case "Vegetables": return vegDonations
           case "Books": return bookDonations
           case "Toys": return toyDonations
           case "Furniture": return furnitureDonations
           case "Electronics": return electronicsDonations
           case "Shoes": return shoeDonations
           case "Medicines": return medicineDonations
           case "Stationery": return stationeryDonations
           case "Groceries": return groceryDonations
           case "Water": return waterDonations
           case "Blankets": return blanketDonations
           case "Utensils": return utensilDonations
           case "Bags": return bagDonations
           case "Sanitary Items": return sanitaryDonations
           case "School Supplies": return schoolSupplyDonations
           case "Pet Supplies": return petDonations
           case "Monetary Support": return moneyDonations
           default: return []
           }
       }
    
}


struct TopDonor: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let message: String
}

let topDonors: [TopDonor] = [
    TopDonor(
        name: "Anil Kapoor",
        imageName: "plants",
        message: "Planting trees today for a greener tomorrow."
    ),
    TopDonor(
        name: "Ravi Kumar",
        imageName: "blanket",
        message: "A warm jacket can save someone from a cold night."
    ),
    TopDonor(
        name: "Sneha Singh",
        imageName: "cloths",
        message: "Healthy food should reach every plate."
    ),
    TopDonor(
        name: "Rahul Mehta",
        imageName: "blood",
        message: "Every drop counts. Donate blood, save lives."
    ),
    TopDonor(
        name: "Pooja Shah",
        imageName: "toys",
        message: "Dignity begins with decent clothing."
    ),
    TopDonor(
        name: "Karan Rao",
        imageName: "water",
        message: "An old phone can empower someone to connect."
    ),
    TopDonor(
        name: "Zara Khan",
        imageName: "shoes",
        message: "Let no child walk barefoot to school."
    ),
    TopDonor(
        name: "Asha Foundation",
        imageName: "books",
        message: "Education is the best donation you can give."
    ),
    TopDonor(
        name: "Animal Care NGO",
        imageName: "dog",
        message: "Even our furry friends need love and care."
    ),
    TopDonor(
        name: "Lakshmi Menon",
        imageName: "vegetable",
        message: "A bag of rice can fill many hungry stomachs."
    )
]

struct Testimonial: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let message: String
}


let testimonials: [Testimonial] = [
    Testimonial(name: "Dogesh Bhai", imageName: "dog", message: "A donation is a gift, typically given for charity, humanitarian aid, or to benefit a cause."),
    Testimonial(name: "Virat Kohali", imageName: "virat", message: "Helping others is the best way to help yourself."),
    Testimonial(name: "Cristiano Ronaldo", imageName: "cristiano ronaldo", message: "Even a small contribution can make a big difference."),
    Testimonial(name: "Himanshu chaddha", imageName: "smile", message: "Give with heart, not just your hand.")
]


struct DonationItem: Identifiable {
    let id = UUID()
    let category: String
    let imageName: String
    let donorName: String
    let itemName: String
}


let allDonations: [DonationItem] = [
       DonationItem(category: "Plants", imageName: "neem", donorName: "Aarav Sharma", itemName: "Neem Tree"),
       DonationItem(category: "Cloths", imageName: "water", donorName: "Ravi Kumar", itemName: "Winter Jacket"),
       DonationItem(category: "Blood", imageName: "blood", donorName: "Rahul Mehta", itemName: "A+ Blood"),
       DonationItem(category: "Books", imageName: "books", donorName: "Rishi Malhotra", itemName: "Textbooks"),
       DonationItem(category: "Toys", imageName: "toys", donorName: "Nina Gupta", itemName: "Stuffed Toys"),
       DonationItem(category: "Groceries", imageName: "rice", donorName: "Lakshmi Menon", itemName: "Rice Packets")
   ]


