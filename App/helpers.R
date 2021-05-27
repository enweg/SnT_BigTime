##### Theming
colours <- c(
  "dark-blue"= rgb(0, 28, 61, maxColorValue = 255),
  "light-blue"= rgb(0,162,219, maxColorValue = 255),
  "red"= rgb(174,11,18, maxColorValue = 255),
  "orange-red"= rgb(232,78,16, maxColorValue = 255),
  "orange"= rgb(243,148,37, maxColorValue = 255)
)
um_cols <- function(...) {
  cols <- c(...)
  if (is.null(cols)){
    return(colours)
  }
  colours[cols]
}
colour_palettes <- list(
  `main` = um_cols(),
  `cold` = um_cols("dark-blue", "ligth-blue"),
  `warm` = um_cols("orange", "orange-red", "red")
)
um_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- colour_palettes[[palette]]
  if (reverse) pal <- rev(pal)
  colorRampPalette(pal, ...)
}
scale_color_um <- function(palette = "main", discrete = TRUE,
                           reverse = FALSE, ...) {
  pal <- um_pal(palette = palette, reverse = reverse, ...)
  if (discrete) {
    discrete_scale("colour", paste0("um_", palette), palette = pal, ...)
  }
  else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}
scale_fill_um <- function(palette = "main", discrete = TRUE, 
                          reverse = FALSE, ...) {
  pal <- um_pal(palette = palette, reverse = reverse, ...)
  if (discrete){
    discrete_scale("fill", paste0("um_", palette), palette = pal, ...)
  }
  else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}


theme_SnT <- function(){
  font <- "sans"
  font.size <- 15
  update_geom_defaults("line", list(size = 1.2))
  
  theme_bw() %+replace%
    theme(
      panel.grid.major = element_blank(),    #strip major gridlines
      panel.grid.minor = element_blank(),    #strip minor gridlines
      
      plot.title = element_text(             #title
        family = font,            #set font family
        size = 1.5*font.size,                #set font size
        face = 'bold',            #bold typeface
        hjust = 0.5,                #left align
        vjust = 2),               #raise slightly
      plot.subtitle = element_text(          #subtitle
        family = font,            #font family
        size = 1.4*font.size),               #font size
      plot.caption = element_text(           #caption
        family = font,            #font family
        size = 0.7*font.size,                 #font size
        hjust = 1),               #right align
      
      
      axis.title = element_text(             #axis titles
        family = font,            #font family
        size = font.size),               #font size
      axis.text = element_text(              #axis text
        family = font,            #axis famuly
        size = font.size),                #font size
      axis.text.x = element_text(            #margin for axis text
        margin=margin(5, b = 10)),
      
      axis.line = element_line(colour = um_cols("dark-blue"),    # Adding axis lines
                               size = 1, 
                               linetype = "solid",
                               lineend = "round"),
      axis.ticks = element_line(colour = um_cols("dark-blue"),
                                size = 1),
      axis.ticks.length = unit(5, "points"),
      
      legend.position = "top",
      legend.text = element_text(size = font.size),
      legend.box = "vertical",
      text = element_text(size = font.size),
      panel.border = element_blank()
    )
}
