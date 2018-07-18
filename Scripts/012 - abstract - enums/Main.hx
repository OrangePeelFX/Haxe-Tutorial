// https://fr.wikipedia.org/wiki/Liste_des_codes_HTTP
@:enum
abstract HttpStatus(Int){
	var Continue = 100;
	var OK = 200;
	var Accepted = 202;
	var NotFound = 404;
	var MethodNotAllowed = 405;
}

class Main {
  static public function main() {
	var list = [HttpStatus.OK, HttpStatus.Accepted, HttpStatus.MethodNotAllowed];
	for (status in list) {
	  trace(printStatus(status));
	}
  } 
  
  static function printStatus(status:HttpStatus) {
	return switch(status){
		case Continue : 
			"Attente de la suite de la requete.";
		case OK : 
			"Requete traitee avec succes.";
		case Accepted : 
			"Requete traitee, mais sans garantie de resultat.";
		case NotFound : 
			"Ressource non trouvee.";
		case MethodNotAllowed : 
			"Methode de requete non autorisee."; 
	}
  }
}
