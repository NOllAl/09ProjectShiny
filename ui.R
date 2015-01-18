library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Is your salary fair?"),
        sidebarPanel('This little app lets you enter some personal data and predicts what you \'should\' earn', br(), br(),
                     'So, please enter the following data:',
                     sliderInput('age','Age:',30,min=16,max=70,step=1),
                     selectInput('education',label="Education",choices=c("No High School"="1. < HS Grad", "High School Grad"="2. HS Grad",
                                                                         "Some College Education"="3. Some College", "College Grad"="4. College Grad",
                                                                         "Advanced Degree"= "5. Advanced Degree")),
                     selectInput('jobclass',label="Jobclass",choices=c("Industrial"="1. Industrial","Information"="2. Information")),
                     selectInput('health',label="Health",choices=c("Very Good"="2. >=Very Good","Good or worse"="1. <=Good")),
                     selectInput('health_ins','Health Insurance',choices=c("Yes, I have health insurance"="1. Yes", "No, I don't have health insurance"="2. No"))
                     ),
        mainPanel('We thus predict that you salary, in USD, per year should roughly be)',
                  verbatimTextOutput("owage")
                )
        )
        )