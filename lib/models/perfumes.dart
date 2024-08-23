import 'package:flutter/material.dart';

class Perfume {
  final String perfumeName;
  final String perfumeImage;
  final String perfumeReleaseYear;
  final String perfumeCategory; // "Winter" or "Summer"
  final String perfumeDuration; // e.g., "Long-lasting", "Moderate"
  final double perfumeRating; // e.g., 4.5 out of 5
  final String perfumeSinopsis; // Brief description
  final List<String> perfumeNotes;
  final List<String>perfumeNoteImages;
  final Color perfumeColor; // Notes like "Citrus, Woody, Vanilla"

  Perfume({
    required this.perfumeName,
    required this.perfumeImage,
    required this.perfumeReleaseYear,
    required this.perfumeCategory,
    required this.perfumeDuration,
    required this.perfumeRating,
    required this.perfumeSinopsis,
    required this.perfumeNotes,
    required this.perfumeNoteImages,
    required this.perfumeColor,
  });
}

// Winter Perfumes
List<Perfume> winterPerfumes = [
  Perfume(
    perfumeName: "Jean Paul Gaultier - Le Male",
    perfumeImage: "assets/images/le_male.png",
    perfumeReleaseYear: "1995",
    perfumeCategory: "Winter",
    perfumeDuration: "Long-lasting",
    perfumeRating: 4.6,
    perfumeSinopsis: "A warm and spicy fragrance with notes of vanilla and mint, perfect for winter nights.",
    perfumeNotes: ["Lavender", "Mint", "Vanilla", "Cinnamon", "Sandalwood"],
    perfumeNoteImages: [
      "https://th.bing.com/th/id/OIP.MjU1egSG-mc9YC-USDKqtwHaHa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/R.d4a7e0a99fcd5a43436b6c3cec5ed302?rik=Cjb09clMBqv8eA&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fmint-hd-png-mint-png-542.png&ehk=036AUXY43gSqNbQzE6GJKxwmCWqNAafSZmieuYtvveE%3d&risl=&pid=ImgRaw&r=0",
      "https://th.bing.com/th/id/OIP.SgZVjFMpVtLFRI2WSp-hOgAAAA?rs=1&pid=ImgDetMain",
      "https://www.pngmart.com/files/17/Cinnamon-PNG-File.png",
      "https://th.bing.com/th/id/OIP.WJfE9WvFZpkdeJMt4MtTyAAAAA?rs=1&pid=ImgDetMain"
    ],
  perfumeColor : Color(0xFF00BFFF),
  
  ),
  Perfume(
    perfumeName: "Tom Ford - Tobacco Vanille",
    perfumeImage: "assets/images/tobacco_vanille.png",
    perfumeReleaseYear: "2007",
    perfumeCategory: "Winter",
    perfumeDuration: "Long-lasting",
    perfumeRating: 4.8,
    perfumeSinopsis: "A warm, spicy, and sweet fragrance with rich notes of tobacco and vanilla, perfect for cold weather.",
    perfumeNotes: ["Tobacco", "Vanilla", "Cacao", "Tonka Bean", "Spices"],
    perfumeNoteImages: [
      "https://th.bing.com/th/id/OIP.fCPXFw086drIxXd_ijzZBwHaED?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.SgZVjFMpVtLFRI2WSp-hOgAAAA?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.6VUEfXRcYsLK9fXgBLPUSwHaEF?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.F6e18fnnS6n3gn_rX59GdwHaHa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.c2RldLZjhtS8NvNM3_9JlAHaFS?rs=1&pid=ImgDetMain"
    ],
    perfumeColor:  Color(0xFF4B2E2A)
  ),
  Perfume(
    perfumeName: "Dior - Sauvage Parfum",
    perfumeImage: "assets/images/sauvage_parfum.png",
    perfumeReleaseYear: "2019",
    perfumeCategory: "Winter",
    perfumeDuration: "Long-lasting",
    perfumeRating: 4.7,
    perfumeSinopsis: "A rich, warm, and slightly spicy fragrance, ideal for cold weather.",
    perfumeNotes: ["Bergamot", "Mandarin", "Sandalwood", "Vanilla", "Tonka Bean"],
    perfumeNoteImages: [
      "https://th.bing.com/th/id/OIP.YA2Wpiy_XwUOxzfaQ-Ae9gHaFJ?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.K2LoQ1TcvTibBNUpBwYDjgHaMA?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.WJfE9WvFZpkdeJMt4MtTyAAAAA?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.vZ8_1EvQW2JJcg2iDZDMbQHaD0?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.F6e18fnnS6n3gn_rX59GdwHaHa?rs=1&pid=ImgDetMain"
    ],
    perfumeColor: Color(0xFF4B4B4B)
  ),
  Perfume(
    perfumeName: "Creed - Aventus",
    perfumeImage: "assets/images/aventus.png",
    perfumeReleaseYear: "2010",
    perfumeCategory: "Winter",
    perfumeDuration: "Long-lasting",
    perfumeRating: 4.9,
    perfumeSinopsis: "A bold and sophisticated fragrance with a smoky and woody base, perfect for winter evenings.",
    perfumeNotes: ["Pineapple", "Bergamot", "Black Currant", "Birch", "Musk"],
    perfumeNoteImages: [
      "https://th.bing.com/th/id/OIP.CAR6R7Gnv6G_OiLWjZEL2QHaE8?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.ccGcFFJ_Pfed6H0rXjtO3QHaHa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.llrWsUmpQdjOLJvXswXzAwHaGR?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.R9RRC9evozJ7GnfRuzVgCgHaHa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/R.8acb685f908b5f0306991cbeba874612?rik=KTBob1xGmq%2b0%2bQ&riu=http%3a%2f%2fyour-perfume-guide.com%2fwp-content%2fuploads%2f2021%2f01%2ftincture.jpg&ehk=H7IzjpZFdbCOsaCr4TiQ%2fVvuKRm%2bb8P5UbedElDjOKo%3d&risl=&pid=ImgRaw&r=0"
    ],
    perfumeColor: Color(0xFF36454F)
  ),
  Perfume(
    perfumeName: "Giorgio Armani - Acqua di Giò Profumo",
    perfumeImage: "assets/images/acqua_di_gio_profumo.png",
    perfumeReleaseYear: "2015",
    perfumeCategory: "Winter",
    perfumeDuration: "Long-lasting",
    perfumeRating: 4.7,
    perfumeSinopsis: "A more intense, smoky, and mysterious version of the original Acqua di Giò, perfect for winter.",
    perfumeNotes: ["Incense", "Patchouli", "Bergamot", "Rosemary", "Marine Notes"],
    perfumeNoteImages: [
      "https://th.bing.com/th/id/OIP.QzHhPs_tq3oz96m8P1Jz_wHaHa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.0695y6KC_OH9qunYUyfN6wHaHQ?rs=1&pid=ImgDetMain",
      "https://static.vecteezy.com/system/resources/previews/024/491/376/non_2x/fresh-bergamot-with-green-leaves-ai-generated-free-png.png",
      "https://th.bing.com/th/id/OIP.YeSLUkniiu96NbjPp2O61AHaHZ?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/R.acbe6bcda2ea3a3e8106dffa267e5806?rik=WSop%2fFM1J5eGTA&riu=http%3a%2f%2fwww.olfastory.com%2fsites%2fwww.olfastory.com%2ffiles%2fstyles%2f400x400%2fpublic%2fnote-marine.jpg%3fitok%3dBBLstuy9&ehk=KW6Cf7n%2bumm4jV6eSrgWCbcmK76xJ2AMO4O8ydbTBhc%3d&risl=&pid=ImgRaw&r=0"
    ],
    perfumeColor: Color(0xFF4682B4)
  ),
  Perfume(
    perfumeName: "Jean Paul Gaultier - Ultra Male",
    perfumeImage: "assets/images/ultra_male.png",
    perfumeReleaseYear: "2015",
    perfumeCategory: "Winter",
    perfumeDuration: "Long-lasting",
    perfumeRating: 4.7,
    perfumeSinopsis: "A more intense and sweeter version of Le Male with fruity notes, ideal for winter nights.",
    perfumeNotes: ["Pear", "Lavender", "Vanilla", "Cinnamon", "Amber"],
    perfumeNoteImages: [
      "https://th.bing.com/th/id/OIP.bnl69alQS3uIZ7PtiHwnhwHaKB?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/R.cc6863bfaec3d0e32b2786d74050813f?rik=xfEKg3z%2fRnBgFA&pid=ImgRaw&r=0",
      "https://th.bing.com/th/id/OIP.SgZVjFMpVtLFRI2WSp-hOgAAAA?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/R.2420a66cf5bbfc29b4ccf4c6ef3edc20?rik=v57lwQNSTA%2bltQ&pid=ImgRaw&r=0&sres=1&sresct=1",
      "https://th.bing.com/th/id/R.b887a02d6388440a0f55759203f260fc?rik=XpMU%2b69MVW%2fegQ&pid=ImgRaw&r=0"
    ],
    perfumeColor: Color(0xFF4B0082),

  ),
  Perfume(
    perfumeName: "Tom Ford - Noir Extreme",
    perfumeImage: "assets/images/noir_extreme.png",
    perfumeReleaseYear: "2015",
    perfumeCategory: "Winter",
    perfumeDuration: "Long-lasting",
    perfumeRating: 4.7,
    perfumeSinopsis: "A warm, spicy, and sweet fragrance with oriental notes, perfect for cold winter nights.",
    perfumeNotes: ["Cardamom", "Nutmeg", "Saffron", "Vanilla", "Amber"],
    perfumeNoteImages: [
      "https://th.bing.com/th/id/OIP.wpPcO8AHshwc9MdttJeD7AHaHa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.C5bUi0p4DjYf6h5VCXYfwgHaHa?w=1200&h=1200&rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.6jP4IWW-wNV01IVQOg0awQHaFA?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.EQyEES3dotTxpSlw7OzGigHaHa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/R.b887a02d6388440a0f55759203f260fc?rik=dn1nd3G6mJAR3Q&riu=http%3a%2f%2fassets.stickpng.com%2fimages%2f5af948516554160a79bea0ef.png&ehk=ste1JV4ieZG1CX1iZP8YFlT6y6gqCWilFcFvaKPcmfw%3d&risl=&pid=ImgRaw&r=0"
    ],
    perfumeColor: Color(0xFFFFD700),
  ),
  Perfume(
    perfumeName: "Dior - Fahrenheit Le Parfum",
    perfumeImage: "assets/images/fahrenheit_le_parfum.png",
    perfumeReleaseYear: "2014",
    perfumeCategory: "Winter",
    perfumeDuration: "Long-lasting",
    perfumeRating: 4.8,
    perfumeSinopsis: "A more intense and luxurious version of Fahrenheit, with warm and spicy notes, ideal for winter.",
    perfumeNotes: ["Suede", "Vanilla", "Licorice", "Rum", "Mandarin"],
    perfumeNoteImages: [
      "https://th.bing.com/th/id/OIP.ryoYvlm8fnB2idf6-yTtFAHaHa?w=161&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "https://www.pngmart.com/files/3/Vanilla-Bean-PNG-Picture.png",
      "https://th.bing.com/th/id/R.1953fe1ddbd02c4f49134ffb635ba02a?rik=ORdNpNy72xsovA&pid=ImgRaw&r=0",
      "https://th.bing.com/th/id/OIP.BYMEUHtdwEibUTY7-ZiQpQHaHa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.K2LoQ1TcvTibBNUpBwYDjgHaMA?rs=1&pid=ImgDetMain"
    ],
    perfumeColor: Color(0xFF8B4513),
  ),
  Perfume(
    perfumeName: "Creed - Viking",
    perfumeImage: "assets/images/viking.png",
    perfumeReleaseYear: "2017",
    perfumeCategory: "Winter",
    perfumeDuration: "Long-lasting",
    perfumeRating: 4.7,
    perfumeSinopsis: "A bold and spicy fragrance with woody notes, inspired by adventure and perfect for winter.",
    perfumeNotes: ["Bergamot", "Pink Pepper", "Sandalwood", "Vetiver", "Patchouli"],
    perfumeNoteImages: [
      "https://static.vecteezy.com/system/resources/previews/024/491/550/non_2x/fresh-bergamot-with-green-leaves-ai-generated-free-png.png",
      "https://th.bing.com/th/id/OIP.O_Vze0id-mbJwpoBkAsoLAHaHa?rs=1&pid=ImgDetMain",
      "https://www.nicepng.com/png/full/245-2458111_sandalwood-png.png",
      "https://th.bing.com/th/id/R.0bfa667fc037e24f13f56ff9bae6dc63?rik=QOVrIz7z%2bl6JhA&pid=ImgRaw&r=0",
      "https://th.bing.com/th/id/OIP.ncqsyfs-mv6cQ5Rblz_ZzAHaHR?rs=1&pid=ImgDetMain"
    ],
    perfumeColor: Color(0xFF228B22),
  ),
  Perfume(
    perfumeName: "Giorgio Armani - Code Profumo",
    perfumeImage: "assets/images/code_profumo.png",
    perfumeReleaseYear: "2016",
    perfumeCategory: "Winter",
    perfumeDuration: "Long-lasting",
    perfumeRating: 4.6,
    perfumeSinopsis: "A warm and spicy fragrance with a seductive blend of amber and leather, perfect for winter nights.",
    perfumeNotes: ["Cardamom", "Tonka Bean", "Amber", "Leather", "Tobacco"],
    perfumeNoteImages: [
      "https://th.bing.com/th/id/R.c293dc3bc007b21c1cf4c76db49783ec?rik=jg6yO7y3zkhn1A&riu=http%3a%2f%2fwww.pngall.com%2fwp-content%2fuploads%2f5%2fCardamom-PNG-High-Quality-Image.png&ehk=VJ0bfKuZJAjJ12%2fwniaOvVh25IppcdBKyW%2boCmSV%2f0s%3d&risl=&pid=ImgRaw&r=0",
      "https://th.bing.com/th/id/OIP.F6e18fnnS6n3gn_rX59GdwHaHa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/R.b887a02d6388440a0f55759203f260fc?rik=dn1nd3G6mJAR3Q&riu=http%3a%2f%2fassets.stickpng.com%2fimages%2f5af948516554160a79bea0ef.png&ehk=ste1JV4ieZG1CX1iZP8YFlT6y6gqCWilFcFvaKPcmfw%3d&risl=&pid=ImgRaw&r=0",
      "https://th.bing.com/th/id/R.8b9fbd04fbeec1bc832d5d3e793a3916?rik=YV6QPha2pAjDbg&pid=ImgRaw&r=0",
      "https://th.bing.com/th/id/OIP.3oap48WcS7QGT14LOkNJNQHaHa?rs=1&pid=ImgDetMain"
    ],
    perfumeColor: Color(0xFFFFBF80),
  ),
];


