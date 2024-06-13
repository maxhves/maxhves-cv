//region Constants

// Language
#let resume-language = "en"

// Font families
#let family-primary = "Roboto Serif"
#let family-seconday = "Playfair Display"

// Colors
#let stone-950 = rgb("#0c0a09")
#let stone-800 = rgb("#292524")
#let stone-700 = rgb("#44403c")
#let stone-600 = rgb("#57534e")
#let stone-500 = rgb("#78716c")
#let stone-300 = rgb("#d6d3d1")

// Text size
#let text-large = 18pt
#let text-big = 12pt
#let text-base = 10pt
#let text-small = 8pt

// Font weight
#let font-semibold = 600
#let font-medium = 500
#let font-normal = 400

//endregion

//region Text

#let authortext(body) = {
  text(weight: font-medium, size: text-large, font: family-seconday, [#smallcaps(body)])
}

#let smalltext(body) = {
  text(fill: stone-700, text-small, [#body])
}

#let sectionheading(body) = {
  text(fill: stone-950, size: text-big, font: family-seconday, weight: font-semibold, [#body])
}

#let itemheading(body) = {
  text(fill: stone-800, size: text-base, weight: font-medium, [#body])
}

#let itemsubheading(body) = {
  text(fill: stone-500, size: text-small, [#body])
}

#let descriptiontext(body) = {
  text(fill: stone-600, size: text-base, hyphenate: false, [#body])
}

//endregion

//region Resume

#let resume(
  email: "",
  phoneNumber: "",
  author: "",
  website: "",
  github: "",
  linkedin: "",
  body
) = {

  // Document metadata
  set document(author: author, title: author)

  // Document settings
  set text(
    font: family-primary,
    size: text-base,
    weight: font-normal,
    fill: stone-950,
    lang: resume-language
  )

  // Page setup
  set page(
    margin: (
      top: 32pt,
      bottom: 32pt,
      left: 32pt,
      right: 32pt
    ),
  )
  
  // Section heading
  show heading: it => [
    #pad(
      top: 0pt, 
      bottom: -8pt, 
      sectionheading([#it.body])
    )
    #line(
      start: (-8pt, 0pt), 
      end: (540pt, 0pt), 
      stroke: 1pt + stone-300
    )
  ]

  // Personal details
  grid(
    columns: (1fr, 2fr, 1fr),
    align: center,
    // Email and phone number
    align(left)[
      #stack(
        spacing: 8pt,
        smalltext([#email]),
        smalltext([#phoneNumber])
      )
    ],
    // Name and website
    align(center)[
      #stack(
        spacing: 8pt,
        authortext([#author]),
        itemsubheading([#website])
      )
    ],
    // Github and linkedin
    align(right)[
      #stack(
        spacing: 8pt,
        smalltext([Github: #strong(delta: 100, [#github])]),
        smalltext([Linkedin: #strong(delta: 100, [#linkedin])])
      )
    ]
  )

  // Vertical separation space
  v(16pt)

  // Main content
  set par(justify: true)

  body
}

//endregion

//region Employment

#let employment(
  title: "",
  companyName: "",
  startDate: "",
  endDate: "",
  location: "",
  description: (),
) = {
  pad(
    top: 4pt,
    bottom: 4pt,
    stack(
      spacing: 16pt,
      grid(
        columns: (1fr, 1fr, 1fr),
        align: center,
        align(left)[
          #itemheading([#title])
        ],
        align(center)[
          #stack(
            spacing: 8pt,
            itemheading([#companyName]),
            itemsubheading([#location])
          )
        ],
        align(right)[
          #itemheading([#startDate - #endDate])
        ]
      ),
      pad(
        left: 4pt, 
        par(
          leading: 8pt, 
          descriptiontext([#description])
        )
      )
    )
  )
}

//endregion

//region Education

#let education(
  location: "",
  institution: "",
  startDate: "",
  endDate: "",
  degree: "",
) = {
  pad(
    top: 4pt,
    bottom: 4pt,
    stack(
      spacing: 16pt,
      grid(
        columns: (1fr, 1fr, 1fr),
        align: center,
        align(left)[
          #itemheading([#location])
        ],
        align(center)[
          #itemheading([#institution])
        ],
        align(right)[
          #itemheading([#startDate - #endDate])
        ]
      ),
      pad(
        left: 4pt,
        par(
          leading: 8pt,
          descriptiontext([#degree])
        )
      )
    )
  )
}

//endregion

//region Projects

#let project(
  name: "",
  url: [],
  description: []
) = {
  pad(
    top: 4pt,
    bottom: 4pt,
    stack(
      spacing: 8pt,
      itemheading([#name]),
      itemsubheading([#emph(url)]),
      pad(
        top: 4pt,
        left: 4pt,
        par(
          leading: 8pt,
          descriptiontext([#description])
        )
      )
    )
  )
}

//endregion

//region Technical skills

#let technicalSkill(
  domain: "",
  skills: []
) = {
  pad(
    top: 4pt,
    bottom: 4pt,
    stack(
      spacing: 16pt,
      itemheading([#domain]),
      pad(
        left: 4pt,
        par(
          leading: 8pt,
          descriptiontext([#skills])
        )
      )
    )
  )
}

//endregion

//region Helpers

/*
  Allows hiding or showing full resume dynamically using global variable. This can
  be helpful for creating a single document that can be rendered differently depending on
  the desired output, for cases where you'd like to simultaneously render both a full copy
  and a single-page instance of only the most important or vital information.
*/
#let hide(should-hide, content) = {
  if not should-hide {
    content
  }
}

//endregion