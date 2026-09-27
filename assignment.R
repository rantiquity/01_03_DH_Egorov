# загружаем нужные пакеты
library(languageR)
library(ggplot2)

# загружаем датасет
meta <- oldFrenchMeta
# допишите ваш код ниже
# постройте в ggplot столбиковую диаграмму (_bar), 
# показывающую распределение произведений по темам; цветом-заливкой закодируйте жанр; 
ggplot(aes(Topic, fill = Genre)) +
  geom_bar()

meta

meta +
  labs(
    title = "Old French Data",
    x = NULL,
    y = NULL,
  ) +
  # уберите названия осей; добавьте заголовок "Old French Data"
  coord_flip()
  # поверните координатную ось; 
  theme_bw()
  # поменяйте тему оформления на черно-белую (bw) 

# !!!! сохраните график как объект в окружении под именем g
# !!!!вызов class(g) должен возвращать "gg"     "ggplot"
g <- meta

class(g)
