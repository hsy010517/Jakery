
        window.onload = (event) => {
          var btn1 = document.getElementById("chevron-up");
          btn1.style.display = 'none';   
        };
          var bDisplay = true; function doDisplay(){    
              var con = 
              /*document.getElementsByClassName("myDIV");*/
              document.getElementById("myDIV"); 
              var btn2 = document.getElementById("chevron-up");
              var btn1 = document.getElementById("chevron-down");
  
              if(con.style.display=='none'){       
                  con.style.display = 'flex'; 
                  btn1.style.display = 'inline';   
                  btn2.style.display = 'none';   
  
              }else{       
                  con.style.display = 'none'; 
                  btn1.style.display = 'none';
                  btn2.style.display = 'inline';   
              } 
          } ;
