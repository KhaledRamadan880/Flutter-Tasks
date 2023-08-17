abstract class ApiConsumer {

  //! post
  Future post(
    String path,{
      Object? data,
      Map<String, dynamic>? queryParameters,
    } 
  );
  //! patch
  Future patch(
    String path,{
      Object? data,
      Map<String, dynamic>? queryParameters,
    } 
  );
  //! get
  Future get(
    String path,{
      Object? data,
      Map<String, dynamic>? queryParameters,
    } 
  );
  //! delete
  Future delete(
    String path,{
      Object? data,
      Map<String, dynamic>? queryParameters,
    } 
  );

}
