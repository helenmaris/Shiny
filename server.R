library(shiny)

tabl <- read.csv(file="all_words.csv", header = TRUE)

shinyServer(function(input, output) {
	
	output$tabl <- renderTable({
		args <- switch(input$var,
			"Albanian" = subset(subset(tabl, language=="Albanian")), "Arabic" = subset(subset(tabl, language=="Arabic")), "Bulgarian" = subset(subset(tabl, language=="Bulgarian")), "Chinese" = subset(subset(tabl, language=="Chinese")), "Croatian" = subset(subset(tabl, language=="Croatian")), "Czech" = subset(subset(tabl, language=="Czech")), "Danish" = subset(subset(tabl, language=="Danish")), "Dutch" = subset(subset(tabl, language=="Dutch")), "Estonian" = subset(subset(tabl, language=="Estonian")), "Finnish" = subset(subset(tabl, language=="Finnish")), "French" = subset(subset(tabl, language=="French")), "German" = subset(subset(tabl, language=="German")), "Greek" = subset(subset(tabl, language=="Greek")), "Hebrew" = subset(subset(tabl, language=="Hebrew")), "Hungarian" = subset(subset(tabl, language=="Hungarian")), "Icelandic" = subset(subset(tabl, language=="Icelandic")), "Indoneasian" = subset(subset(tabl, language=="Indoneasian")), "Italian" = subset(subset(tabl, language=="Italian")), "Latvian" = subset(subset(tabl, language=="Latvian")), "Macedonian" = subset(subset(tabl, language=="Macedonian")), "Malay" = subset(subset(a, language=="Malay")), "Norwegian" = subset(subset(a, language=="Norwegian")), "Polish" = subset(subset(a, language=="Polish")), "Portuguese" = subset(subset(tabl, language=="Portuguese")), "Romanian" = subset(subset(tabl, language=="Romanian")), "Russian" = subset(subset(tabl, language=="Russian")), "Serbian" = subset(subset(tabl, language=="Serbian")), "Slovak" = subset(subset(tabl, language=="Slovak")), "Slovenian" = subset(subset(tabl, language=="Slovenian")), "Spanish" = subset(subset(tabl, language=="Spanish")), "Swedich" = subset(subset(tabl, language=="Swedich")), "Turkish" = subset(subset(tabl, language=="Turkish"))
		do.call(tabl, args)
          
     })
	
	
})