// Summer Perfumes
List<Perfume> summerPerfumes = [
  Perfume(
    perfumeName: "Jean Paul Gaultier - Le Beau",
    perfumeImage: "assets/images/le_beau.png",
    perfumeReleaseYear: "2019",
    perfumeCategory: "Summer",
    perfumeDuration: "Moderate",
    perfumeRating: 4.6,
    perfumeSinopsis: "A fresh and fruity fragrance with a touch of coconut, ideal for summer days.",
    perfumeNotes: ["Coconut", "Bergamot", "Tonka Bean", "Vetiver"],
    perfumeNoteImages: [
      "https://th.bing.com/th/id/OIP.TYq1mYZTsRCTioIR65Fb9gHaHa?rs=1&pid=ImgDetMain",
      "https://static.vecteezy.com/system/resources/previews/024/491/376/non_2x/fresh-bergamot-with-green-leaves-ai-generated-free-png.png",
      "https://th.bing.com/th/id/OIP.F6e18fnnS6n3gn_rX59GdwHaHa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.TIZaCLcbVKdmyWgbaBpsSgHaFg?rs=1&pid=ImgDetMain"
    ],
    perfumeColor: Color(0xFF00BFFF),
  ),
  Perfume(
    perfumeName: "Tom Ford - Neroli Portofino",
    perfumeImage: "assets/images/neroli_portofino.png",
    perfumeReleaseYear: "2011",
    perfumeCategory: "Summer",
    perfumeDuration: "Moderate",
    perfumeRating: 4.7,
    perfumeSinopsis: "A fresh, citrusy, and aromatic fragrance inspired by the Mediterranean, perfect for hot summer days.",
    perfumeNotes: ["Neroli", "Bergamot", "Orange Blossom", "Amber", "Angelica"],
    perfumeNoteImages: [
      "https://th.bing.com/th/id/OIP.lTZseOTxRNQ0suVSEN_05wHaHa?rs=1&pid=ImgDetMain",
      "https://static.vecteezy.com/system/resources/previews/024/491/376/non_2x/fresh-bergamot-with-green-leaves-ai-generated-free-png.png",
      "https://th.bing.com/th/id/OIP.mKIYVg6g8YwM_Iy9lkp9WwHaHa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/R.b887a02d6388440a0f55759203f260fc?rik=dn1nd3G6mJAR3Q&riu=http%3a%2f%2fassets.stickpng.com%2fimages%2f5af948516554160a79bea0ef.png&ehk=ste1JV4ieZG1CX1iZP8YFlT6y6gqCWilFcFvaKPcmfw%3d&risl=&pid=ImgRaw&r=0",
      "https://th.bing.com/th/id/R.25148375d04cbf4ea9deea49b9e5eb23?rik=lgg5KSlNwnUFHA&pid=ImgRaw&r=0"
    ],
    perfumeColor: Color(0xFFADD8E6),
  ),
  Perfume(
    perfumeName: "Dior - Sauvage Eau de Toilette",
    perfumeImage: "assets/images/sauvage_edt.png",
    perfumeReleaseYear: "2015",
    perfumeCategory: "Summer",
    perfumeDuration: "Moderate",
    perfumeRating: 4.8,
    perfumeSinopsis: "A fresh and spicy fragrance with a clean and crisp feel, ideal for summer.",
    perfumeNotes: ["Calabrian Bergamot", "Pepper", "Ambroxan", "Geranium", "Lavender"],
    perfumeNoteImages: [
      "https://th.bing.com/th/id/OIP.4S53HXdprgRw_-sFN1GnQgHaHa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.nLQDOm62XNQgDMpeSX50nwHaGa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.vJQSVaTVNnuTvpNKeRvoZAHaEp?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.RSTKswY7s090--zw6KxzTQHaF7?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/R.f0df074af58e5833277a94e633b75913?rik=pPlslPzN73G4Lw&pid=ImgRaw&r=0"
    ],
    perfumeColor: Color(0xFFFFFFFF),
  ),
  Perfume(
    perfumeName: "Creed - Aventus Cologne",
    perfumeImage: "assets/images/aventus_cologne.png",
    perfumeReleaseYear: "2018",
    perfumeCategory: "Summer",
    perfumeDuration: "Moderate",
    perfumeRating: 4.7,
    perfumeSinopsis: "A fresher, lighter version of the original Aventus, perfect for warm summer days.",
    perfumeNotes: ["Mandarin", "Ginger", "Patchouli", "Vetiver", "Sandalwood"],
    perfumeNoteImages: [
      "https://th.bing.com/th/id/OIP.yeqBEwfDErIaQW9TogGBagHaF7?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.Q_yEJhjR0JACCy5914t0SAHaE8?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.ncqsyfs-mv6cQ5Rblz_ZzAHaHR?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.C_pmf8A34k8T9W_5uubcYwHaIV?rs=1&pid=ImgDetMain",
      "https://static.vecteezy.com/system/resources/previews/035/063/474/large_2x/ai-generated-sandalwood-sticks-free-png.png"
    ],
    perfumeColor: Color(0xFF90EE90),
  ),
  Perfume(
    perfumeName: "Giorgio Armani - Acqua di Giò Profondo",
    perfumeImage: "assets/images/acqua_di_gio_profondo.png",
    perfumeReleaseYear: "2020",
    perfumeCategory: "Summer",
    perfumeDuration: "Moderate",
    perfumeRating: 4.8,
    perfumeSinopsis: "A fresh, aquatic fragrance with aromatic and marine notes, perfect for summer days.",
    perfumeNotes: ["Sea Notes", "Aquozone", "Bergamot", "Rosemary", "Cypress"],
    perfumeNoteImages: [
      "https://th.bing.com/th/id/OIP.0xGsVktyw1ALIumGOcRF7AHaHa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.fCIbBbYd6KMlxu5X-sQ6AQHaHa?rs=1&pid=ImgDetMain",
      "https://static.vecteezy.com/system/resources/previews/024/491/376/non_2x/fresh-bergamot-with-green-leaves-ai-generated-free-png.png",
      "https://th.bing.com/th/id/OIP.Bvo95Ps2eebwSearV7PdrwHaF7?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.8rj6nHw3TEGgqqUVenc13wHaIx?rs=1&pid=ImgDetMain"
      
    ],
    perfumeColor: Color(0xFF003366),
  ),
  Perfume(
    perfumeName: "Jean Paul Gaultier - Le Male In The Navy",
    perfumeImage: "assets/images/le_male_in_the_navy.png",
    perfumeReleaseYear: "2018",
    perfumeCategory: "Summer",
    perfumeDuration: "Moderate",
    perfumeRating: 4.5,
    perfumeSinopsis: "A fresh, aquatic version of the classic Le Male, perfect for summer.",
    perfumeNotes: ["Mint", "Sea Notes", "Vanilla", "Ambergris"],
    perfumeNoteImages: [
      "https://th.bing.com/th/id/OIP.FQJdSCjUp4Cm-dj6PWIVzAHaHa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/OIP.0xGsVktyw1ALIumGOcRF7AHaHa?rs=1&pid=ImgDetMain",
      "https://www.pngmart.com/files/3/Vanilla-Bean-PNG-Picture.png",
      "https://th.bing.com/th/id/OIP.YqvmD6cq7tN0kptTTxcJwgAAAA?rs=1&pid=ImgDetMain"
    ],
    perfumeColor: Color(003366 ),
  ),
];

