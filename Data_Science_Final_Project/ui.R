#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
# Define UI for application that realizes single word prediction
shinyUI(fluidPage(
  
  # Application title
  titlePanel("SINGLE WORD PREDICTOR"),
  
  # Application subtitle
  fluidRow(
    column(12,
           h4("based on n-gram model for News articles or Twitter text data")
    )
  ),
  
  tags$hr(style="border-color: black;"),
  sidebarPanel(
    h3("Introducton"),
    p("This application anticipates the following potential word in a given phrase or sentence. To utilize it, 
      just enter word(s) in the text field on the screen, and up to 4 potential next words will be presented 
      in buttons beneath the field. Click on your intended match to incorporate it into the text field."),
    p("The application uses natural language processing, namely, n-grams, Markov model, and Katz's back-off model to perform text prediction.")
  ),
  mainPanel(
    h3("Input"),
    textInput("inputTxt", "Type in word(s) below:", width = "90%"),
    uiOutput("words"),
    br(),
    wellPanel(
      h4("Details"),
      HTML("<p> Github Repository <a href='https://github.com/MrJimmyJones/Captsone_Project/tree/main/final_project' target='_blank'>https://github.com/MrJimmyJones/Captsone_Project/tree/main/final_project</a></p>"),
      HTML("<p> Slide Deck Presentation  <a href='https://rpubs.com/MrJimmyJones/1144199' target='_blank'>https://rpubs.com/MrJimmyJones/1144199</a></p>"),
      h4("Author:"),
      p("Christian Martin")
    )
    
  )
))