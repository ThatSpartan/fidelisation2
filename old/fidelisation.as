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
            btnAfficherAvecPoints.addEventListener(MouseEvent.CLICK, afficher2);
            btnAfficherAvecPointsEtBonus.addEventListener(MouseEvent.CLICK, afficher3);

        }

        // fonction pour savoir si la personne est déjà inscrit
        public function existe(_fullName):Boolean {

            // loop tous les membres afin de savoir si un correspond au nom de la personne cherchée
            for each(var membre in membres) {

                // si son nom complet correspond au nom complet chercher, retourner true
                if (membre.GetFullName() == _fullName) {
                    return true
                }

            }

            return false    // return false si la personne n'est pas déjà dans les données

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

            // code

            var _str:String;

            // for (var i:int = 0; i < membres.length; i++) {

            //     _str += '\n';
            //     _str += membres[i].GetFullName();

            // }

            // loop tous les membres
            for each(var member in membres) {

                _str += '\n';                       // ajouter un line-break
                _str += member.GetFullName();       // ajouter son nom complet

            }

            txtAffichage.text = _str;       // afficher le string à la boite de texte

        }

        // fonction pour ajouter un membre
        public function ajouter():void {

            // définir les variables qui contiendront le prénom et le dernier nom et chercher de la boite de saisie
            var firstName:String = txtPrenom.text;
            var lastName:String = txtNom.text;

            // s'assurer que les entrées ne sont pas null
            if (firstName != '' && lastName != '') {

                var _newMember:membre = new membre();       // créer le membre

                _newMember.SetFirstName(firstName);         // ajouter son prénom
                _newMember.SetLastName(lastName);           // ajouter son nom

                trace(_newMember.GetFullName());//temp

            }

        }

        // fonction pour enlever un membre
        public function enlever():void {

            var firstName:String = txtPrenom.text;      // chercher le prénom de la boite de saisie
            var lastName:String = txtNom.text;          // chercher le nom de la boite de saisie

            // s'assurer que les variables ne sont pas nulles
            if (firstName != '' && lastName != '') {

                var _name = firstName + ' ' + lastName;     // affecter son nom complet à une variable

                // for (var i:int = 0; i < members.length; i++) {

                //     // manque du code
                //     // probablement utiliser map()

                // }

            }

        }

    }
}