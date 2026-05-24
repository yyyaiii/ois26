# Chargement de la bibliothèque graphique standard
library(ggplot2)

# 1. Génération de données factices complexes (Distribution bimodale)
set.seed(42)
data1 <- data.frame(Valeur = rnorm(150, mean = 10, sd = 2), Groupe = "Échantillon A")
data2 <- data.frame(Valeur = rnorm(150, mean = 15, sd = 3), Groupe = "Échantillon B")
df <- rbind(data1, data2)

# 2. Création d'une visualisation non triviale (Graphique de densité + Points)
p <- ggplot(df, aes(x = Valeur, fill = Groupe, color = Groupe)) +
  geom_density(alpha = 0.4, position = "identity") +
  geom_rug(alpha = 0.5) + # Ajoute les lignes de points réels en bas
  theme_minimal() +
  labs(
    title = "Analyse Comparative des Distributions de Densité",
    subtitle = "Visualisation avancée générée pour le TP8 - OIS",
    x = "Valeurs Mesurées",
    y = "Densité"
  ) +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    legend.position = "bottom"
  )

# 3. Sauvegarde du graphique au format PNG
ggsave("visualisation_complexe.png", plot = p, width = 8, height = 5)
print("Graphique généré avec succès dans 'visualisation_complexe.png' !")
