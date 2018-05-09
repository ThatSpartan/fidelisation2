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

		private var membres:Array = new Array();	// variable pour stocker la liste des membres

        // class constructeur
        public function U2A7_Fidelisation():void {

            // ajout des écouteurs d'événements sur les boutons ajouter, enlever
			btnEntrer.addEventListener(MouseEvent.CLICK, entrer);
			btnEnlever.addEventListener(MouseEvent.CLICK, enlever);
			
			include "U2A7_Membres.as"; // inclure un fichier incluant des membres

        }
		
		// fonction pour afficher les membres
		public function afficher():void {
			
			var msg:String = '------------';
			
			// pour chacun des membres, ajouter son nom et ses points à la boite d'affichage
			for each(var mem in membres) {

				msg = msg + '\n' + mem.nomComplet();
				msg += '\n' + mem.avoirPoints();

			}
			
			msg += '\n------------'
			
			// afficher le message à la fenêtre
			txtAffiche.text = msg;
			
		}

        // fonction pour entrer un membre
        public function entrer(EVENT:MouseEvent):void {
			
			// chercher le prenom, le nom et les points entrées
			var prenom:String = txtPrenom.text;
			var nom:String = txtNom.text;
			var points:Array;
			
			// si la boite texte des points est vide, ne pas affecter de valeur
			// si la boite texte des points contient un ou plusieurs chiffres, lui affecter ces chiffres
			if (txtPoints.text == '') {
				
				points = [];
				
			} else {
				
				points = (txtPoints.text).split(' ');	// séparer les chiffres par les espaces
				
			}
			
			ajouter(prenom, nom, points);		// ajouter le membre

			afficher();
			
        }

		// fonction qui enlève un membre des données
		public function enlever(EVENT:MouseEvent):void {
			trace('enlever');
		}

        // fonction pour ajouter un membre
        public function ajouter(prenom, nom, points:Array):void {
			
			// variable qui stock si le membre est déjà dans les données
			var existe:Boolean = false;

			// pour tous les membres, si le nom complet entré équivaut à un des membres existant, affecter true à existe
			for each(var mem in membres) {
				
				var nomComplet = prenom + ' ' + nom;
				
				if (mem.nomComplet() == nomComplet) {
					
					existe = true;
					
				}
			}
			
			// si le membre n'existe pas, continuer
			if (!existe) {
			
				// créer le nouveau membre
				var nouveauMembre:membre = new membre();
			
				// ajouter son prénom et son nom
				nouveauMembre.mettrePrenom(prenom);
				nouveauMembre.mettreNom(nom);

				// si aucun points n'est entrés, rien faire
				// si des points sont entrés, les ajouter
				if (points == []) {
					
					// rien faire
					
				} else {
					
					nouveauMembre.mettrePoints(points);
					
				}
			
				// ajouter ce membre à la liste de tous les membres
				membres.push(nouveauMembre);
			
			}

        }

    }
}