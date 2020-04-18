Rapid-App-Development
# Development Branch Test
# Pass Requirements

    Your app should support user “RAD” with password “Rails2020”.

A visitor only see news shared by those who have similar interest.
-

Sign Up:

    A new User : 
        Email -( Username )
            2x Passwords match 
        Mobile
        Submit(signUp())

    link to login (Already a User?)
    Footer- T he footer should show information like team member names, tutor group and tutor name.

Log In 

    Username
    Password 
    Link to Register
    Footer 
    
Home 

    Recent Posts
        - Defualt Home 
        - All post date < month 
        - News item 
            - Avatar
            -Title
            -the name of the contributor
            - The time stamp
            -categories of the news,
            - number of comments 
            -number of views.
            -The title will be highlighted with mouse-over
            
    Recent Members 
        width not change 
        max 12 Users orederd by most recent
        
    Topic
        - Predefined Topics 
        - Highlight on mouseover 
        - select and unsleect onclick 
    
    Post
        - 5 MOST VIEWED 
    
    Links
        - External Links target = _blank in ruby 
        RMIT RUBY 
        Highlight on mouseover 
        
        
    User Icon 
        logout 
        



-----

DATABASE:

You should have a database at backend that stores information of users, news posts,
comments and other necessary data.

User: (String Name, img Icon, Password Password, Phone phonenumber)


News Item: (int ID; TimeDate: TimeStamp, String Category, String Contributor, Img Contributer_Avatar, Int Views, int commentCount, Comment[] comments )

Commment: (int it , String body, int poster_ID)
