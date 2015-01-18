library(shiny)
library(ggplot2)
library(caret)
library(ISLR)

data(Wage)
fit <- train(wage ~ age + education + jobclass + health + health_ins +age*education, data=Wage,method="lm")

shinyServer(
        function(input,output){
                output$oage <- renderPrint({input$age})
                output$owage <- renderPrint({
                        newdata <- data.frame("age"=input$age,"education"=input$education,"jobclass"=input$jobclass,"health"=input$health,"health_ins"=input$health_ins);
                        round(predict(fit,newdata),1)
                })
         }
)