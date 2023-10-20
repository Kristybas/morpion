# ----utilisation de la Bibliothèque Pry 
require "pry"

#-------Définition de la classe User
class User
     def greet # ici il s'agit de la méthode greet appliqué à chaque objet créer.
        puts "Bonjour,monde!"
     end
 
 #------Fin de ma classe

julie = User.new # Il s'agit d'une instance de la classe User à la variable"julie"
julie.greet #Il s'agit d'appliquer la méthode greet à l'instance "julie" Ce qui applique le print de Bonjour,monde!.

Victoire = User.new
Victoire.greet

binding.pry # Il s'agit d'une instruction au programme de s'arrêter ici pr  ouvrir l'interprétateur Pry.

    



