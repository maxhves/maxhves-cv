#import "templates/resume.template.typ": *

#show: resume.with(
  name: "Maximilian Hvesser-Lewis",
  emailAddress: "max@hvesserlewis.com",
  website: "hvesserlewis.com",
  linkedIn: "linkedin.com/in/maxhves",
  github: "github.com/maxhves"
)

//region Skills

= Skills

#stack(
  spacing: 10pt,
  skill(
    label: "Languages", 
    detail: "English (native), Norwegian (B2, professional)"
  ),
  skill(
    label: "Programming", 
    detail: "Kotlin, Java, Swift, JavaScript, TypeScript, Python, Data Structures and Algorithms."
  ),
  skill(
    label: "Tools",
    detail: "React, Next.js, Compose, Coroutines, MAD, SQL, Postgres, Supabase, PyTorch, TensorFlow, Figma, Git."
  )
)

//endregion

//region Experience

= Experience

#stack(
  spacing: 16pt,
  experience(
    role: "Full Stack Engineer",
    company: "Hvesser-Lewis Consulting",
    location: "Oslo, Norway",
    startDate: "Jan 2024",
    endDate: "Present",
    accomplishments: (
      "Developed 6 full-stack web applications within 1 year, specifically solving personally meaningful problems.", 
      "Managed the entire end-to-end lifecycle, including UI/UX, frontend, backend infrastructure, and cloud hosting.", 
      "Achieved an average of 100 MAU across all products, demonstrating consistent user engagement and viability.",
      "Drove product success through strategic marketing and optimization, iterating based on application analytics."
    )
  ),
  experience(
    role: "Senior Android Engineer",
    company: "Vipps MobilePay",
    location: "Oslo, Norway",
    startDate: "Jun 2021",
    endDate: "Dec 2023",
    accomplishments: (
      "Led the Android development of a new credit service, collaborating closely with product and development teams.", 
      "Refactored the core payment flow UI from XML to Compose, leading to a 10% decrease in user fall-off rates.", 
      "Developed standardized payment handler classes which increased developer efficiency in integrating payments.",
    )
  ),
  experience(
    role: "Senior Android Engineer",
    company: "FINN.no",
    location: "Oslo, Norway",
    startDate: "Jun 2019",
    endDate: "May 2021",
    accomplishments: (
      "Developed an open-source image gallery library, driving a 2% increase in user engagement in the product page.", 
      "Led the Android development of an in-app notification system, boosting effective user reach by 20%.", 
      "Created a standardized set of dialog classes making in-app campaign launches more effective and efficient.",
      "Modernized core UI components like the Navigation and Bottom Tab bars, improving maintainability for the future."
    )
  ),
  experience(
    role: "Lead Android Engineer",
    company: "DTT",
    location: "Amsterdam, the Netherlands",
    startDate: "Aug 2017",
    endDate: "May 2019",
    accomplishments: (
      "Managed and mentored a team of 8 Android developers, responsible for project resource planning and hiring.", 
      "Led coding quality initiatives, setting guidelines and standards that improved project setup efficiency by 50%.", 
      "Created proposals for new and existing clients, accurately estimating the man-hour cost for prospective projects."
    )
  ),
)

//endregion

//region Projects

= Projects

#stack(
  spacing: 16pt,
  project(
    name: "Find the Menu",
    projectLink: "findthe.menu",
    features: (
      "Developed a platform enabling restaurants to create a single-page mini-website, to easily showcase their menus.",
      "Built as a full-stack web application using Next.js, TypeScript, TailwindCSS, Kotlin, Ktor, Supabase and AWS.",
      "Deployed effective SEO and pSEO strategies leading to an increase in site exposure and a steady rise in DAUs."
    )
  ),
  project(
    name: "Swap",
    projectLink: "github.com/maxhves/swapx-android",
    features: (
      "Developed a native Android app using Kotlin and Compose, adhering to Modern Android Development standards.",
      "Integrated a real-time currency exchange API, ensuring accurate and up-to-date conversion exchanges for users.",
      "Released as an open-source repository and on the Android App Store, gaining an increasing number of MAUs."
    )
  )
)

//endregion

//region Education

= Education

#stack(
  spacing: 10pt,
  education(
    label: "University of Plymouth", 
    detail: "BSc(Hons) Computer Science",
    completionDate: "May 2017"
  ),
  education(
    label: "University of Staffordshire", 
    detail: "BSc(Hons) Psychology",
    completionDate: "May 2014"
  )
)

//endregion