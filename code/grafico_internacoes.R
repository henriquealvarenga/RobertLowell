library(readr)
library(ggplot2)

internacoes <- read_csv(file = "data/days_in_hospital.csv")

ggplot(data=internacoes, aes(x=ano, y=dias)) +
  geom_bar(stat = "identity", fill="darkred", col="black") +
  scale_x_continuous(breaks = seq(1917, 1977, by = 1),
                     guide = guide_axis(angle = 90)) +
  scale_y_continuous(breaks = seq(0, 365, by = 30), limits=c(0,365)) +
  xlab("Ano") +
  ylab("Dias internado durante o ano") +
  labs(title = "Internações de Robert Lowell devido ao transtorno Bipolar",
       subtitle = "Baseado na obra de Kay R. Jamison, 'Setting the River on Fire'",
       caption = "Adaptado a partir da tabela de hospitalizações de Lowell, páginas 112-113.") +
  annotate("text", y = 120, x = 1971, label = "Usando Lítio") +
  annotate("segment", x = 1967, xend = 1975, y = 105, yend = 105,
           colour = "blue") +
  annotate("rect", xmin = 1967, xmax = 1975, ymin = 0, ymax = 105, alpha = 0.3) +
  annotate("rect", xmin = 1948, xmax = 1977.5, ymin = 0, ymax = 365, alpha = 0.1) +
  theme_classic()
