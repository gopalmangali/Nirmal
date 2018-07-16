public class sample1
{
    public String state {get;set;}
    public String city {get;set;}
    public String Village {get;set;}
  // public String city {get;set;}

    public List<SelectOption> getStates()
    {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('None','--- None ---'));        
        options.add(new SelectOption('TN','Tamil Nadu'));
        options.add(new SelectOption('KL','Kerala'));
         options.add(new SelectOption('KA','Karnataka'));
          options.add(new SelectOption('AP','Andhrapradesh'));
                 
        return options;
    } 
                     
    public List<SelectOption> getCities()
    
    {
        List<SelectOption> options = new List<SelectOption>();
        if(state == 'TN')
        {       
            options.add(new SelectOption('CHE','Chennai'));
            options.add(new SelectOption('CBE','Coimbatore'));
        }
        else if(state == 'AP')
        {       
            options.add(new SelectOption('KUR','Kurnool'));
            options.add(new SelectOption('KDP','Kadapa'));
        }
        
        else if(state == 'KL')
        {       
            options.add(new SelectOption('COA','Coachin'));
            options.add(new SelectOption('MVL','Mavelikara'));
        }
        
        
        else if(state == 'KA')
        {       
            options.add(new SelectOption('BAN','Bangalore'));
            options.add(new SelectOption('My','Mysure'));
        }
        
        else
        {
            options.add(new SelectOption('None','--- None ---'));
        }      
        return options;
    }       
   
   
      public List<SelectOption> getvillages()
    {
            
   system.debug('city '+city );
    List<SelectOption> options = new List<SelectOption>();
          
          
        // options.add(new SelectOption('None','--- None ---')); 
          //List<SelectOption> options = new List<SelectOption>();
          
        if(City == 'KUR')
        {       
            options.add(new SelectOption('AL','ALur'));
            options.add(new SelectOption('AD','Adoni'));
        }
          
           else if(City == 'KDP')
        {       
            options.add(new SelectOption('A','a1'));
            options.add(new SelectOption('B','b1'));
        }
        
         else if(City == 'CHE')
        {       
            options.add(new SelectOption('c','c1'));
            options.add(new SelectOption('d','d1'));
        }
        
         else if(City == 'CBE')
        {       
            options.add(new SelectOption('e','e1'));
            options.add(new SelectOption('f','f1'));
        }
        
         else if(City == 'COA')
        {       
            options.add(new SelectOption('g','g1'));
            options.add(new SelectOption('h','h1'));
        }
        
         else if(City == 'MVL')
        {       
            options.add(new SelectOption('i','i1'));
            options.add(new SelectOption('j','j1'));
        }
        
         else if(City == 'BAN')
        {       
            options.add(new SelectOption('k','k1'));
            options.add(new SelectOption('l','l1'));
        }
        
         else if(City == 'My')
        {       
            options.add(new SelectOption('m','m1'));
            options.add(new SelectOption('n','n1'));
        }
        
          else
        {
            options.add(new SelectOption('None','--- None ---'));
        } 
          
     return options;  
    } 
}