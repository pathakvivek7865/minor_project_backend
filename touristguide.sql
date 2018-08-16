-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2018 at 02:04 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `touristguide`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` bigint(11) NOT NULL,
  `country` varchar(50) NOT NULL DEFAULT 'null',
  `state` varchar(50) NOT NULL DEFAULT 'null',
  `city` varchar(50) NOT NULL DEFAULT 'null',
  `zip_code` int(7) DEFAULT '0',
  `street` varchar(50) DEFAULT 'null',
  `house_number` varchar(50) DEFAULT 'null',
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `country`, `state`, `city`, `zip_code`, `street`, `house_number`, `user_id`) VALUES
(59, 'Nepal', '3', 'ktm', 4600, 'Koteshwor, Near BhatBhateni', '5425', 1),
(114, 'null', 'null', 'null', 0, 'null', 'null', 2),
(115, 'null', 'null', 'null', 0, 'null', 'null', 3),
(116, 'null', 'null', 'null', 0, 'null', 'null', 4),
(117, 'null', 'null', 'null', 0, 'null', 'null', 5),
(118, 'null', 'null', 'null', 0, 'null', 'null', 6),
(119, 'null', 'null', 'null', 0, 'null', 'null', 7),
(120, 'null', 'null', 'null', 0, 'null', 'null', 8),
(121, 'null', 'null', 'null', 0, 'null', 'null', 9),
(122, 'null', 'null', 'null', 0, 'null', 'null', 10),
(123, 'null', 'null', 'null', 0, 'null', 'null', 11),
(124, 'null', 'null', 'null', 0, 'null', 'null', 12),
(125, 'null', 'null', 'null', 0, 'null', 'null', 13),
(126, 'null', 'null', 'null', 0, 'null', 'null', 14),
(127, 'null', 'null', 'null', 0, 'null', 'null', 15),
(128, 'null', 'null', 'null', 0, 'null', 'null', 16),
(129, 'null', 'null', 'null', 0, 'null', 'null', 17),
(130, 'null', 'null', 'null', 0, 'null', 'null', 18),
(131, 'null', 'null', 'null', 0, 'null', 'null', 19),
(132, 'null', 'null', 'null', 0, 'null', 'null', 20);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` bigint(11) NOT NULL,
  `email` varchar(50) DEFAULT 'null',
  `phone` bigint(10) DEFAULT '0',
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `email`, `phone`, `user_id`) VALUES
(5, 'pathakvivek7865@gmail.com', 9803065373, 1),
(60, 'achailkhadka@gmail.com', 0, 2),
(61, 'anilkumarthakur@gmail.com', 0, 3),
(62, 'abhiyanluitel@gmail.com', 0, 4),
(63, 'beingbivek@gmail.com', 0, 5),
(64, 'kumaranilthakur60@gmail.com', 0, 6),
(65, 'eranilkumarthakur@gmail.com', 0, 7),
(66, '60saritasharma@gmail.com', 0, 8),
(67, 'saritasharma2053@gmail.com', 0, 9),
(68, 'anilkumarthakur600@gmail.com', 0, 10),
(69, 'ioeallnote@gmail.com', 0, 11),
(70, 'pathakvivek7865@gmail.com', 0, 12),
(71, 'kachal@gmail.com', 0, 13),
(72, 'sbkbikhyat@gmail.com', 0, 14),
(73, 'padamjoshi65@gmail.com', 0, 15),
(74, 'suryabhusal11@gmail.com', 0, 16),
(75, 'suyenshrestha@gmail.com', 0, 17),
(76, 'bharatawasti@gmail.com', 0, 18),
(77, 'sangambasnet@gmail.com', 0, 19),
(78, 'anupbabuneupane@gmail.com', 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` bigint(11) NOT NULL,
  `place_id` bigint(11) NOT NULL,
  `user_id` bigint(11) NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `geo_location`
--

CREATE TABLE `geo_location` (
  `geo_location_id` bigint(20) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `place_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geo_location`
--

INSERT INTO `geo_location` (`geo_location_id`, `latitude`, `longitude`, `place_id`) VALUES
(1, 27.7148, 85.2904, 2),
(2, 27.7106, 85.3486, 1),
(3, 28.9985, 83.8473, 3),
(4, 27.6721, 85.4281, 4),
(5, 27.6461, 85.4743, 5),
(6, 27.7042, 85.3068, 6),
(7, 27.7163, 85.4279, 7),
(8, 27.5969, 85.3801, 8),
(9, 27.6792, 83.507, 9),
(10, 27.7174, 85.5046, 10),
(11, 27.5341, 84.4525, 11),
(12, 27.5698, 85.5824, 12),
(13, 26.7304, 85.9256, 13),
(14, 27.694, 85.3536, 14),
(15, 27.7909, 85.4272, 15),
(16, 27.7142, 85.3145, 16),
(17, 27.7139, 85.3179, 17),
(18, 27.7057, 85.2888, 18),
(19, 27.7096, 85.3098, 19),
(20, 27.7148, 85.2904, 20),
(21, 27.725, 85.2622, 21);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` bigint(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `place_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `image`, `place_id`) VALUES
(1, 'file:///D:/APPLICATIONS/springboot2/ITG/src/main/uploads/places/download.jpg', 1),
(2, 'file:///D:/APPLICATIONS/springboot2/ITG/src/main/uploads/places/1.jpg', 1),
(3, 'file:///D:/APPLICATIONS/springboot2/ITG/src/main/uploads/places/2.jpg', 1),
(4, 'file:///D:/APPLICATIONS/springboot2/ITG/src/main/uploads/places/3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `place_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `established` varchar(255) DEFAULT NULL,
  `importance` text NOT NULL,
  `prefered_activities` varchar(255) DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`place_id`, `name`, `address`, `description`, `established`, `importance`, `prefered_activities`, `featured_image`) VALUES
(1, 'PashupatiNath Temple', 'Gaushala,Kathmandu,Nepal', 'Famous temple among the Hindus.\r\nThe Pashupatinath Temple is a famous and sacred Hindu temple complex that is located on the banks of the Bagmati River, approximately 5 kilometres north-east of Kathmandu in the eastern part of Kathmandu Valley, the capital of Nepal.', '1817-07-04', 'Lord PashupatiNath ki jai.', 'Worshiping The Temple', 'http://bit.ly/2B3826X'),
(2, 'Swayambhunath Stupa', 'Kathmandu,Nepal', 'Find peace and prayers on the little hillock of Swaymbhunath northwest of Kathmandu Valley.', '2018-07-02', 'The huge gold plated Vajra ‘thunderbolt’ set in the east side of the stupa\r\n\r\nBuddha statue on the west side of Swayambhu\r\n\r\nThe Sleeping Buddha\r\n\r\nThe Dewa Dharma Monastery, noted for a bronze icon of Buddha and traditional Tibetan paintings\r\n\r\nThe temple dedicated to Harati, the goddess of all children. It is said that she was an ogress before Lord Buddha converted her to be the caretaker of all children.', 'Praying the Buddha', 'https://bit.ly/2KMjzaC'),
(3, 'mustang', 'Gaushala,Kathmandu,Nepal', 'Combining natural beauty, cultural heritage and a rich history, Nepal is one of the most culturally appealing places in the world. Historical cities and temples are surrounded by the broad mountain ranges that hug the country and run through its landscape. Rich fertile soils reward the land with an incredible and diverse ecosystem, and a wonderful array of ethnicities and cultures await to be discovered. Nepal is a place like no other.', 'N/A', 'Natural Beauty.', 'Natural Beauty', 'http://bit.ly/2MreucG'),
(4, 'Bhaktapur Durbar Square', 'Bhaktapur', 'Bhaktapur Durbar Square is the plaza in front of the royal palace of the old Bhaktapur Kingdom ', '1427 AD', ' museum of medieval art,architecture with many examples of sculpture\r\n\r woodcarving and colossal pagoda temples consecrated to different gods and goddesses which is 15 km far from Kathmandu,\r\n\rthe guardian deities looking out from their sanctuaries, the wood carvings in every place-struts, lintels, uprights, tympanums, gateways and windows-all seem to form a well-orchestrated symphony', 'worship', 'http://bit.ly/2MEGLJr'),
(5, 'Kailashnath Mahadev Statue', 'Sanga,Suryabinayak', 'Kailashnath Mahadev Statue (???????? ??????) is the world’s tallest Shiva statue; according to the List of statues by height, Kailashnath Mahadev is the world’s fortieth-tallest statue, four places below the Statue of Liberty. It is situated in Sanga, the border of Bhaktapur and Kavrepalanchwok districts in Nepal which is about 20 km from Kathmandu.The statue is 144 feet high and made using copper, zinc, concrete and steel. According to the List of statues by height, Kailashnath Mahadev is the world’s fortieth-tallest statue, four places below the Statue of Liberty ', '2003', 'Tallest statue', 'Worship', 'http://bit.ly/2MjfWxn'),
(6, 'Kathmandu Durbar Square', 'Basantapur', 'Kathmandu Durbar Square ( UNESCO World Heritage Site) also known as Hanuman Dhoka square is one of the major attractions in Kathmandu Valley. Most of the cultural centers of Nepal are concentrated around the Kathmandu valley; among those cultural sites, the important one is the Hanuman-dhoka Durbar Square. The name Hanuman-dhoka Durbar came from the statue of Hanuman established by the King Pratap Malla at the entrance of the royal palace in 1672 A.D. storeyed residence built by King Prithvi Narayan shah in 1770,is called Basantapur Durbar(palace). The whole complex is also known as Kathmandu Durbar Square. Located at the heart of ancient city in Kathmandu it is srounding both Hindu and Buddhist temple. Most of them are built in the pagoda style embellished with intricately carved exteriors as well as Most of the buildings we see here date from 15th to 18th century  ', '1770 AD', 'Royal Palace Of The Former Kathmandu Kingdom', 'Kathmandu Kingdom', 'http://bit.ly/2B4NevS'),
(7, 'Changu Narayan Temple', 'Changurarayan Bhaktapur', 'The hilltop temple of Changu Narayan, located 4 kilometers north of Bhaktapur, is the oldest Vishnu shrine in Kathmandu Valley. Founded as early as 325 AD, it is one of Nepal’s most beautiful and historically important structures. Reconstructed in 1702 following its destruction by fire, the two-storey temple has many intricate carvings of the ten incarnations of Vishnu and different multi-armed Tantric goddesses. Changu Narayan’s true gems, however, are the Lichhavai period (4th to 9th centuries) stone, wood, and metal carvings in the courtyard surrounding the main temple.Apart from the main temple there are other shrines dedicated to Shiva, Chinna Masta (Kali), Ganesh and Krishna found in the courtyard. A pilgrimage to the temple of Chinna Masta, considered to be the mother goddess worshipped at the site in prehistoric times, is held here each year in the Nepali month of Baisaakh (April-May).The Changu Narayan Temple is one of seven structures cited by UNESCO as demonstrating the historic and artistic achievements that make the Kathmandu Valley a World Heritage Site. ', '325 AD', 'Artistic, Religious, Cultural And Historical Perspective ', 'worship', 'http://bit.ly/2MdOxhd'),
(8, 'Godawari Botanical Garden', 'Godawari Lalitpur', 'Explore the flora of Godavari Botanical Garden at the foot of Phulchowki Mountain. See a range of plants, ferns, trees, and flowers, and learn how growing them is possible in such an extreme environment as you stroll the gardens and greenhouses.Located at the base of Phulchowki Mountain, Godavari Botanical Garden offers visitors a respite from the energetic walks of the Kathmandu Valley and the chance to stroll leisurely around the mainly open parkland habitat; home to several fast-flowing streams.Itinerary:10:30 AM: After pickup at your Kathmandu hotel in an air-conditioned vehicle, head with your private guide to the Godawari Botanical Garden.11:15 AM: Arrive at Godawari Botanical Garden. The garden now holds over 500 species of plant in 82 hectares. Highlights include the decorative Coronation Pond, visitor centre (with interesting exhibits on Nepal\'s flora), greenhouses, and collections of rhododendrons (Nepal\'s national flower), lilies, orchids, cacti and ferns. Spring and autumn are the peak flowering seasons and therefore the best times to visit.The Godavari Spring, found 200 metres from the Botanical Gardens\' main gate, is also well worth a look. This freshwater spring spouting ice-cold water from the Godavari river is reputed to have been created when the Buddhist Mystic ', '2011 AD', 'Flora Garderns', 'Garderns view', 'http://bit.ly/2w4XTRM'),
(9, 'Lumbibi', 'Rupandehi District', 'Lumbini is a plain land of Nepal, approximate 302km/187.66mile is far southwest from Kathmandu. The Lord Buddha was born at Lumbini Garden in 623 BC. This is the cultural world heritage site in 1997 AD by UNESCO. Commanding In General Khadga Shamsher Rana and Dr. Alois Fuhrer (German archaeological surveyor in British India) discovered Ashokan Pillar in 1 December 1896 AD. Renowned architect Prof. Kenzo Tange of Japan In 1998 designs Garden with The Master Plan. In 1985 AD, the Lumbini Development Trust established to take over the responsibility of the overall management and development of Lumbini. Mauryan Emperor Ashoka from India in 249 BC visited in Lumbini and erected a stone pillar bearing an inscription that Prince Buddha was born there. This is the evidence that Shakyamuni Buddha was born here. Today devotees and visitors from all over the world come to here. Three famous Chinese-Tseng Tsai (4th century), Fa-Hsien (5th century) and Hiuen-Tsang (7th century) also visited here. Lumbini changed into a religious site soon after the Mahaprinirvana of the Buddha. ', '623 BC', 'Lord Buddha Palace', 'Lord Buddha Palace View', 'http://bit.ly/2MDU5hh'),
(10, 'Nagarkot Nepal', 'Nagarkot Bhaktapur', 'Nagarkot has a reputation as the top spot for enjoying Himalayan views from the comfort of your hotel balcony. Just 32km from Kathmandu, the village is packed with hotels lining a ridge, affording one of the broadest possible views of the Himalaya, with eight ranges visible (Annapurna, Manaslu, Ganesh Himal, Langtang, Jugal, Rolwaling, Everest and Numbur). However, timing is everything, as the mountains are notorious for disappearing behind cloudy skies. The best viewing seasons are October to December and March to April, when clear skies are likely. ', 'N/A', 'Sunrise View', 'Beautiful views', 'http://bit.ly/2KMa4Iu'),
(11, 'Chitwan National Park', 'Chitwan', 'Nepal\'s first and most famous national park is situated in the inner Terai lowlands of Chitwan. Covering an area of 932 sq. kilometers the park includes hilly areas of the Shivalik Range covered by deciduous trees. Parts of the park are floodplains of rivers Aryan, Rapti, and the Reu, covered by dense tall elephant grass, forests of silk cotton, acacia and Sisam trees. Royal Chitwan National Park was officially established in 1973 and included as World Heritage Site in 1984.The park in Chitwan is shelter to the last endangered Asian species like the one-horned rhinoceros and the Royal Bengal tiger. Other animals found here are the leopard, sloth bear, wild boar, rhesus monkey, grey langur monkey, wild dog, small wild cats, bison, the four species of deer and other small animals. Marsh crocodiles inhabit the swampy areas. The Gangetic crocodile that only feed on fish, are found in a stretch of the River Narayani. Also found here is one of the four species of fresh-water dolphins.Chitwan nationalpark is also home to 450 species of bird and hence is ideal for bird watching. Some of the resident specialties are woodpeckers, hornbills, Bengal florican, red-headed trogons, waterfowl, Brahminy duck, pintails and bareheaded geese. In summer the forest is alive with nesting migrants such as the fabulous paradise flycatcher, the Indian pitta and parakeets. Ghale Treks offers such a Jungle Safari activities. ', '1973 AD', 'Poaching of wildlife and vegetation', 'Wildlife And Vegetation view', 'http://bit.ly/2B0gMLm'),
(12, 'Namo Buddha', 'Kavrepalanchowk District', 'Enjoy a hike up to Namo Buddha, a beautiful point situated at an elevation of 5,740 feet (1,750 meters) in the Kavre district. It is a very important Buddhist pilgrimage site which lies about 23 miles (38 kilometers) east of Kathmandu. The stupa and shrines built in this lovely little hill mark a very ancient holy site which signifies the place where a legendary prince named Mahasattva offered himself to a starving tigress with several underfed cubs. This legendary episode is depicted in a very nice stone slab which is right next to a holy stupa.Namo Buddha is a beautiful and tiny hill top about 38km east of Kathmandu after Dhulikhel. Namo Buddha means “Greetings to the Lord Buddha.There is an interesting story associated with child prince behind this place. It is also a great symbol of human sacrifice at its highest level ', '1978 ', 'Buddhist pilgrimage', 'worship', 'http://www.agiletrek.com/pagegallery/namobuddha-holy-trek45.jpeg'),
(13, 'Janaki Temple', 'Janakur, dhanusha district', 'The beautiful Janaki Mandir is a Hindu temple at the heart of Janakpur. Fully built in bright white, the temple is an example of perfect artistry. Constructed in an area of 4,860 sq. feet in a mixed style of Islamic and Rajput domes, the temple is 50 meters high. It is a three storied structure made entirely of stone and marble. All its 60 rooms are decorated with colored glass, engravings and paintings, with beautiful lattice windows and turrets.The temple was built in dedication to Goddess Sita. In 1657, a golden statue of the Goddess Sita was found at the very spot, and Goddess Sita is also said to have lived there. The temple stands on the exact spot where the statue was found.Goddess Sita was born to the King Janak of the Mithila Kingdom, and was later married to the Lord Rama of Ayodhya, according to the Ramayana. The reference of the town in the holy scripture brings thousands of visitors every year from Nepal and India to this ancient temple.The temple is popularly known as the Naulakha Mandir (meaning Nine Lakhs). The cost for the construction of the temple was about the same amount of money: Rupees Nine Lakhs or Nine Hundred Thousands and hence the name. Queen Vrisha Bhanu – of the Indian state of Tikamgarhm built the temple in 1910.Thousands of pilgrims visit the temple during November and December for Vivah Panchami, the town’s major annual festival, when the marriage of Sita and Rama is celebrated with various re-enactments. It is an equally popular time too for modern day weddings. ', '1657', 'Hindu goddess Sita', 'worship', 'http://bit.ly/2vCZvCC'),
(14, 'Aviation Museum', 'Sinamangal Kathmandu', 'Aircraft Museum Kathmandu is an aviation museum located in Sinamangal, Kathmandu, Nepal.[1] The museum is inside an Airbus 330-300 of Turkish Airlines that only flew for about eight months before suffering a runway excursion at Tribhuvan International Airport in Kathmandu in March 2015.[2] It was established under a joint initiative by the Civil Aviation Authority of Nepal[3] and former Nepalese pilot Bed Upreti and his trust. This museum was officially opened to public on 28 November, 2017.[4] The museum\'s exhibits include the aircraft\'s original cockpit setting, model and miniature aircraft and items documenting the history of Nepalese aviation.[5] The museum is the second of its kind in Nepal, after Bed Upreti had already set up a similar, yet smaller aviation museum, the Aircraft Museum Dhangadhi in Dhangadhi in Western Nepal. ', '2015 AD', 'educate and to inspire young Nepali to join the aviation sector', 'Watch Different Aircraft', 'http://bit.ly/2vZsekt'),
(15, 'Shivapuri Nagarjun National Park', 'Shivapuri National Park, Nepal.', 'Sprawling forests of Shivapuri National Park are exciting, enthralling and extremely inviting. The ninth National Park in the country is known for being a birdwatcher’s paradise. The place boasts of over 300 species of birds and several rare orchids. The forest comes alive with a diverse range of flora and fauna.Highlights: The national park was established in 2002 and it is a famous tourist place near Kathmandu. A number of herbs prosper in the place, while the overall park has broadleaf forests. The place comes alive with animals like Jungle Cats and Indian Leopard, Yellow Throated Marter, Himalayan Black Bear, Hanuman Langur, clouded leopard, leopard cat, barking deer and wild boar among other animals. Ornithologists have recorded over 318 species of birds at the place, including barred cuckoo dove, Eurasian eagle owl and golden-throated barbet. ', '2002', 'Bio Diversity Conservation ', 'Siteviewing', 'http://bit.ly/2Owh6n0'),
(16, 'Garden of Dreams', 'Tridevi Sadak, Kathmandu', 'The beautifully restored Swapna Baigicha, also known as Garden of Dreams is a popular tourist place in Kathmandu to visit offers respite and rejuvenation from the stresses of the world. It is one of the most stunning places in the world. The garden was built in the 1920s and has been brought back to life by the Austrian financed team. The stunningly restored garden has gorgeous and refined details.Highlights:Some of the main highlights of this place includes marble inscription from Omar Khayam’s Rubaiyat, beautiful fountains and ponds. The palace is home to a quirky ‘hidden garden’ as well. It also features three pavilions. The place is ideal for going out for a picnic or just to marvel at the human-nature interaction. The place is a must visit for travelers. ', '1920 AD', 'oasis of greenery ', 'Natural Siteviewing', 'http://bit.ly/2vxOcvB'),
(17, 'Narayanhiti Palace', 'DurbarMarg', 'Narayanhiti Palace stood as a symbol of royalty and of affluence, and was one of the structures in Nepal that no one had been able to enter, except for those authorized or invited by the royal family. It had been a building shrouded in controversy, scandal and mystery, as the thick walls and armed guards tried to shield the palace and its inhabitants from the world. But in 2008, the Shah monarchy ended and the gates to the Narayanhiti Palace opened to the public in February 2009. The Narayanhiti Palace was now Narayanhiti Palace Museum.The Narayanhiti Palace was commissioned in 1966 by Late King Birendra’s father, Late King Mahendra, from the American architect Benjamin Polk, then living in Delhi and running the biggest architectural practice in South Asia.Now, ordinary citizens queue round the block to see how their recent monarchs lived. Of the 52 rooms, only 19 are currently open to the public. The rooms are called ‘sadan’-most sadans named after a district. Some rooms are grandiose – especially the huge towered throne room behind the prominent front window, where extraordinary curved pillars with garish pictures of Hindu deities leap from the walls. These are rooms that clearly cost huge sums to decorate. ', '1963 AD', 'History of Nepal Kingdom', 'Narayanhiti Palace museum', 'http://bit.ly/2Maqakp'),
(18, 'Chhauni Museum', 'Tahachal, Kathmandu', 'Close to Swayambhunath, one of the most beautiful monasteries in the world lies a sprawling museum in a walled compound. This National Museum has some of the most interesting treasures on display, which makes Chhauni Museum a tourist place in Kathmandu worth a visit. In the museum compound, you will find Judda Art Gallery, which is home to exquisite metal, terracotta and stone statues of Nepali deities. There are fabulous cloth paintings here as well. The place has a life sized statue of Jayavarma as well. The statue, discovered in 1992 is over 1800 years old. This museum includes temple styled Buddhist Art Gallery as well. The place has everything from manuscripts to informative displays and stone depiction of Buddha to offer. This place is home to leather cannons as well, seized during the 1792 Nepal-Tibet War. ', '1928', 'Nepal War Troops', 'Watch different war troops used in Nepal war', 'http://bit.ly/2P2ZP5B'),
(19, 'Kathesimbhu Stupa', 'Kathmandu', 'The Kathesimbhu stupa is technically a monumental chaitya which stands within a closed off courtyard surrounded by smaller chaityas inscriptions, statutes and an old monastery (Sighahbaha) located directly behind. To the right is a more modern Tibetan style monastery. Within the courtyard is one Avalokiteshvara statue prebates the stupa much further than the 16th century. A drawing in 1864 (Wright) shows Kathesimbhu it in ruins, but with similar architecture as today. The earliest known records of Kathesimbhu are mentions in 1552 which mention a renovation. Licchavi chaitya are not represented here which gives a clearer indication of when it would have come about. There are several stalls nearby and vendors will often try to encourage you to', '1864', 'modern Tibetan style monastery ', 'Monastery Viewing', 'http://bit.ly/2vZv8WA'),
(20, 'Boudhanath Stupa', 'Baudha Kathmandu', 'Boudhanath Stupa (or Bodnath Stupa) is the largest stupa in Nepal and the holiest Tibetan Buddhist temple outside Tibet. It is the center of Tibetan culture in Kathmandu and rich in Buddhist symbolism. The stupa is located in the town of Boudha, on the eastern outskirts of Kathmandu.According to legend, the king constructed the stupa as an act of penance after unwittingly killing his father. The first stupa was wrecked by Mughal invaders in the 14th century, so the current stupa is a more recent construction.The highly symbolic construction serves in essence as a three-dimensional reminder of the Buddha’s path towards enlightenment. The plinth represents earth, the kumbha (dome) is water, the harmika (square tower) is fire, the spire is air and the umbrella at the top is the void or ether beyond space. The 13 levels of the spire represent the stages that a human being must pass through to achieve nirvana.Stupas were originally built to house holy relics and some claim that Bodhnath contains the relics of the past Buddha, Kashyapa, while others say it contains a piece of bone from the skeleton of Siddhartha Gautama, the historical Buddha. Around the base of the stupa are 108 small images of the Dhyani Buddha Amitabha (108 is an auspicious number in Tibetan culture) and a ring of prayer wheels. ', '1979 AD', 'place of pilgrimage and meditation for Tibetan Buddhists & local Nepalis', 'Worship of Buddhists', 'https://bit.ly/2KMjzaC'),
(21, 'White Monastery', 'Nagarjun kathmandu', 'WHITE GUMBA(Seto Gumba) which is also known as Druk Amitabh Monastery.Seto Gumba is a cultural site full of natural beauty, Tibetean architecture & culture.It is surrounded by lush green valley. The picturesque topography of White Gumba is remarkable that attracts the visitors to it.The area around the White Monastery is very peacefull and quite, one can visit it for meditation practices and also for learning about Buddhism.Because it lies at the top of hill we can view the spectacular view of Kathmandu valley from Seto Gumba. If the weather is clear you even can sight the breathtaking view of mountain range.White Gumba is also the second best spot to view the sun rise and sunset after the Nagarkot.Many people visit here to view the sunrise and sunset from the hill which is inexpressible. Peace and traquility is reflected from every part of the gumba. ', 'N/A', 'Buddhust Culture', 'worship', 'https://qph.fs.quoracdn.net/main-qimg-0afaa0df08a82b141047f421822a25c8');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role`) VALUES
(4, 'ADMIN'),
(5, 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` bigint(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`, `first_name`, `last_name`) VALUES
(1, 'vivek', '$2a$10$QV7Cax1520gpjaA9WVh2N./.hkUqSPej39.G.Q/NEFij4los9N/eO', 'dai', 'pathak'),
(2, 'achailkhadka@gmail.com', '$2a$10$QL5L1q.J57BN5ZZy5p0WruBySh1Zqj58MVQ6R0d2xRi2BK0RuBZ9y', 'achal', 'khadla'),
(3, 'anilkumarthakur@gmail.com', '$2a$10$nV0bauHpjY4mi4wbARgkuOkPP69.XSLhUkVpFdNbk7HNAbYp3y5JO', 'anil', 'thakur'),
(4, 'abhiyanluitel@gmail.com', '$2a$10$VcwWJXNt47yFPVl50CvuHepBfrrqOeQWTPjr5F9FZCS0ozM9OwF/m', 'abhiyan', 'luitel'),
(5, 'beingbivek@gmail.com', '$2a$10$x3NTheozg/zheV4YT1ZchuhPT8IKaIXyPPPcU4jsr16qVMrSQMpvu', 'bivek', 'thapa'),
(6, 'kumaranilthakur60@gmail.com', '$2a$10$hOp1g709NRRGvMM2/6udteWSHbIgTE/4BNTUwQWMDP5g0npqp2YDS', 'anil', 'thakur'),
(7, 'eranilkumarthakur@gmail.com', '$2a$10$nTUktSwVyoHODB77sfVxUeaMCkalaukm99Ep9er/0w/P.6xZHBLJi', 'anil', 'thakur'),
(8, '60saritasharma@gmail.com', '$2a$10$vuPBaLG3PI5K6ndF259tGOYCP0gJWMNSu8tKxNkUU.yU2i29EyI9e', 'sarita', 'sharma'),
(9, 'saritasharma2053@gmail.com', '$2a$10$e0hlSngIlwQBgx/1lD1G8u3Bxj3dxMtYBY.FSIDlgGYfjaqQScr3W', 'sarita', 'sharma'),
(10, 'anilkumarthakur600@gmail.com', '$2a$10$UpG8hFzWEyd1u6YA5XjY6OH9OMhhxhZf6NpYbOxp1MbNvDI95HxVK', 'anil', 'thakur'),
(11, 'ioeallnote@gmail.com', '$2a$10$11ss9knR2ydZYkjDDuBTDOFGL/Wb7JKagj7JvhjhPczqiNHCbNa3O', 'anil', 'thakur'),
(12, 'pathakvivek7865@gmail.com', '$2a$10$85u06EivHymnmJmT1sDUHOA.ZKyaTs/QY2HKFC2Q8vPtCcrsP3SRC', 'vivek', 'pathak'),
(13, 'kachal@gmail.com', '$2a$10$OxC21QGii0ISNLS8OW/U1.gUYDezuL55.xouB5Ncu5EIWcWpjThRu', 'achal', 'khadka'),
(14, 'sbkbikhyat@gmail.com', '$2a$10$F8dbQWIEfb4z6iQOBCEH4uIr6tUht5XXHtkVSf/nUzxtHwgDJov2a', 'bikhyat', 'adhikari'),
(15, 'padamjoshi65@gmail.com', '$2a$10$AasM63IY8.XbkJX9N4hjOuXwnND7gxXtAkqKqmREllv9JkdKjmeCS', 'bikhyat', 'adhikari'),
(16, 'suryabhusal11@gmail.com', '$2a$10$E5apVpHJk2Ao9MpDne5wg.7p2saylZqR6HbNcPk1z/ubEazpsFCBS', 'surya', 'bhusal'),
(17, 'suyenshrestha@gmail.com', '$2a$10$XPiIvlUBOAg0phWEffo1I.NDtlD.pCU1ahDY.OIm1YaVRYK74Obh.', 'suyen', 'shrestha'),
(18, 'bharatawasti@gmail.com', '$2a$10$DAAFu/0eI.WfhPCfFGdGoueIoH.BsOOXb/gHoWYuWvRsUfbNeLc9G', 'bharat', 'awasti'),
(19, 'sangambasnet@gmail.com', '$2a$10$BuicCiOhElIAlWV8ai.EYuUxs5LamowyhaJBvwYAHKBw4ngVcbcsG', 'sangam', 'basnet'),
(20, 'anupbabuneupane@gmail.com', '$2a$10$GuDOQapvpRNtRMm1EjFOtuD7ZQk4GQDj5EciUzUd6cI2EMPpd02Du', 'anup', 'neupane');

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `afterSignup` AFTER INSERT ON `user` FOR EACH ROW BEGIN

  
   INSERT INTO contact(email,user_id) VALUES(new.email,new.user_id);
   INSERT INTO address(user_id) VALUES(new.user_id);
   INSERT INTO user_role(user_id, role_id) VALUES(new.user_id, 5);

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `beforeDelete` BEFORE DELETE ON `user` FOR EACH ROW BEGIN

   DELETE from address where user_id = old.user_id;
   DELETE FROM contact where user_id = old.user_id;
   DELETE FROM user_role where user_id = old.user_id;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_place`
--

CREATE TABLE `user_place` (
  `id` int(11) NOT NULL,
  `place_id` bigint(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_place`
--

INSERT INTO `user_place` (`id`, `place_id`, `rating`, `user_id`) VALUES
(1, 1, 5, 1),
(48, 11, 2, 1),
(49, 18, 3, 1),
(50, 4, 1, 2),
(51, 7, 3, 2),
(52, 10, 5, 2),
(53, 15, 5, 2),
(54, 21, 4, 2),
(55, 2, 4, 3),
(56, 8, 5, 3),
(57, 13, 5, 3),
(58, 17, 3, 3),
(59, 20, 1, 3),
(60, 5, 3, 4),
(61, 8, 5, 4),
(62, 12, 4, 4),
(63, 14, 2, 4),
(64, 18, 3, 4),
(65, 21, 5, 4),
(66, 8, 4, 5),
(67, 16, 5, 5),
(68, 20, 3, 5),
(69, 2, 5, 6),
(70, 5, 5, 6),
(71, 9, 3, 6),
(72, 12, 2, 6),
(73, 15, 1, 6),
(74, 18, 5, 6),
(75, 21, 4, 6),
(76, 4, 5, 7),
(77, 7, 4, 7),
(78, 12, 3, 7),
(79, 16, 2, 7),
(80, 19, 5, 7),
(81, 1, 5, 8),
(82, 5, 4, 8),
(83, 8, 5, 8),
(84, 13, 4, 8),
(85, 18, 3, 8),
(86, 21, 1, 8),
(87, 4, 5, 9),
(88, 8, 4, 9),
(89, 10, 4, 9),
(90, 14, 3, 9),
(91, 18, 3, 9),
(92, 4, 4, 10),
(93, 7, 5, 10),
(94, 10, 4, 10),
(95, 12, 2, 10),
(96, 15, 4, 10),
(97, 19, 5, 10),
(98, 21, 1, 10),
(99, 1, 5, 11),
(100, 6, 5, 11),
(101, 10, 4, 11),
(102, 14, 5, 11),
(103, 18, 3, 11),
(104, 21, 3, 11),
(105, 4, 5, 12),
(106, 7, 4, 12),
(107, 11, 3, 12),
(108, 14, 5, 12),
(109, 18, 1, 12),
(110, 20, 2, 12),
(111, 1, 2, 13),
(112, 4, 2, 13),
(113, 9, 5, 13),
(114, 13, 4, 13),
(115, 16, 5, 13),
(116, 21, 5, 13),
(117, 1, 3, 14),
(118, 5, 5, 14),
(119, 8, 5, 14),
(120, 12, 5, 14),
(121, 16, 4, 14),
(122, 20, 2, 14),
(123, 1, 5, 15),
(124, 6, 4, 15),
(125, 7, 4, 15),
(126, 11, 5, 15),
(127, 14, 5, 15),
(128, 18, 5, 15),
(129, 20, 5, 15),
(130, 2, 2, 16),
(131, 5, 5, 16),
(132, 8, 5, 16),
(133, 11, 5, 16),
(134, 14, 5, 16),
(135, 18, 4, 16),
(136, 21, 1, 16),
(137, 1, 5, 17),
(138, 5, 3, 17),
(139, 8, 4, 17),
(140, 10, 1, 17),
(141, 15, 5, 17),
(142, 19, 5, 17),
(143, 4, 5, 18),
(144, 7, 4, 18),
(145, 11, 2, 18),
(146, 14, 4, 18),
(147, 18, 5, 18),
(148, 21, 1, 18),
(149, 1, 5, 19),
(150, 5, 5, 19),
(151, 8, 5, 19),
(152, 12, 4, 19),
(153, 16, 5, 19),
(154, 19, 2, 19),
(155, 1, 4, 20),
(156, 6, 4, 20),
(157, 9, 4, 20),
(158, 12, 4, 20),
(159, 14, 3, 20),
(160, 17, 4, 20),
(161, 20, 5, 20),
(162, 3, 3, 3),
(163, 3, 3, 6),
(164, 3, 2, 9),
(165, 3, 2, 12),
(166, 3, 5, 15),
(167, 3, 5, 18),
(168, 3, 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 4),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(15, 5),
(16, 5),
(17, 5),
(18, 5),
(19, 5),
(20, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `FKda8tuywtf0gb6sedwk7la1pgi` (`user_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `FKe07k4jcfdophemi6j1lt84b61` (`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `geo_location`
--
ALTER TABLE `geo_location`
  ADD PRIMARY KEY (`geo_location_id`),
  ADD UNIQUE KEY `UK_dmtiog6b7vmuqq23drw8rwkqv` (`place_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `FK9c8l45da3h0hylfbw3i118e3l` (`place_id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`place_id`),
  ADD UNIQUE KEY `name` (`name`,`address`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_place`
--
ALTER TABLE `user_place`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`place_id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`,`place_id`),
  ADD KEY `place_id` (`place_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD UNIQUE KEY `UK_it77eq964jhfqtu54081ebtio` (`user_id`) USING BTREE,
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `geo_location`
--
ALTER TABLE `geo_location`
  MODIFY `geo_location_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `place_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_place`
--
ALTER TABLE `user_place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FKda8tuywtf0gb6sedwk7la1pgi` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `FKe07k4jcfdophemi6j1lt84b61` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `geo_location`
--
ALTER TABLE `geo_location`
  ADD CONSTRAINT `FKclqnor45sjhjmsj4hxf4nc5vr` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK9c8l45da3h0hylfbw3i118e3l` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
