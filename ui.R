tabl <- read.csv(file="all_words.csv", header = TRUE)

shinyUI(fluidPage(
  titlePanel("One thousand Most Frequently Used Words"),
    
    mainPanel(
      
      selectInput("var", 
        label = "Choose a variable to display",
        choices = list("Albanian", "Arabic", "Bulgarian", "Chinese", "Croatian", "Czech", "Danish", "Dutch", "Estonian", "Finnish", "French", "German", "Greek", "Hebrew", "Hungarian", "Icelandic", "Indoneasian", "Italian", "Latvian", "Macedonian", "Malay", "Norwegian", "Polish", "Portuguese", "Romanian", "Russian", "Serbian", "Slovak", "Slovenian", "Spanish", "Swedich", "Turkish"),
        selected = "Albanian"),
        
    'Это приложение показывает 1000 самых частотных слов некоторых языков. Данные основаны на материалах сайта http://www.101languages.net/common-words/. Нельзя гарантировать, что данные собраны хорошо (процесс сбора данных на сайте не описан), ровно как и не стоит верить переводам.'
    ),
    
    textInput("text", label = ("Search:")),
    
    textOutput("text1")
  
))