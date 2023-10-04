if status is-interactive
    # Commands to run in interactive sessions can go here
end
# Clear the screen
clear
set -g fish_greeting

# Display your custom message
echo -e "\033[36m
                ___          .    .                                
              .'   \   ___   |    |     __.  ,  _  /   ___  ,    . 
              |       /   `  |    |   .'   \ |  |  |  /   ` |    ` 
              |      |    |  |    |   |    | `  ^  ' |    | |    | 
               `.__, `.__/| /\__ /\__  `._.'  \/ \/  `.__/|  `---|.
                                                             \___/ 
                       _____        .     .                 
                      (      ,   . _/_   _/_     __.  , __  
                       `--.  |   |  |     |    .'   \ |'  `.
                          |  |   |  |     |    |    | |    |
                     \___.'  `._/|  \__/  \__/  `._.' /    |
\033[31m
                   ___                                        
                  (_    _ '  _ _ _  _   _/  )__/  / /   ' __/ 
                  /__/)(///)(-(-/  (//)(/  /  /()()()(//_) /  
                      _/                             /        
\033[0m

 ========== ===================================================================
  Command                            Description                              
 ========== ===================================================================
  blog       Run the 'blog' command to check out my blog!                     
  projects   Run the 'projects' command to check out some other projects!     
  resume     Run the 'resume' command to check out my resume!                 
  socials    Run the 'socials' command to connect with me!                    
 ========== ===================================================================

 Run 'help' if you ever need to see these commands again!
"

alias help='echo -e "========== ===================================================================
  Command                            Description                              
 ========== ===================================================================
  blog       Run the 'blog' command to check out my blog!                     
  projects   Run the 'projects' command to check out some other projects!     
  resume     Run the 'resume' command to check out my resume!                 
  socials    Run the 'socials' command to connect with me!                    
 ========== ==================================================================="'


alias blog='glow ~/files/blog'
alias projects='glow ~/files/projects'
alias resume='glow ~/files/misc/resume.md'
alias social='glow ~/files/misc/socials.md'