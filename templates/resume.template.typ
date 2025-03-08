//region Constants

// Language
#let language = "en"

// Font families
#let family-primary = "Inter"
#let family-secondary = "Source Serif Pro"

// Colors
#let zinc-800 = rgb("#27272A")
#let zinc-700 = rgb("#3F3F46")
#let zinc-600 = rgb("#52525B")
#let zinc-300 = rgb("#D4D4D8")

// Text Size
#let text-extralarge = 20pt
#let text-large = 12pt
#let text-base = 10pt

// Font Weight
#let font-semibold = 600
#let font-medium = 500
#let font-normal = 400

//endregion

//region Text

#let nameText(body) = {
  text(weight: font-semibold, fill: zinc-800, size: text-extralarge, font: family-secondary, [#body])
}

#let strongText(body) = {
  text(weight: font-medium, fill: zinc-800, [#body])
}

#let lightText(body) = {
  text(fill: zinc-600, [#body])
}

#let sectionHeading(body) = {
  text(fill: zinc-800, size: text-large, font: family-secondary, weight: font-semibold, [#body])
}

//endregion

//region Document and Header

#let resume(
  name: "",
  emailAddress: "",
  website: "",
  linkedIn: "",
  github: "",
  body
) = {
  // Metadata
  set document(author: name, title: name)

  // Settings
  set text(
    font: family-primary,
    size: text-base,
    weight: font-normal,
    fill: zinc-700,
    lang: language,
  )

  // Boundaries
  set page(
    margin: 24pt
  )

  // Section Headings
  show heading: it => block(above: 24pt, below: 12pt)[
    #stack(
      spacing: 10pt,
      sectionHeading([#it]),
      line(length: 100%, stroke: 0.5pt + zinc-300)
    )
  ]

  // Header
  stack(
    spacing: 12pt,
    align(center)[
      #nameText[#name]
    ],
    align(center)[
      #link("mailto: " + emailAddress)[#emailAddress] | #link("https://" + website)[#website] | #link("https://" + linkedIn)[#linkedIn] | #link("https://" + github)[#github]
    ]
  )

  body
}

//endregion

//region Skills

#let skill(
  label: "",
  detail: ""
) = {
  text([#strongText([#label:]) #detail])
}

//endregion

//region Experience

#let experience(
  role: "",
  company: "",
  location: "",
  startDate: "",
  endDate: "",
  accomplishments: ()
) = {
  stack(
    spacing: 12pt,
    [#strongText([#role,]) #company - #location #h(1fr) #startDate - #endDate],
    lightText([#list(spacing: 10pt, ..accomplishments)])
  )
}

//endregion

//region Projects

#let project(
  name: "",
  projectLink: "",
  features: ()
) = {
  stack(
    spacing: 12pt,
    [#strongText([#name]) #h(1fr) #link("https://" + projectLink)[#projectLink]],
    lightText([#list(spacing: 10pt, ..features)])
  )
}

//endregion

//region Education

#let education(
  label: "",
  detail: "",
  completionDate: ""
) = {
  text([#strongText([#label -]) #detail #h(1fr) #completionDate])
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