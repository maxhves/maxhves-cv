#import "templates/resume.template.typ": *

//region Personal details

#show: resume.with(
  email: "max@hvesserlewis.com",
  phoneNumber: "+47 901 11 845",
  author: "Maximilian Hvesser-Lewis",
  website: "www.hvesserlewis.com",
  github: "maxhves",
  linkedin: "maxhves"
)

//endregion

//region Employment

= Employment

#employment(
  title: "Full Stack Developer",
  companyName: "Hvesser-Lewis Consulting",
  startDate: "Jan 2024",
  endDate: "Present",
  location: "Bangkok, Thailand",
  description: [
    In this role, I provide technical expertise to clients on a freelance and consulting basis, working on a variety of full-stack and mobile applications. I develop end-to-end solutions tailored to the unique needs of diverse clients and businesses.

    In addition to technical development, I manage all projects from start to finish, ensuring that deadlines are met while delivering high-quality work. I consistently provide accurate updates throughout each project’s lifecycle, maintaining clear communication and accountability.
  ],
)

#employment(
  title: "Senior Software Engineer",
  companyName: "Vipps MobilePay",
  startDate: "Jun 2021",
  endDate: "Dec 2023",
  location: "Oslo, Norway & Vancouver, Canada",
  description: [
    - Led a financial service project, developing a credit product for Android users and managing the entire tech stack.
    - Transitioned the core payment flow UI from XML to Jetpack Compose, modernizing and boosting performance.
    - Improved the payments flow architecture by creating standardized helper classes.
    - Maintained a rigorous release schedule, handling the end-to-end release process, monitoring crash reports, and addressing issues.
  ]
)

#employment(
  title: "Senior Android Developer",
  companyName: "FINN.no",
  startDate: "Jun 2019",
  endDate: "May 2021",
  location: "Oslo, Norway",
  description: [
    - Developed an open-source image gallery library, integrated into the production app and available on my Github.
    - Led a project to add a notification system to the app. Created a new feature module for networking, push notifications, local persistence, business logic, and UI.
    - Designed and implemented key app components, modernizing the app's appearance and increasing user engagement and ratings.
  ]
)

#employment(
  title: "Lead Android Developer",
  companyName: "DTT",
  startDate: "Aug 2017",
  endDate: "May 2019",
  location: "Amsterdam, the Netherlands",
  description: [
    - Guided and mentored a team of developers, overseeing the development of high-quality, cost-effective Android applications from inception to delivery. 
    - Architected Android applications for clients.
    - Created precise project quotes and reports based on app requirements and design, meeting project duration and cost demands.
  ]
)

#employment(
  title: "Software Engineer",
  companyName: "DTT",
  startDate: "Aug 2016",
  endDate: "Jul 2017",
  location: "Amsterdam, the Netherlands",
  description: [
    - Developed native Android apps for various clients as a consultant. 
    - Developed new features for existing applications and conducted assessments of code quality in established codebases.
    - Showcased my expertise in Android development with the use of networking, database storage and persistence, push notifications, interface design, background services, concurrency management, and connectivity.
  ]
)

//endregion

//region Education

= Education

#education(
  location: "Plymouth, England",
  institution: "University of Plymouth",
  startDate: "Sep 2014",
  endDate: "May 2017",
  degree: [
    - BSc (Hons) Computer Science
  ]
)

#education(
  location: "Stoke-on-Trent, England",
  institution: "Staffordshire University",
  startDate: "Sep 2011",
  endDate: "May 2014",
  degree: [
    - BSc (Hons) Psychology
  ]
)

//endregion

//region Projects

= Projects

#project(
  name: "Temperature check",
  url: [
    https://www.temperature-check.com
  ],
  description: [
    - Created a full stack web application using NextJS with Typescript.
    - Utilized TailwindCSS and TailwindUI to create an intuitive user interface.
    - Developed a platform to interpret temperature readings across multiple conditional variables.
  ]
)

#project(
  name: "Crime Connoisseur",
  url: [
    https://www.crimeconnoisseur.com
  ],
  description: [
    - Created a full stack web application using NextJS, and Supabase with Typescript and SQL.
    - Utilized TailwindCSS and TailwindUI to create an intuitive user interface.
    - Utilized TanStack Query for state management.
    - Developed a podcast client and platform, users can discover, listen to and review podcast episodes.
  ]
)

#project(
  name: "Swap",
  url: [
    https://github.com/maxhves/swapx-android\
    https://github.com/maxhves/swap-ios
  ],
  description: [
    - Created a native Android and native iOS mobile application with Kotlin and Swift.
    - Utilized networking to sync with the latest exchange rate data via an API, subsequently storing the rates locally for quick, and offline conversions.
    - Utilized Compose and SwiftUI for rapid user interface development.
    - Deployed and released to the App Store and Play Store.
    - Developed a currency exchange application, useful for understanding the exchange rate between two user-selected currencies.
  ]
)

//endegion

//region Technical skills

= Technical skills

#technicalSkill(
  domain: "Mobile Developement",
  skills: [
    - Languages: Kotlin, Java, Swift, Objective-C.
    - Libraries: Compose, Room, Coroutines, Retrofit, Hilt, Glide, Material.
    - Database: SQLite, Supabase, Firebase. 
  ]
)

#technicalSkill(
  domain: "Web Development",
  skills: [
    - Languages: JavaScript, Typescript.
    - Frameworks: NextJS, TailwindCSS.
    - Libraries: ReactJS, TanStack Query.
    - Database: Supabase, Firebase, Postgres.
  ]
)

#technicalSkill(
  domain: "Interface Design",
  skills: [
    - Languages: LaTeX, Typst.
    - Tools: Figma, Adobe Photoshop, Sketch.
  ]
)

//endregion