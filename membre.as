/*
Nom du ficher : membre.as
Description : Contient la class pour les membres
*/

package {

    public class membre {
		
		private var prenom:String;
		private var nom:String;
		private var points:Array = new Array();

        public function membre() {}
		
		public function mettrePrenom(val:String):void {
			
			prenom = val;

        }
		
		public function mettreNom(val:String):void {
			
			nom = val;

        }
		
		public function nomComplet():String {
			
			return prenom + ' ' + nom;

        }
        
     	public function mettrePoints(aPoints) {
			
			for each(var p in aPoints) {
				
				p = int(p);
				if (p != 0) {
					points.push(p);
				}
				
			}
			
		}
		
		public function avoirPoints():String {
			if (points.length != 0) {
				var p:String = ' -- ';
				var total:int = 0;
				
				for each(var n in points) {
					
					p += n + ', ';
					total += n;
					
				}
				
				p = p.slice(0, -2);
				
				return p
			} else {
				return '';
			}
		}

    }

}