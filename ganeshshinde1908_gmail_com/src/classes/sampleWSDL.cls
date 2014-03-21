global class sampleWSDL{
	
    webservice static string makeserviceCall( ) {
    system.debug('test');
     HttpRequest req = new HttpRequest(); 
   
    //Set HTTPRequest Method
    req.setMethod('PUT');

    //Set HTTPRequest header properties
    req.setHeader('content-type', 'image/gif');
    req.setHeader('Content-Length','1024');
    req.setHeader('Host','s3.amazonaws.com');
    req.setHeader('Connection','keep-alive');
    //req.setEndpoint( this.serviceEndPoint + this.bucket +'/' + this.key);
    req.setHeader('Date','abc'); 
     String body = 'test';
    //Set the HTTPRequest body  
    req.setBody(body);  
 system.debug('test 2');
    Http http = new Http();
     system.debug('test 22222222');
     try {
      
          //Execute web service call here       
          HTTPResponse res = http.send(req);    
 
          //Helpful debug messages
          System.debug(res.toString());
          System.debug('STATUS:'+res.getStatus());
          System.debug('STATUS_CODE:'+res.getStatusCode());
                
     } catch(System.CalloutException e) {
            //Exception handling goes here....
     }
     return 'success';               
    }
}