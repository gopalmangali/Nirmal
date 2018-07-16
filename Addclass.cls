public class Addclass {
    public integer add(integer a, integer b)
    {
        
       return a+b;
    }
    public integer sub(integer a, integer b)
     
    {
        return a-b;
    }
    public  integer res;
    public  integer contact(integer a,integer b, String s)
    {
    	if(s=='add')
    	{
         res=a+b;
    	}
    	else if(s=='sub')
        {
         res=a-b;
    	}
        
        if(s=='mul')
    	{
         res=a*b;
    	}
    	else if(s=='div')
        {
         res=a/b;
    	}
    return res;
}
}