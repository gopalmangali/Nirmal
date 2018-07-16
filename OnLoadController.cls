public class OnLoadController {

    public String Page {get; set;}
    public String OpenPageURL {get; set;}
    
    public void OnLoadController()
    {
        Page = '' ;
        OpenPageURL = '' ;
    }
    
    public PageReference redirect()
    {
        if(Page == 'google')
        {
       //     OpenPageURL = <a target="_blank" href="http://www.google.co.in/" rel="nofollow">http://www.google.co.in/</a> ;
        }
        if(Page == 'blog')
        {
         //   OpenPageURL = '<a target="_blank" href="http://forceguru.blogspot.com/'" rel="nofollow">http://forceguru.blogspot.com/'</a> ;
        }
        return null;
    }

}