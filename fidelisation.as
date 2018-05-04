/*
Nom du ficher : fidelisation.as
Programmeur : Dominik Dumas
Date : 03 mai 2018
Description : Cette application sert à gérer les points de loyalité chez les clients de la compagnie
*/

package {
    import flash.display.*;
    import flash.events.*;

    public class fidelisation extends MovieClip {

        private var membres:Array = new Array();

        // class constructeur
        public function fidelisation():void {

            // event listeners goes here
			btnAfficher.addEventListener(MouseEvent.CLICK, afficher);

        }

        // fonction pour afficher les membres
        public function afficher(EVENT:MouseEvent):void {

            // code pour l'affichage
			trace('clicker sur afficher');
			
			// test
			var dominik:membre = new membre();
			
			dominik.SetFirstName('Dominik');
			dominik.SetLastName('Dumas');
			
			trace(dominik.GetFullName());
			
			// vrai
			for (var mem:int = 0; i smaller than list; mem++) ...

        }

        // fonction pour ajouter un membre
        public function ajouter():void {

            // code pour l'ajout

        }

    }
}