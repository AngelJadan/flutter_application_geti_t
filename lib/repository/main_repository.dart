abstract class DataSource{
  String fetchMessage();
}

class MainRepository extends DataSource{
  
  MainRepository();

  @override
  String fetchMessage()=>"Prueba exitosa";
}