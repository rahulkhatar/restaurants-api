æ
zC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Domain\Interfaces\IDishService.cs
	namespace 	
Revision_Part_1
 
. 
Domain  
.  !

Interfaces! +
;+ ,
public 
	interface 
IDishService 
{ 
Task 
< 	
int	 
> 
Create 
( 
Dish 
entity  
)  !
;! "
Task 
Delete	 
( 
IEnumerable 
< 
Dish  
>  !
entities" *
)* +
;+ ,
}		 ¡	
ÄC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Domain\Interfaces\IRestaurantService.cs
	namespace 	
Revision_Part_1
 
. 
Domain  
.  !

Interfaces! +
;+ ,
public 
	interface 
IRestaurantService #
{ 
Task 
< 	
IEnumerable	 
< 

Restaurant 
>  
>  !
GetAllAsync" -
(- .
). /
;/ 0
Task 
< 	

Restaurant	 
? 
> "
GetRestaurantByIdAsync ,
(, -
int- 0
id1 3
)3 4
;4 5
Task		 
<		 	
int			 
>		 
CreateRestaurant		 
(		 

Restaurant		 )

restaurant		* 4
)		4 5
;		5 6
Task

 
<

 	
bool

	 
>

 
DeleteRestaurant

 
(

  
int

  #
id

$ &
)

& '
;

' (
Task 
SaveChanges	 
( 
) 
; 
} ﬁ
çC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Domain\Interfaces\IRestaurantAuthorizationService.cs
	namespace 	
Revision_Part_1
 
. 
Domain  
.  !

Interfaces! +
;+ ,
public 
	interface +
IRestaurantAuthorizationService 0
{ 
bool 
	Authorize	 
( 

Restaurant 

restaurant (
,( )
ResourceOperation* ;
resourceOperation< M
)M N
;N O
} Ù
C:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Domain\Exceptions\NotFoundException.cs
	namespace 	
Revision_Part_1
 
. 
Domain  
.  !

Exceptions! +
;+ ,
public 
class 
NotFoundException 
( 
string %
resourceType& 2
,2 3
string4 :
rsourceIdentifier; L
)L M
:N O
	Exception 
( 
$" 
{ 
resourceType 
} 
$str (
{( )
rsourceIdentifier) :
}: ;
$str; O
"O P
)P Q
{ 
} Ö
ÅC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Domain\Interfaces\IBlobStorageService.cs
	namespace 	
Revision_Part_1
 
. 
Domain  
.  !

Interfaces! +
;+ ,
public 
	interface 
IBlobStorageService $
{ 
Task 
< 	
string	 
> 
UploadToBlobAsync "
(" #
Stream# )
data* .
,. /
string0 6
fileName7 ?
)? @
;@ A
string 

?
 
GetBlobSasUrl 
( 
string  
?  !
blobUrl" )
)) *
;* +
} ü
ÜC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Domain\Exceptions\ForbiddenAccessException.cs
	namespace 	
Revision_Part_1
 
. 
Domain  
.  !

Exceptions! +
;+ ,
public 
class $
ForbiddenAccessException %
:& '
	Exception( 1
{ 
} ´
pC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Domain\Entities\User.cs
	namespace 	
Revision_Part_1
 
. 
Domain  
.  !
Entities! )
;) *
public 
class 
User 
: 
IdentityUser  
{ 
public 

DateOnly 
? 
DateOfBirth  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
Nationality 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
public 

List 
< 

Restaurant 
> 
OwnedRestaurant +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
=: ;
[< =
]= >
;> ?
} ˙"
}C:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Domain\Entities\RestaurantClasses.cs
	namespace 	
Revision_Part_1
 
. 
Domain  
.  !
Entities! )
;) *
public 
class 

Restaurant 
{ 
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
=% &
default' .
!. /
;/ 0
public 

string 
Description 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
default. 5
!5 6
;6 7
public 

string 
Category 
{ 
get  
;  !
set" %
;% &
}' (
=) *
default+ 2
!2 3
;3 4
public		 

bool		 
HasDelivery		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 

string

 
?

 
ContactEmail

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 

string 
? 
ContactNumber  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

Address 
? 
Address 
{ 
get !
;! "
set# &
;& '
}( )
public 

List 
< 
Dish 
> 
Dishes 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
new- 0
(0 1
)1 2
;2 3
public 

User 
Owner 
{ 
get 
; 
set  
;  !
}" #
=$ %
default& -
!- .
;. /
public 

string 
OwnerId 
{ 
get 
;  
set! $
;$ %
}& '
=( )
default* 1
!1 2
;2 3
public 

string 
? 
LogoUrl 
{ 
get  
;  !
set" %
;% &
}' (
} 
public 
class 
Address 
{ 
public 

string 
? 
City 
{ 
get 
; 
set "
;" #
}$ %
public 

string 
? 
Street 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 

PostalCode 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 
class 
Dish 
{ 
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
=% &
default' .
!. /
;/ 0
public   

string   
Description   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
=  , -
default  . 5
!  5 6
;  6 7
public!! 

decimal!! 
Price!! 
{!! 
get!! 
;!! 
set!!  #
;!!# $
}!!% &
public"" 

int"" 
?"" 
KiloCalories"" 
{"" 
get"" "
;""" #
set""$ '
;""' (
}"") *
public## 

int## 
RestaurantId## 
{## 
get## !
;##! "
set### &
;##& '
}##( )
}$$ ‡
}C:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Domain\Entities\ResourceOperation.cs
	namespace 	
Revision_Part_1
 
. 
Domain  
.  !
Entities! )
;) *
public 
enum 
ResourceOperation 
{ 
Create 

,
 
Read 
, 	
Update		 

,		
 
Delete

 

} 