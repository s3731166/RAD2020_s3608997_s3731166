Rapid-App-Development
# Development Branch Test
# Distinction Requirements

    Your app should support user “RAD” with password “Rails2020”.

A visitor only see news shared by those who have similar interest.
-



    Input validation: When a new user signs up, you are required to validate the input.
        emailRegex:  <>@<>.<>

        • The initial pass word should be in between 8-20
        characters, excluding special characters.
        • The confirm password must be identical to the initial
        password.
        • Mobile number must be a number in between 10-13
        digits.



    My Settings 
        -The top “My Profile” page is the same as that in Credit Level.
        “My Posts” lists all the posts made by this member.
        “My Comments” lists all the comments that the members to OTHER people’s posts.
        “Comments to Me” shows the comments that other members made on this member’s posts.
        
        “Setting”, 
            “Personal Info”, 
            “Avatar”, “ Gravatar profile (see info re Gravatar in tutorials or search online.) LOCAL
            Password”
            “Verification”. “Verification” is where user upload an official card for authentication. STUDENT  LOCAL



    Making comments: 
    For each post, all the relevant info will be display when user click the post item from home page. That includes existing comments on the news. See the example below. Note the right side bar, including Recent Members, Topic, Comments and Links, also appears on this page.



    A simple text box is fine for this level.  comment count increease.





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
