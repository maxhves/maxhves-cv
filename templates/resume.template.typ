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
    font: "Roboto Serif",
    size: 10pt,
    weight: 400,
    fill: rgb("#0C0A09"),
    lang: "en"
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
    #pad(top: 0pt, bottom: -8pt, text(weight: 500, size: 11pt, font: "Lora", [#it.body]))
    #line(start: (-8pt, 0pt), end: (540pt, 0pt), stroke: 1pt + rgb("#D6D3D1"))
  ]

  // Personal details
  grid(
    columns: (1fr, 2fr, 1fr),
    align: center,
    // Email and phone number
    align(left)[
      #stack(
        spacing: 8pt,
        text(fill: rgb("#44403C"), size: 8pt, [#email]),
        text(fill: rgb("#44403C"), size: 8pt, [#phoneNumber])
      )
    ],
    // Name and website
    align(center)[
      #stack(
        spacing: 8pt,
        text(
          weight: 500, 
          size: 18pt,
          font: "Lora",
          [#smallcaps(author)]
        ),
        text(fill: rgb("#44403C"), size: 8pt, [#website])
      )
    ],
    // Github and linkedin
    align(right)[
      #stack(
        spacing: 8pt,
        text(fill: rgb("#44403C"), size: 8pt, [Github: #strong(delta: 100, [#github])]),
        text(fill: rgb("#44403C"), size: 8pt, [Linkedin: #strong(delta: 100, [#linkedin])])
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
          #text(fill: rgb("#292524"), weight: 500, [#title])
        ],
        align(center)[
          #stack(
            spacing: 8pt,
            text(fill: rgb("#292524"), weight: 500, [#companyName]),
            text(fill: rgb("#44403C"), size: 8pt, [#location])
          )
        ],
        align(right)[
          #text(fill: rgb("#292524"), weight: 500, [#startDate - #endDate])
        ]
      ),
      pad(
        left: 4pt, 
        par(
          leading: 8pt, 
          text(fill: rgb("#57534E"), [#description])
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
          #text(fill: rgb("#292524"), weight: 500, [#location])
        ],
        align(center)[
          #text(fill: rgb("#292524"), weight: 500, [#institution])
        ],
        align(right)[
          #text(fill: rgb("#292524"), weight: 500, [#startDate - #endDate])
        ]
      ),
      pad(
        left: 4pt,
        par(
          leading: 8pt,
          text(fill: rgb("#57534E"), [#degree])
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
      text(fill: rgb("#292524"), weight: 500, [#name]),
      text(fill: rgb("#78716C"), size: 8pt, [#emph(url)]),
      pad(
        top: 4pt,
        left: 4pt,
        par(
          leading: 8pt,
          text(fill: rgb("#57534E"), [#description])
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
      text(fill: rgb("#292524"), weight: 500, [#domain]),
      pad(
        left: 4pt,
        par(
          leading: 8pt,
          text(fill: rgb("#57534E"), [#skills])
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