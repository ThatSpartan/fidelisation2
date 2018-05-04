/*
Nom du ficher : membre.as
Description : Contient la class pour les membres
*/

package {

    public class membre {
		
		private var firstName:String;
		private var lastName:String;

        public function membre() {
			
			

        }
		
		public function SetFirstName(val:String):void {
			
			firstName = val;

        }
		
		public function SetLastName(val:String):void {
			
			lastName = val;

        }
		
		public function GetFullName():String {
			
			return firstName + ' ' + lastName;

        }
        
        // autres methodes

    }

}