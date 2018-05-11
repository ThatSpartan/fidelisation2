/*
Nom du ficher : membre.as
Description : Contient la class pour les membres
*/

package {

    public class membre {
		
		// définir les variables pour le membre
		private var prenom:String;
		private var nom:String;
		private var points:Array = new Array();

        public function membre() {}
		
		// fonction pour affecter le prenom
		public function mettrePrenom(val:String):void {
			
			prenom = val;

        }
		
		// fonction pour affecter le dernier nom
		public function mettreNom(val:String):void {
			
			nom = val;

        }
		
		// fonction pour obtenir le nom complet de la personne
		public function nomComplet():String {
			
			return prenom + ' ' + nom;

        }
        
		// fonction pour affecter les points que la personne a obtenu
     	public function mettrePoints(aPoints) {
			
			for each(var p in aPoints) {
				
				p = int(p);
				// ajouter les points seulement si ce n'est pas 0
				if (p != 0) {
					points.push(p);
				}
				
			}
			
		}
		
		// fonction pour obtenir les points d'une personne
		public function avoirPoints():String {
			
			// s'assurer qu'il y a des points
			if (points.length != 0) {
				var p:String = ' -- ';
				var total:int = 0;
				
				// loop pour chaqu'un et l'ajouter à une variable
				for each(var n in points) {
					
					p += n + ', ';
					total += n;
					
				}
				
				p = p.slice(0, -2); // enlever le ', ' de trop
				p += '\nCe membre à un total de ' + total + ' points'; // afficher le total des points
				
				if (total >= 5000) {
					
					p += '\n' + 'Ce membre à obtenu 1000 points en récompense'; // afficher les points en bonus si plus de 500 points
					
				}
				
				return p
			} else {
				return '';
			}
		}

    }

}