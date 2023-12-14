#let letter(
  year: none,
  dates: none,
  venue: none,
  sender_name: none,
  sender_street: none,
  sender_city: none,
  sender_country: none,
  sender_postcode: none,
  sender_phone: none,
  sender_email: none,
  receiver_name: none,
) = [

#set page(
  paper: "a4",
  margin: (top: 8cm, bottom: 2.5cm, left: 2.5cm, right: 2cm),
  header: [
    #grid(
      columns: (5cm, 5cm),
      gutter: 6cm,
        grid(
        columns: (4cm, auto),
        gutter: 3pt,
        image("juliacon.svg", width: 4cm),
        text(font: "Futura", align(horizon + left)[#year])
      ),
      text(font: "Futura", align(horizon + right)[Conference Invitation])
    )
    #align(left)[
      #text(size: 12pt, style: "italic")[the largest annual conference organized around\ the Julia programming language.] 
    ]
  ]
)

#let url = "https://juliacon.org/" + str(year)
#set text(size: 12pt)
Dear #receiver_name,

On behalf of the Organizing Committee of the #strong[JuliaCon #year], I am pleased to invite you to participate in the conference scheduled from #strong(dates) at the #strong(venue).

Updated information about the conference can be found at #link(url, text(font: "Monaco", size: 9pt, url)).

#strong[JuliaCon #year] is the largest annual conference organized around the Julia programming language. Julia is a free and open-source language with over 10 million downloads, and is used in areas as diverse as machine learning, finance, engineering, and spaceflight. JuliaCon brings together users, developers, and researchers to share their ideas and experiences and learn about the latest developments.

To facilitate your attendance, we are pleased to provide this official invitation letter to support your visa application process. #strong[JuliaCon #year] has gained significant recognition in both scientific and industrial communities, and we are confident that your participation will further enhance its reputation.

We are looking forward to seeing you in #venue.

\
\
\
\
\
\
\
\
\
\

#pad(right: 2cm)[
  #align(right)[
    #block(align(horizon + left)[
      [signature]

      #sender_name

      #par(
        leading: 0.3em,
      )[
        tel: #sender_phone\
        email: #sender_email\
        #sender_street\
        #sender_city\
        #sender_country, #sender_postcode
      ]
    ])
  ]
]

]

#letter(
  year: 2024,
  dates: "July 9th-12th, 2024",
  venue: [Philips Stadion, Eindhoven, Netherlands],
  sender_name: "[Sender Name]",
  sender_street: "123 Main Street",
  sender_city: "Anytown",
  sender_country: "USA",
  sender_postcode: "12345",
  sender_phone: "+1 234 567 890",
  sender_email: "123@abc.com",
  receiver_name: "[Receiver Name]",
)
