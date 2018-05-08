/*
Nom du ficher : U2A7_Fidelisation.as
Programmeur : Dominik Dumas
Date : 03 mai 2018
Description : Cette application sert à gérer les points de loyalité chez les clients de la compagnie
*/

// < [] {} \n

package {
	// importer les modules display et events
    import flash.display.*;
    import flash.events.*;

    public class U2A7_Fidelisation extends MovieClip {

        private var membres:Array = new Array();

        // class constructeur
        public function U2A7_Fidelisation():void {

            // event listeners goes here
			btnAfficher.addEventListener(MouseEvent.CLICK, afficher);

        }

        // fonction pour afficher les membres
        public function afficher(EVENT:MouseEvent):void {
			
			// chercher le prenom, le nom et les points entrées
			var prenom:String = txtPrenom.text;
			var nom:String = txtNom.text;
			var points:Array;
			trace('typeof ' + typeof(points));
			trace('points texte ' + txtPoints.text);
			
			// si la boite texte des points est vide, ne pas affecter de valeur
			// si la boite texte des points contient un ou plusieurs chiffres, lui affecter ces chiffres
			if (txtPoints.text == '') {
				trace('aucun point');
				points = [];
				
			} else {
				
				points = (txtPoints.text).split(' ');
				trace('les points a ajouter sont : ' + points);
				
			}
			
			ajouter(prenom, nom, points);
			
			var msg:String = '------------';
			
			for each(var mem in membres) {

				msg = msg + '\n' + mem.nomComplet();
				msg += '\n' + mem.avoirPoints();

			}
			
			msg += '\n------------'
			
			trace(msg);
			txtAffiche.text = msg;

        }

        // fonction pour ajouter un membre
        public function ajouter(prenom, nom, points:Array):void {
			
			var existe:Boolean = false;

			for each(var mem in membres) {
				
				var nomComplet = prenom + ' ' + nom;
				
				if (mem.nomComplet() == nomComplet) {
					
					existe = true;
					
				}
			}
			
			if (!existe) {
			
				var nouveauMembre:membre = new membre();
			
				nouveauMembre.mettrePrenom(prenom);
				nouveauMembre.mettreNom(nom);
				trace(typeof(points));
				if (points == []) {
					
					trace('aucun points a ajouter');
					
				} else {
					
					nouveauMembre.mettrePoints(points);
					
				}
			
				membres.push(nouveauMembre);
			
			}

        }

    }
}