# All possible requests for SOS api

**[Users](#Users) | [Comments](#Comments) | [Videos](#Videos) | [Questions](#Questions) | [Formations](#Formations) | [Roles](#Roles) | [Categories](#Categories) | [Preferences](#Preferences) | [Tasks](#Tasks) | [Favorites](#Favorites)**

### Users

The table 'Users' contains data about each user, this includes their full name, business e-mail,and their role. You can update an user's name, surname, role, formation, password.
_Please note: for comments, id means 'user_id'._
| Request (URL) | Request Type |
| ----------- | ----------- |
| Get all users (/users) | GET |
| Get user by id (/users/:id) | GET |
| Get user by email (/users/email/:email) | GET |
| Get all users by role (/users/role/:role_id) | GET |
| Get user by email (/users/email/:id) | GET |
| Activate user (/users/activation/:token) | GET |
| Update user (/users/:email) | PUT |
| Update user as admin (/users/:email/admin) | PUT |
| Activate user as admin (/users/activation/:token/admin) | PUT |
| Activate user (/users/:user_id/image) | PUT |
| Create user (/users) | POST |
| Delete user (/users/:id) | DELETE |

### Comments

The table 'Comments' contains data about every comment, including the text, whether it's feedback, date, author and under which video it is. You can update a comment's text.
Feedback is a comment, except in this case the 'feedback' boolean is set to 'true'.
_Please note: for comments, id means 'comment_id'._
| Request (URL) | Request Type |
| ----------- | ----------- |
| Get all comments (/comments) | GET |
| Get comment by id (/comments/:id) | GET |
| Get comment by video (/comments/video/:video_id) | GET |
| Get feedback by video (/comments/video/:video_id/feedback) | GET |
| Update comment (/comments/:id) | PUT |
| Create comment (/comments) | POST |
| Like comment (/comments/likes/:comment_id/like) | POST |
| Unlike comment (/comments/likes/:comment_id/unlike) | POST |
| Check if comment liked (/comments/likes/:comment_id/check) | POST |
| Delete comment (/comments/:id) | DELETE |

### Videos

The table 'Videos' contains data about every video, including the title, date and time, author and the server-side url to the video. You can update a video's title.  
_Please note: for videos, id means 'video_id'._
| Request (URL) | Request Type |
| ----------- | ----------- |
| Get all videos (/videos) | GET |
| Get video by id (/videos/:id) | GET |
| Get videos by email(/videos/email/:email) | GET |
| Get public videos by email (/videos/email/:email) | GET |
| Update video (/videos/:id) | PUT |
| Create video (/videos) | POST |
| Like video (/videos/likes/:video_id/like) | POST |
| Unlike video (/videos/likes/:video_id/unlike) | POST |
| Check if video liked (/videos/likes/:video_id/check) | POST |
| Delete video (/videos/:id) | DELETE |

The video files are uploaded to a Cloudinary server, you can find how to manage a Cloudinary server [here](https://cloudinary.com/documentation).

### Questions

The table 'Questions' contains data about every question, including the question itself as its category. You can update a question's text.  
_Please note: for questions, id means 'question_id'._
| Request (URL) | Request Type |
| ----------- | ----------- |
| Get all questions (/questions) | GET |
| Get question by id (/questions/:id) | GET |
| Get all questions based on category (/questions/category/:question_category_id) | GET |
| Get random questions for user by email (/questions/random/:email) | GET |
| Update question (/questions/:id) | PUT |
| Create question (/questions) | POST |
| Delete question (/questions/:id) | DELETE |

### Formations

The table 'Formations' contains data about every formation.  
_Please note: for formations, id means 'formation_id'._
| Request (URL) | Request Type |
| ----------- | ----------- |
| Get all formations (/fomrations) | GET |
| Get formation by id (/formations/:id) | GET |
| Get formation by name (/formations/name/:name) | POST |

### Roles

The table 'Roles' is a table that simply contains all the possible roles for authorization.
| Request (URL) | Request Type |
| ----------- | ----------- |
| Get all roles (/roles) | GET |

### Categories

The table 'Categories' contains data about question categories.
_Please note: for categories, id means 'question_category_id'._
| Request (URL) | Request Type |
| ----------- | ----------- |
| Get all categories (/question-questions) | GET |
| Get category by id (/question-questions/:id) | GET |
| Get category by name (/question-questions/category/:category) | GET |
| Create category (/question-categories/:question_category_id) | PUT |
| Create category (/question-questions) | POST |
| Create category (/question-categories/:question_category_id) | DELETE |

### Preferences

The table 'Preferences' contains data about every user's preferences. If followed our table creation queries, preferences default for each user to 0, which would mean 'Algemeen'.  
_Please note: for preferences, id means 'preference_id'._
| Request (URL) | Request Type |
| ----------- | ----------- |
| Get all preferences (/preferences) | GET |
| Get all preferences by email(/preferences/:email) | GET |
| Update preferences (/preferences/:email) | PUT |
| Toggle introduction preference (/preferences/:email/introduction) | PUT |
| Create preferences (/comments) | POST |
| Delete preferences (/preferences/:email) | DELETE |

### Tasks

The table 'Tasks' contains data about every task, including the title, description and deadline. You can update all fields.  
_Please note: for tasks, id means 'task_id'._
| Request (URL) | Request Type |
| ----------- | ----------- |
| Get all tasks (/tasks) | GET |
| Get task by id (/tasks/:id) | GET |
| Update task (/tasks/:id) | PUT |
| Create task (/tasks) | POST |
| Delete task (/tasks/:id) | DELETE |

### Favorites

The table 'Favorites' contains data about every teacher's favorites, including who the favorite belongs to and which video it points to.
_Please note: for favorites, id means 'favorite_id'._
| Request (URL) | Request Type |
| ----------- | ----------- |
| Get all favorites (/favorites) | GET |
| Get all favorites by email(/favorites/email/:email) | GET |
| Get random favorites (/favorites/random/random) | GET |
| Favorite video (/favorites/:video_id/favorite) | POST |
| Unfavorite video (/favorites/:video_id/unfavorite) | POST |
| Check if video favorited (/favorites/:video_id/check) | POST |
