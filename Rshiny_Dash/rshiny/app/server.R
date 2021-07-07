shinyServer(function(input, output, session) {  
  output$main <- renderUI({
    fluidPage(
      tags$head(tags$script(src="script.js")),
      tags$head(tags$link(rel = "stylesheet", 
                          type = "text/css", 
                          href = "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css")),
      tags$head(tags$link(rel = "stylesheet", 
                          type = "text/css", 
                          href = "style.css")),  
      fluidRow(
        column(12,
               HTML(paste0('<div class="header">
                            <div class="header-left">
                              <a href="../" class="menu dash_1">Dash1</a>
                              <a href="../dash2" class="menu dash_1">Dash2</a>
                              <a href="?shiny1" class="menu rshiny_1">Rshiny1</a>
                              <a href="?shiny2" class="menu rshiny_2">Rshiny2</a>
                            </div>
                          </div>'))
        )
      ),
      uiOutput("page")         
    )
  })
  
  values = reactiveValues(
    init = 0,
    trigger_render = NULL
  )

  #### Switch Pages ============================================================
  validFiles = c("page_shiny1.R",
                 "page_shiny2.R")
  fname = isolate(session$clientData$url_search)
  fname = sub("\\&.*", "", fname)
  all_fnames = paste0("?", sub("\\..*", "", sub("^[^_]*_", "", validFiles)))
  if(nchar(fname) == 0) { fname = "?shiny1" }
  if(!fname %in% all_fnames){
    fname = "?invalid"
  }

  # avoid page to gray out
  observe({
    invalidateLater(1000, session)
  })

  observe({
    removeModal(session = session)
    fname = paste0("page_", substr(fname, 2, nchar(fname)), ".R")
    source(file.path("pages", fname), local = TRUE)
  })
})
  
