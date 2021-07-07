output$page <- renderUI({
  tagList(              
    fluidRow(
      column(5,
             HTML("<h2>This is Shiny Page 2</h2>")
      )
    ), 
    fluidRow(
      column(3, 
             sliderInput("bins",
                         "Number of bins:",
                         min = 1,
                         max = 50,
                         value = 30)),
      column(9, 
             plotOutput("distPlot"))
    )
  )
})

output$distPlot <- renderPlot({
  # generate bins based on input$bins from ui.R
  x    <- faithful[, 2]
  bins <- seq(min(x), max(x), length.out = input$bins + 1)
  
  # draw the histogram with the specified number of bins
  hist(x, breaks = bins, col = 'darkgray', border = 'white')
})
