// DANIEL RATNER
// CIS 137
//
import MapKit
import SwiftUI

struct Garden {
  let id = UUID()
  let name: String
  let description: String
  let locationName: String
  let imageName: String
  let website: String
  let coordinate: CLLocationCoordinate2D
  var reaction: String

  func load() {
    print(">>>>> Downloading \(self.imageName) <<<<<")
  }
}

extension Garden: Identifiable { }

let gardenData = [
  Garden(name: "San Francisco Botanical Garden",
         description: "With more than 8,000 different kinds of plants from around the world, the San Francisco Botanical Garden is a wonder of diversity when it comes to plant life. They have 55 acres of walking paths, beautiful flowers and streams by which to relax and escape city life. The SFBG Society has been supporting its continued development and educational programs since 1954, and the garden itself is internationally renowned.",
         locationName: "San Francisco, CA",
         imageName: "sanfrancisco",
         website: "https://www.sfbg.org/",
         //37.7674234,-122.4725669
         coordinate: CLLocationCoordinate2D(latitude: 37.7674234, longitude: -122.4725669),
         reaction: ""),
  Garden(name: "Balboa Park Botanical Building",
         description: "The koi pond in front of the Balboa Park Botanical Building is quite possibly one of the most photographed sceneries in all of Southern California. Adjacent to the world famous San Diego Zoo lies a building with 100 years of history and 2,100 permanent plants, along with vibrant seasonal displays. With numerous gardens, plenty of space for a picnic and a lot of things to learn, there is certainly plenty to see and do here. ",
         locationName: "San Diego, CA",
         imageName: "sandiego",
         website: "https://www.balboapark.org/gardens/botanical-building",
         //32.7311055,-117.1517361
         coordinate: CLLocationCoordinate2D(latitude: 32.7311055, longitude: -117.1517361),
         reaction: ""),
  Garden(name: "Wrigley Memorial & Botanic Garden",
         description: "Just a short boat ride from the Los Angeles coastline, the Wrigley Memorial & Botanic Garden has almost 38 acres of space in which to wander. Located on the famous Catalina Island, you can take a bus, trolley, golf cart or simply hike to the gardens that sit atop the island’s gorgeous hills. The Wrigley Memorial serves as the centerpiece of the surrounding landscape, and their protection and conservancy is of top priority to Wrigley Memorial Garden Foundation.",
         locationName: "Avalon, CA",
         imageName: "wrigley",
         website: "https://www.catalinaconservancy.org/index.php?s=visit&p=wrigley_memorial_and_botanic_garden",
         //33.3263339,-118.3423685
         coordinate: CLLocationCoordinate2D(latitude: 33.3263339, longitude: -118.3423685),
         reaction: "🙏"),
  Garden(name: "Mendocino Coast Botanical Gardens",
         description: "Located along the beautiful Northern California coastline, Mendocino Coast Botanical Gardens is a fresh and serene stop, should you be road tripping along Highway 1. It is best known for the species of Rhododendrons (which bloom in March and April) that thrive here, because aside from Southeast Asia and the Himalayas, this is the only place you’ll be able to see them. There is a library, volunteering opportunities and you can even host your wedding here.",
         locationName: "Ft. Bragg, CA",
         imageName: "mendocino",
         website: "https://www.gardenbythesea.org/",
         // 39.409221,-123.8115407
         coordinate: CLLocationCoordinate2D(latitude: 39.409221, longitude: -123.8115407),
         reaction: ""),
  Garden(name: "Santa Barbara Botanic Garden",
         description: "If there is one garden in California that takes its title very seriously, it’s the Santa Barbara Botanical Garden. They regard it as a living museum; in fact, they are a member of the American Alliance of Museums, which is dedicated to research, education and conservation of California native plants. They are one of only 30 gardens accredited as such. There are more than 78 acres of land to explore here, and they strive to educate visitors on the environment and preservation of the land.",
           locationName: "Santa Barbara, CA",
         imageName: "santabarbara",
         website: "https://www.sbbg.org",
         //34.4564869,-119.7121419
         coordinate: CLLocationCoordinate2D(latitude: 34.4564869, longitude: -119.7121419),
         reaction: ""),
  Garden(name: "Los Angeles County Arboretum and Botanic Garden",
         description: "It makes sense that the Los Angeles County Arboretum and Botanic Garden is located very near the Rose Bowl, as this gorgeous 127-acre garden is inhabited by many lovely flowers and plants. The land upon which it was built has a rich history that dates as far back as 500 B.C., when its earliest inhabitants dubbed it the “place of many waters.” There are 10 unique gardens to explore, each seemingly with its own unique climate and aesthetic. Also, there are peacocks.",
         locationName: "Arcadia, CA",
         imageName: "losangeles",
         website: "https://www.arboretum.org",
         //34.1440502,-118.0535723
         coordinate: CLLocationCoordinate2D(latitude: 34.1440502, longitude: -118.0535723),
         reaction: ""),
  Garden(name: "UC Botanical Garden at Berkeley",
         description: "Established in 1890, the UC Botanical Garden at Berkeley has more than 13,000 different kinds of plants from around the world spread out over 34 acres. In the last 125 years, the garden has evolved into a wondrous place that focuses large amounts of its energy towards conservation and education of the ecology, evolution and human uses for plants. With such a vast space and so many plants, one can easily spend an entire day here.",
         locationName: "Berkeley, CA",
         imageName: "berkeley",
         website: "https://botanicalgarden.berkeley.edu",
         coordinate: CLLocationCoordinate2D(latitude: 21.316633, longitude: -157.858247),
         reaction: "🙏"),
  Garden(name: "Moorten Botanical Garden Showplace",
         description: "In this popular Southern California resort town lies Moorten Botanical Garden Showplace, which features an excellent collection of diverse desert plant life. That which makes it different is also what makes it special; grouped by region, such as Baja California or South Africa, 3,000 unique plants are featured along a natural trail. It has been in existence since 1938 and is a beautiful setting for a wedding or any other social event.",
         locationName: "Palm Springs, CA",
         imageName: "palmsprings",
         website: "https://www.moortenbotanicalgarden.com",
        // 33.8002427,-116.5483444
         coordinate: CLLocationCoordinate2D(latitude: 33.8002427, longitude: -116.5483444),
         reaction: ""),
  Garden(name: "Sherman Library & Gardens",
         description: "Providing a museum of living plants, the Sherman Library & Gardens is a modest yet aesthetically pleasing reprieve from the big city life of Los Angeles. With collections ranging from desert vegetation through tropical plants, there is much to be seen despite being on only 2.2 acres of land. With so much lush scenery on display in these gardens, there is something here for everyone to enjoy.",
         locationName: "Corona del Mar, CA",
         imageName: "coronadelmar",
         website: "https://thesherman.org/",
         // 33.6016988,-117.8760549
         coordinate: CLLocationCoordinate2D(latitude: 33.6016988, longitude: -117.8760549),
         reaction: ""),
  Garden(name: "South Coast Botanic Garden",
         description: "If you’re looking for a garden you can get lost in for an entire day, then South Coast Botanic Garden is your answer. What was once an open pit mine and then a sanitary landfill is now a vast 87-acre conservatory with 2,000 species of plant life. A mere 10 miles from LA International Airport, its convenient location and beautiful scenery is a model of what citizens who care about their environment can accomplish.",
         locationName: "Palos Verdes, CA",
         imageName: "palosverdes",
         website: "https://southcoastbotanicgarden.org",
         // 33.7830981,-118.3510304
         coordinate: CLLocationCoordinate2D(latitude: 33.7830981, longitude: -118.3510304),
         reaction: ""),
  Garden(name: "Fullerton Arboretum",
         description: "On the campus of Cal State University lies Fullerton Arboretum; it contains 4,000 plants and is the largest botanical garden in Orange County. The creation of the arboretum was led by university students, from whom a large part of the original funding was generated. The ponds, streams and local wildlife mix seamlessly with the garden itself, and its devotion to being a resource for ecological, horticultural and historical education is excellent.",
         locationName: "Fullerton, CA",
         imageName: "fullerton",
         website: "https://fullertonarboretum.org/",
         // 33.8873863,-117.8856955
         coordinate: CLLocationCoordinate2D(latitude: 33.8873863, longitude: -117.8856955),
         reaction: "🌟"),
  Garden(name: "Huntington Library, Art Collections & Botanical Gardens",
         description: "What started in 1903 with simple orange groves and fruit orchards is now a stunning 120-acre botanical garden that features 15,000 plant varieties. No matter your taste, there are nearly limitless options to explore; 12 different gardens featuring plants and flowers from all over the world. The Chinese garden is the largest of its kind outside of China. Classes are even held on the grounds, which focus on sustainable urban agriculture.",
         locationName: "San Marino, CA",
         imageName: "huntington",
         website: "https://www.huntington.org",
         //34.1290452,-118.1167129
         coordinate: CLLocationCoordinate2D(latitude: 34.1290452, longitude: -118.1167129),
         reaction: "🙏"),
  Garden(name: "San Diego Botanic Garden",
         description: "While San Diego Botanic Garden is actually north of downtown by about 30 minutes, it is well worth the drive. It sits on 37 acres of land and includes everything from bamboo groves to fruit gardens, even a tropical rainforest. There are classes for creating your own garden, bird-watching and even a 60-foot waterfall. There is so much to be explored inside these gardens you’ll want to keep coming back so that you can experience everything.",
         locationName: "Encinitas, CA",
         imageName: "encinitas",
         website: "https://www.sdbgarden.org",
         // 33.0553182,-117.2817046
         coordinate: CLLocationCoordinate2D(latitude: 33.0553182, longitude: -117.2817046),
         reaction: "🌟"),
  Garden(name: "Descanso Gardens",
         description: "Few gardens are able to showcase their true beauty year round—sometimes you have to wait until the flowers bloom—but Descanso Gardens is one of those special gardens that looks beautiful no matter the time of year. It has 150 acres of many different types of gardens featuring the most stunning and colorful plants and flowers. The enchanted railroad that takes riders through the Promenade will delight those young and old who climb aboard.",
         locationName: "Flintridge, CA",
         imageName: "descanso",
         website: "https://www.descansogardens.org",
         // 34.2014185,-118.2133892
         coordinate: CLLocationCoordinate2D(latitude: 34.2014185, longitude: -118.2133892),
         reaction: "💕"),
  Garden(name: "Conservatory of Flowers",
         description: "In the heart of Golden Gate Park lies the Conservatory of Flowers, and it has been operating for more than 100 years. It went through a period of reconstruction, but since reopening in 2003, has won numerous awards, and has become a place where horticultural societies, botany students and plant enthusiasts alike can come to enjoy nature’s beauty. It has 1,700 plant species, and is committed to ensuring the environment continues to thrive for a long time.",
         locationName: "San Francisco, CA",
         imageName: "conservatorysf",
         website: "https://conservatoryofflowers.org",
         // 37.7722794,-122.4609789
         coordinate: CLLocationCoordinate2D(latitude: 37.7722794, longitude: -122.4609789),
         reaction: "💕")
]
