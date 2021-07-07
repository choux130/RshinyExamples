output$page <- renderUI({
  tagList(              
    fluidRow(
      column(5,
             HTML("<h2>404 Shiny Page Not Found Error:</h2><p>That URL doesn't exist. Use the",
                  "menu above to navigate to the page you were looking for.</p>")
      )
    )
  )
})