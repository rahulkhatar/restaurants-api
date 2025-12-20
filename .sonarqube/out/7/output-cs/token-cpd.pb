“
çC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\Validators\CreateRestaurantValidation.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &

Validators& 0
;0 1
public 
class &
CreateRestaurantValidation '
:( )
AbstractValidator* ;
<; <#
CreateRestaurantCommand< S
>S T
{		 
private

 
readonly

 
List

 
<

 
string

  
>

  !
validCategories

" 1
=

2 3
[

4 5
$str

5 >
,

> ?
$str

@ I
,

I J
$str

K U
,

U V
$str

W a
,

a b
$str

c k
]

k l
;

l m
public 
&
CreateRestaurantValidation %
(% &
)& '
{( )
RuleFor 
( 
dto 
=> 
dto 
. 
CreateRestaurantDto .
!. /
./ 0
Name0 4
)4 5
.5 6
Length6 <
(< =
$num= >
,> ?
$num@ C
)C D
;D E
RuleFor 
( 
dto 
=> 
dto 
. 
CreateRestaurantDto .
!. /
./ 0
Category0 8
)8 9
.9 :
Must: >
(> ?
validCategories? N
.N O
ContainsO W
)W X
.X Y
WithMessageY d
(d e
$str	e ¥
)
¥ µ
;
µ ∂
RuleFor 
( 
dto 
=> 
dto 
. 
CreateRestaurantDto .
!. /
./ 0
ContactEmail0 <
)< =
.= >
EmailAddress> J
(J K
)K L
.L M
WithMessageM X
(X Y
$strY y
)y z
;z {
RuleFor 
( 
dto 
=> 
dto 
. 
CreateRestaurantDto .
!. /
./ 0

PostalCode0 :
): ;
.; <
Matches< C
(C D
$strD T
)T U
.U V
WithMessageV a
(a b
$str	b î
)
î ï
;
ï ñ
} 
} ø
xC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\User\UserContext.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
User& *
;* +
public 
class 
UserContext 
(  
IHttpContextAccessor -
httpContextAccessor. A
)A B
:C D
IUserContextE Q
{ 
public		 

Current		 
?		 

GetCurrent		 
(		 
)		  
{

 
var 
user 
= 
httpContextAccessor &
?& '
.' (
HttpContext( 3
?3 4
.4 5
User5 9
;9 :
if 

(
 
user 
is 
null 
) 
throw 
new %
InvalidOperationException /
(/ 0
$str0 N
)N O
;O P
if 

( 
user 
. 
Identity 
== 
null !
||" $
!% &
user& *
.* +
Identity+ 3
.3 4
IsAuthenticated4 C
)C D
return 
null 
; 
var 
userId 
= 
user 
. 
	FindFirst #
(# $
c$ %
=>& (
c) *
.* +
Type+ /
==0 2

ClaimTypes3 =
.= >
NameIdentifier> L
)L M
!M N
.N O
ValueO T
;T U
var 
email 
= 
user 
. 
	FindFirst "
(" #
c# $
=>% '
c( )
.) *
Type* .
==/ 1

ClaimTypes2 <
.< =
Email= B
)B C
!C D
.D E
ValueE J
;J K
var 
roles 
= 
user 
. 
Claims 
.  
Where  %
(% &
c& '
=>( *
c+ ,
., -
Type- 1
==2 4

ClaimTypes5 ?
.? @
Role@ D
)D E
.E F
SelectF L
(L M
cM N
=>O Q
cR S
.S T
ValueT Y
)Y Z
;Z [
var 
nationality 
= 
user 
. 
	FindFirst (
(( )
c) *
=>+ -
c. /
./ 0
Type0 4
==5 7
$str8 E
)E F
?F G
.G H
ValueH M
;M N
var 
dateOfBirthString 
= 
user  $
.$ %
	FindFirst% .
(. /
c/ 0
=>1 3
c4 5
.5 6
Type6 :
==; =
$str> K
)K L
?L M
.M N
ValueN S
;S T
var 
dateOfBirth 
= 
dateOfBirthString +
==, .
null/ 3
?4 5
(6 7
DateOnly7 ?
?? @
)@ A
nullA E
:E F
DateOnlyF N
.N O

ParseExactO Y
(Y Z
dateOfBirthStringZ k
,k l
$strm y
)y z
;z {
return 
new 
Current 
( 
userId !
,! "
email# (
,( )
roles* /
,/ 0
nationality1 <
,< =
dateOfBirth> I
)I J
;J K
} 
} Ÿ
tC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\User\Current.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
User& *
;* +
public 
record 
Current 
( 
string 
Id 
,  
string! '
Email( -
,- .
IEnumerable/ :
<: ;
string; A
>A B
RolesC H
,H I
stringJ P
?P Q
NationalityR ]
,] ^
DateOnly_ g
?g h
DateOfBirthi t
)t u
{ 
public 

bool 
IsInRole 
( 
string 
role  $
)$ %
=>& (
Roles) .
.. /
Contains/ 7
(7 8
role8 <
)< =
;= >
} ¢
ëC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\Services\RestaurantServiceAdditionalLayer.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
Services& .
;. /ú 
vC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\MappingProfile.cs
	namespace 	
Revision_Part_1
 
. 
Application %
;% &
public 
class 
MappingProfile 
: 
Profile %
{		 
public

 

MappingProfile

 
(

 
)

 
{ 
	CreateMap 
< 
Dish 
, 
DishDto 
>  
(  !
)! "
;" #
	CreateMap 
< 
CreateRestaurantDto %
,% &

Restaurant' 1
>1 2
(2 3
)3 4
. 
	ForMember 
( 
dest 
=> 
dest #
.# $
Address$ +
,+ ,
opt- 0
=>1 3
opt4 7
.7 8
MapFrom8 ?
(? @
src@ C
=>D F
newG J
AddressK R
{ 
City 
= 
src 
. 
City 
,  
Street 
= 
src 
. 
Street #
,# $

PostalCode 
= 
src  
.  !

PostalCode! +
} 
) 
) 
; 
	CreateMap 
< 

Restaurant 
, 
RestaurantDto +
>+ ,
(, -
)- .
. 
	ForMember 
( 
dest 
=> 
dest #
.# $
City$ (
,( )
opt* -
=>. 0
opt1 4
.4 5
MapFrom5 <
(< =
src 
=> 
src 
. 
Address "
==# %
null& *
?+ ,
null- 1
:2 3
src5 8
.8 9
Address9 @
.@ A
CityA E
)E F
)F G
. 
	ForMember 
( 
dest 
=> 
dest #
.# $
Street$ *
,* +
opt, /
=>0 2
opt3 6
.6 7
MapFrom7 >
(> ?
src 
=> 
src 
. 
Address "
==# %
null& *
?+ ,
null- 1
:2 3
src4 7
.7 8
Address8 ?
.? @
Street@ F
)F G
)G H
. 
	ForMember 
( 
dest 
=> 
dest #
.# $

PostalCode$ .
,. /
opt0 3
=>4 6
opt7 :
.: ;
MapFrom; B
(B C
src 
=> 
src 
. 
Address "
==# %
null& *
?+ ,
null- 1
:2 3
src4 7
.7 8
Address8 ?
.? @

PostalCode@ J
)J K
)K L
. 
	ForMember 
( 
dest 
=> 
dest #
.# $
Dishes$ *
,* +
opt, /
=>0 2
opt3 6
.6 7
MapFrom7 >
(> ?
src 
=> 
src 
. 
Dishes !
)! "
)" #
;# $
	CreateMap 
< #
UpdateRestaurantCommand )
,) *

Restaurant+ 5
>5 6
(6 7
)7 8
;8 9
	CreateMap   
<   
CreateDishDto   
,    
Dish  ! %
>  % &
(  & '
)  ' (
;  ( )
	CreateMap!! 
<!! 
CreateDishCommand!! #
,!!# $
Dish!!% )
>!!) *
(!!* +
)!!+ ,
;!!, -
}## 
}$$ ˆ
zC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\DTOs\RestaurantDto.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
DTOs& *
;* +
public 
class 
RestaurantDto 
{ 
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
=% &
default' .
!. /
;/ 0
public		 

string		 
Description		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
=		, -
default		. 5
!		5 6
;		6 7
public

 

string

 
Category

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
=

) *
default

+ 2
!

2 3
;

3 4
public 

bool 
HasDelivery 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
? 
City 
{ 
get 
; 
set "
;" #
}$ %
public 

string 
? 
Street 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 

PostalCode 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
? 

LogoSasUrl 
{ 
get  #
;# $
set% (
;( )
}* +
public 

List 
< 
DishDto 
> 
Dishes 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
[0 1
]1 2
;2 3
public 

static 
RestaurantDto 
?  

FromEntity! +
(+ ,

Restaurant, 6
?6 7

restaurant8 B
)B C
{ 
if 

( 

restaurant 
is 
null 
) 
return  &
null' +
;+ ,
return 
new 
RestaurantDto  
{ 	
Id 
= 

restaurant 
. 
Id 
, 
Name 
= 

restaurant 
. 
Name "
," #
Description 
= 

restaurant $
.$ %
Description% 0
,0 1
Category 
= 

restaurant !
.! "
Category" *
,* +
HasDelivery 
= 

restaurant $
.$ %
HasDelivery% 0
,0 1
City 
= 

restaurant 
. 
Address %
?% &
.& '
City' +
,+ ,
Street   
=   

restaurant   
.    
Address    '
?  ' (
.  ( )
Street  ) /
,  / 0

PostalCode!! 
=!! 

restaurant!! #
.!!# $
Address!!$ +
?!!+ ,
.!!, -

PostalCode!!- 7
,!!7 8
Dishes"" 
="" 

restaurant"" 
.""  
Dishes""  &
.""& '
Select""' -
(""- .
DishDto"". 5
.""5 6

FromEntity""6 @
)""@ A
.""A B
ToList""B H
(""H I
)""I J
}## 	
;##	 

}$$ 
}%% ◊
C:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\Interfaces\IUserContext.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &

Interfaces& 0
;0 1
public 
	interface 
IUserContext 
{ 
Current 
? 

GetCurrent 
( 
) 
; 
} ù
çC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\Extensions\ServiceCollectionExtension.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &

Extensions& 0
;0 1
public

 
static

 
class

 &
ServiceCollectionExtension

 .
{ 
public 

static 
void 
AddApplication %
(% &
this& *
IServiceCollection+ =
services> F
)F G
{ 
var 
applicationAssembly 
=  !
typeof" (
(( )&
ServiceCollectionExtension) C
)C D
.D E
AssemblyE M
;M N
services 
. 

AddMediatR 
( 
cfg 
=>  "
cfg# &
.& '*
RegisterServicesFromAssemblies' E
(E F
applicationAssemblyF Y
)Y Z
)Z [
;[ \
services 
. 
AddAutoMapper 
( 
applicationAssembly 2
)2 3
;3 4
services 
. %
AddValidatorsFromAssembly *
(* +
applicationAssembly+ >
)> ?
.? @-
!AddFluentValidationAutoValidation@ a
(a b
)b c
;c d
services 
. 
	AddScoped 
< 
IUserContext '
,' (
UserContext) 4
>4 5
(5 6
)6 7
;7 8
services 
. "
AddHttpContextAccessor '
(' (
)( )
;) *
} 
} Ä
tC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\DTOs\DishDto.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
DTOs& *
;* +
public 
class 
DishDto 
{ 
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
=% &
default' .
!. /
;/ 0
public		 

string		 
Description		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
=		, -
default		. 5
!		5 6
;		6 7
public

 

decimal

 
Price

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
public 

int 
? 
KiloCalories 
{ 
get "
;" #
set$ '
;' (
}) *
public 

static 
DishDto 

FromEntity $
($ %
Dish% )
dish* .
). /
{ 
return 
new 
DishDto 
{ 	
Id 
= 
dish 
. 
Id 
, 
Name 
= 
dish 
. 
Name 
, 
Description 
= 
dish 
. 
Description *
,* +
Price 
= 
dish 
. 
Price 
, 
KiloCalories 
= 
dish 
.  
KiloCalories  ,
} 	
;	 

} 
} ﬂ
ÄC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\DTOs\CreateRestaurantDto.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
DTOs& *
;* +
public 
class 
CreateRestaurantDto  
{ 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
=% &
default' .
!. /
;/ 0
public		 

string		 
Description		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
=		, -
default		. 5
!		5 6
;		6 7
public 

string 
Category 
{ 
get  
;  !
set" %
;% &
}' (
=) *
default+ 2
!2 3
;3 4
public 

bool 
HasDelivery 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
? 
ContactEmail 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
? 
ContactNumber  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
? 
City 
{ 
get 
; 
set "
;" #
}$ %
public 

string 
? 
Street 
{ 
get 
;  
set! $
;$ %
}& '
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
}* +
public 

List 
< 
CreateDishDto 
> 
? 
Dishes  &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} ·
zC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\DTOs\CreateDishDto.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
DTOs& *
;* +
public 
class 
CreateDishDto 
{ 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
=% &
default' .
!. /
;/ 0
public 

string 
Description 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
default. 5
!5 6
;6 7
public 

decimal 
Price 
{ 
get 
; 
set  #
;# $
}% &
public 

int 
? 
KiloCalories 
{ 
get "
;" #
set$ '
;' (
}) *
}		 ·
ÖC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\CQRS\Queries\GetDishByIdQuery.cs
	namespace		 	
Revision_Part_1		
 
.		 
Application		 %
.		% &
CQRS		& *
.		* +
Queries		+ 2
;		2 3
public 
class 
GetDishByIdQuery 
( 
int !
restaurantId" .
,. /
int0 3
dishId4 :
): ;
:< =
IRequest> F
<F G
DishDtoG N
>N O
{ 
public 

int 
RestaurantId 
{ 
get !
;! "
}# $
=% &
restaurantId' 3
;3 4
public 

int 
DishId 
{ 
get 
; 
} 
=  
dishId! '
;' (
} 
public 
class #
GetDishByIdQueryHandler $
($ %
ILogger 
< #
GetDishByIdQueryHandler #
># $
logger% +
,+ ,
IRestaurantService !
restaurantsRepository ,
,, -
IMapper 
mapper 
) 
: 
IRequestHandler %
<% &
GetDishByIdQuery& 6
,6 7
DishDto8 ?
>? @
{ 
public 

async 
Task 
< 
DishDto 
> 
Handle %
(% &
GetDishByIdQuery& 6
request7 >
,> ?
CancellationToken@ Q
cancellationTokenR c
)c d
{ 
logger 
. 
LogInformation 
( 
$str a
,a b
request 
. 
DishId 
, 
request 
. 
RestaurantId  
)  !
;! "
var 

restaurant 
= 
await !
restaurantsRepository 4
.4 5"
GetRestaurantByIdAsync5 K
(K L
requestL S
.S T
RestaurantIdT `
)` a
;a b
if 

( 

restaurant 
== 
null 
) 
throw  %
new& )
NotFoundException* ;
(; <
nameof< B
(B C

RestaurantC M
)M N
,N O
requestP W
.W X
RestaurantIdX d
.d e
ToStringe m
(m n
)n o
)o p
;p q
var   
dish   
=   

restaurant   
.   
Dishes   $
.  $ %
FirstOrDefault  % 3
(  3 4
d  4 5
=>  6 8
d  9 :
.  : ;
Id  ; =
==  > @
request  A H
.  H I
DishId  I O
)  O P
;  P Q
if!! 

(!! 
dish!! 
==!! 
null!! 
)!! 
throw!! 
new!!  #
NotFoundException!!$ 5
(!!5 6
nameof!!6 <
(!!< =
Dish!!= A
)!!A B
,!!B C
request!!D K
.!!K L
DishId!!L R
.!!R S
ToString!!S [
(!![ \
)!!\ ]
)!!] ^
;!!^ _
var## 
result## 
=## 
mapper## 
.## 
Map## 
<##  
DishDto##  '
>##' (
(##( )
dish##) -
)##- .
;##. /
return$$ 
result$$ 
;$$ 
}%% 
}&& Ú
ãC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\CQRS\Queries\GetRestaurantByIdQuery.cs
	namespace		 	
Revision_Part_1		
 
.		 
Application		 %
.		% &
CQRS		& *
.		* +
Queries		+ 2
;		2 3
public 
class "
GetRestaurantByIdQuery #
:$ %
IRequest& .
<. /
RestaurantDto/ <
>< =
{ 
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
} 
public 
class )
GetRestaurantByIdQueryHandler *
(* +
ILogger+ 2
<2 3)
GetRestaurantByIdQueryHandler3 P
>P Q
_loggerR Y
,Y Z
IRestaurantService[ m
_restaurantService	n Ä
,
Ä Å
IMapper
Ç â
_mapper
ä ë
, 
IBlobStorageService 
_blobStorageService +
) 
: 
IRequestHandler 
< "
GetRestaurantByIdQuery .
,. /
RestaurantDto0 =
>= >
{ 
public 

async 
Task 
< 
RestaurantDto #
># $
Handle% +
(+ ,"
GetRestaurantByIdQuery, B
requestC J
,J K
CancellationTokenL ]
cancellation^ j
)j k
{ 
_logger 
. 
LogInformation 
( 
$str L
,L M
requestN U
.U V
IdV X
)X Y
;Y Z
var 

restaurant 
= 
await 
_restaurantService 1
.1 2"
GetRestaurantByIdAsync2 H
(H I
requestI P
.P Q
IdQ S
)S T
;T U
if 

(
 

restaurant 
is 
null 
) 
throw 
new 
NotFoundException '
(' (
nameof( .
(. /

Restaurant/ 9
)9 :
,: ;
request< C
.C D
IdD F
.F G
ToStringG O
(O P
)P Q
)Q R
;R S
var 
restaurantDto 
= 
_mapper #
.# $
Map$ '
<' (
RestaurantDto( 5
>5 6
(6 7

restaurant7 A
)A B
;B C
if 

( 
restaurantDto 
. 

LogoSasUrl $
!=% '
null( ,
), -
restaurantDto 
. 

LogoSasUrl $
=% &
_blobStorageService' :
.: ;
GetBlobSasUrl; H
(H I

restaurantI S
.S T
LogoUrlT [
)[ \
;\ ]
return   
restaurantDto   
;   
}!! 
}"" º
äC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\CQRS\Queries\GetAllRestaurantQuery.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
CQRS& *
.* +
Queries+ 2
;2 3
public		 
class		 !
GetAllRestaurantQuery		 "
:		# $
IRequest		% -
<		- .
IEnumerable		. 9
<		9 :
RestaurantDto		: G
>		G H
>		H I
{

 
} 
public 
class (
GetAllRestaurantQueryHandler )
() *
IRestaurantService* <
_restaurantService= O
,O P
IMapperQ X
_mapperY `
)` a
:b c
IRequestHandlerd s
<s t"
GetAllRestaurantQuery	t â
,
â ä
IEnumerable
ã ñ
<
ñ ó
RestaurantDto
ó §
>
§ •
>
• ¶
{ 
public 

async 
Task 
< 
IEnumerable !
<! "
RestaurantDto" /
>/ 0
>0 1
Handle2 8
(8 9!
GetAllRestaurantQuery9 N
requestO V
,V W
CancellationTokenX i
cancellationj v
)v w
{ 
var 
restaurants 
= 
await 
_restaurantService  2
.2 3
GetAllAsync3 >
(> ?
)? @
;@ A
var 
restaurantsDto 
= 
_mapper $
.$ %
Map% (
<( )
IEnumerable) 4
<4 5
RestaurantDto5 B
>B C
>C D
(D E
restaurantsE P
)P Q
;Q R
return 
restaurantsDto 
! 
; 
} 
} ƒ
ÑC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\CQRS\Queries\GetAllDishQuery.cs
	namespace		 	
Revision_Part_1		
 
.		 
Application		 %
.		% &
CQRS		& *
.		* +
Queries		+ 2
;		2 3
public 
class 
GetAllDishQuery 
( 
int  
restaurantId! -
)- .
:/ 0
IRequest1 9
<9 :
IEnumerable: E
<E F
DishDtoF M
>M N
>N O
{ 
public 

int 
RestaurantId 
{ 
get !
;! "
}# $
=% &
restaurantId' 3
;3 4
} 
public 
class "
GetAllDishQueryHandler #
(# $
ILogger$ +
<+ ,"
GetAllDishQueryHandler, B
>B C
loggerD J
,J K
IRestaurantService !
restaurantsRepository ,
,, -
IMapper 
mapper 
) 
: 
IRequestHandler %
<% &
GetAllDishQuery& 5
,5 6
IEnumerable7 B
<B C
DishDtoC J
>J K
>K L
{ 
public 

async 
Task 
< 
IEnumerable !
<! "
DishDto" )
>) *
>* +
Handle, 2
(2 3
GetAllDishQuery3 B
requestC J
,J K
CancellationTokenL ]
cancellationToken^ o
)o p
{ 
logger 
. 
LogInformation 
( 
$str X
,X Y
requestZ a
.a b
RestaurantIdb n
)n o
;o p
var 

restaurant 
= 
await !
restaurantsRepository 4
.4 5"
GetRestaurantByIdAsync5 K
(K L
requestL S
.S T
RestaurantIdT `
)` a
;a b
if 

( 

restaurant 
== 
null 
) 
throw  %
new& )
NotFoundException* ;
(; <
nameof< B
(B C

RestaurantC M
)M N
,N O
requestP W
.W X
RestaurantIdX d
.d e
ToStringe m
(m n
)n o
)o p
;p q
var 
results 
= 
mapper 
. 
Map  
<  !
IEnumerable! ,
<, -
DishDto- 4
>4 5
>5 6
(6 7

restaurant7 A
.A B
DishesB H
)H I
;I J
return 
results 
; 
} 
} ï
ëC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\CQRS\Commands\UploadRestaurantLogoCommand.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
CQRS& *
.* +
Commands+ 3
;3 4
public		 
class		 '
UploadRestaurantLogoCommand		 (
:		) *
IRequest		+ 3
{

 
public 

int 
RestaurantId 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
FileName 
{ 
get  
;  !
set" %
;% &
}' (
=) *
default+ 2
!2 3
;3 4
public 

Stream 
File 
{ 
get 
; 
set !
;! "
}# $
=% &
default' .
!. /
;/ 0
} 
public 
class .
"UploadRestaurantLogoCommandHandler /
(/ 0
ILogger0 7
<7 8.
"UploadRestaurantLogoCommandHandler8 Z
>Z [
_logger\ c
,c d
IRestaurantServicee w
_restaurantService	x ä
,
ä ã
IBlobStorageService 
_blobStorageService +
) 
: 
IRequestHandler 
< '
UploadRestaurantLogoCommand 3
>3 4
{ 
public 

async 
Task 
Handle 
( '
UploadRestaurantLogoCommand 8
request9 @
,@ A
CancellationTokenB S
cancellationTokenT e
)e f
{ 
_logger 
. 
LogInformation 
( 
$str Q
,Q R
requestS Z
.Z [
RestaurantId[ g
)g h
;h i
var 

restaurant 
= 
await 
_restaurantService 1
.1 2"
GetRestaurantByIdAsync2 H
(H I
requestI P
.P Q
RestaurantIdQ ]
)] ^
;^ _
if 

( 

restaurant 
is 
null 
) 
throw 
new 
NotFoundException '
(' (
nameof( .
(. /

Restaurant/ 9
)9 :
,: ;
request< C
.C D
RestaurantIdD P
.P Q
ToStringQ Y
(Y Z
)Z [
)[ \
;\ ]
var!! 
logoUrl!! 
=!! 
await!! 
_blobStorageService!! /
.!!/ 0
UploadToBlobAsync!!0 A
(!!A B
request!!B I
.!!I J
File!!J N
,!!N O
request!!P W
.!!W X
FileName!!X `
)!!` a
;!!a b

restaurant"" 
."" 
LogoUrl"" 
="" 
logoUrl"" $
;""$ %
await$$ 
_restaurantService$$  
.$$  !
SaveChanges$$! ,
($$, -
)$$- .
;$$. /
}%% 
}&& Í
çC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\CQRS\Commands\UpdateUserDetailCommand.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
CQRS& *
.* +
Commands+ 3
;3 4
public

 
class

 #
UpdateUserDetailCommand

 $
:

% &
IRequest

' /
{ 
public 

DateOnly 
? 
DOB 
{ 
get 
; 
set  #
;# $
}% &
public 

string 
? 
Nationality 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
public 
class *
UpdateUserDetailCommandHandler +
(+ ,
ILogger, 3
<3 4*
UpdateUserDetailCommandHandler4 R
>R S
_loggerT [
,[ \
IUserContext] i
userContextj u
,u v

IUserStore	w Å
<
Å Ç
Domain
Ç à
.
à â
Entities
â ë
.
ë í
User
í ñ
>
ñ ó
	userStore
ò °
)
° ¢
:
£ §
IRequestHandler
• ¥
<
¥ µ%
UpdateUserDetailCommand
µ Ã
>
Ã Õ
{ 
public 

async 
Task 
Handle 
( #
UpdateUserDetailCommand 4
request5 <
,< =
CancellationToken> O
cancellationTokenP a
)a b
{ 
var 
user 
= 
userContext 
. 

GetCurrent )
() *
)* +
;+ ,
_logger 
. 
LogInformation 
( 
$str O
,O P
userQ U
!U V
.V W
IdW Y
,Y Z
request[ b
)b c
;c d
var 
dbUser 
= 
await 
	userStore $
.$ %
FindByIdAsync% 2
(2 3
user3 7
.7 8
Id8 :
,: ;
cancellationToken< M
)M N
;N O
if 

(
 
dbUser 
== 
null 
) 
throw 
new 
NotFoundException '
(' (
nameof( .
(. /
Domain/ 5
.5 6
Entities6 >
.> ?
User? C
)C D
,D E
userF J
.J K
IdK M
)M N
;N O
dbUser 
. 
DateOfBirth 
= 
request $
.$ %
DOB% (
;( )
dbUser 
. 
Nationality 
= 
request $
.$ %
Nationality% 0
!0 1
;1 2
await   
	userStore   
.   
UpdateAsync   #
(  # $
dbUser  $ *
,  * +
cancellationToken  , =
)  = >
;  > ?
}!! 
}"" ó
áC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\CQRS\Commands\UpdateDishCommand.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
CQRS& *
.* +
Commands+ 3
;3 4
public 
class 
UpdateDishCommand 
{ 
} Ù
çC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\CQRS\Commands\UpdateRestaurantCommand.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
CQRS& *
.* +
Commands+ 3
;3 4
public&& 
class&& #
UpdateRestaurantCommand&& $
:&&% &
IRequest&&' /
{'' 
public(( 

int(( 
Id(( 
{(( 
get(( 
;(( 
set(( 
;(( 
}(( 
public)) 

string)) 
Name)) 
{)) 
get)) 
;)) 
set)) !
;))! "
}))# $
=))% &
default))' .
!)). /
;))/ 0
public** 

string** 
Description** 
{** 
get**  #
;**# $
set**% (
;**( )
}*** +
=**, -
default**. 5
!**5 6
;**6 7
public++ 

bool++ 
HasDelivery++ 
{++ 
get++ !
;++! "
set++# &
;++& '
}++( )
},, 
public.. 
class.. *
UpdateRestaurantCommandHandler.. +
(..+ ,
ILogger.., 3
<..3 4*
UpdateRestaurantCommandHandler..4 R
>..R S
_logger..T [
,..[ \
IRestaurantService..] o"
restaurantsRepository	..p Ö
,
..Ö Ü
IMapper// 
mapper// 
)// 
:// 
IRequestHandler// %
<//% &#
UpdateRestaurantCommand//& =
>//= >
{00 
public11 

async11 
Task11 
Handle11 
(11 #
UpdateRestaurantCommand11 4
request115 <
,11< =
CancellationToken11> O
cancellationToken11P a
)11a b
{22 
_logger33 
.33 
LogInformation33 
(33 
$str33 d
,33d e
request33f m
.33m n
Id33n p
,33p q
request33r y
)33y z
;33z {
var44 

restaurant44 
=44 
await44 !
restaurantsRepository44 4
.444 5"
GetRestaurantByIdAsync445 K
(44K L
request44L S
.44S T
Id44T V
)44V W
;44W X
if55 

(55 

restaurant55 
is55 
null55 
)55 
throw66 
new66 
NotFoundException66 '
(66' (
nameof66( .
(66. /

Restaurant66/ 9
)669 :
,66: ;
request66< C
.66C D
Id66D F
.66F G
ToString66G O
(66O P
)66P Q
)66Q R
;66R S
mapper88 
.88 
Map88 
(88 
request88 
,88 

restaurant88 &
)88& '
;88' (
await== !
restaurantsRepository== #
.==# $
SaveChanges==$ /
(==/ 0
)==0 1
;==1 2
}>> 
}?? ©
çC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\CQRS\Commands\UnassignUserRoleCommand.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
CQRS& *
.* +
Commands+ 3
;3 4
public 
class #
UnassignUserRoleCommand $
:% &
IRequest' /
{		 
public

 

string

 
	UserEmail

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
=

* +
default

, 3
!

3 4
;

4 5
public 

string 
RoleName 
{ 
get  
;  !
set" %
;% &
}' (
=) *
default+ 2
!2 3
;3 4
} 
public 
class *
UnassignUserRoleCommandHandler +
(+ ,
ILogger, 3
<3 4*
UnassignUserRoleCommandHandler4 R
>R S
loggerT Z
,Z [
UserManager 
< 
Domain 
. 
Entities 
.  
User  $
>$ %
userManager& 1
,1 2
RoleManager 
< 
IdentityRole 
> 
roleManager )
)) *
:+ ,
IRequestHandler- <
<< =#
UnassignUserRoleCommand= T
>T U
{ 
public 

async 
Task 
Handle 
( #
UnassignUserRoleCommand 4
request5 <
,< =
CancellationToken> O
cancellationTokenP a
)a b
{ 
logger 
. 
LogInformation 
( 
$str A
,A B
requestC J
)J K
;K L
var 
user 
= 
await 
userManager $
.$ %
FindByEmailAsync% 5
(5 6
request6 =
.= >
	UserEmail> G
)G H
?? 
throw 
new 
NotFoundException *
(* +
nameof+ 1
(1 2
User2 6
)6 7
,7 8
request9 @
.@ A
	UserEmailA J
)J K
;K L
var 
role 
= 
await 
roleManager $
.$ %
FindByNameAsync% 4
(4 5
request5 <
.< =
RoleName= E
)E F
?? 
throw 
new 
NotFoundException *
(* +
nameof+ 1
(1 2
IdentityRole2 >
)> ?
,? @
requestA H
.H I
RoleNameI Q
)Q R
;R S
await 
userManager 
. 
RemoveFromRoleAsync -
(- .
user. 2
,2 3
role4 8
.8 9
Name9 =
!= >
)> ?
;? @
} 
} ˙
çC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\CQRS\Commands\DeleteRestaurantCommand.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
CQRS& *
.* +
Commands+ 3
;3 4
public

 
class

 #
DeleteRestaurantCommand

 $
:

% &
IRequest

' /
<

/ 0
bool

0 4
>

4 5
{ 
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
} 
public 
class *
DeleteRestaurantCommandHandler +
(+ ,
ILogger, 3
<3 4*
DeleteRestaurantCommandHandler4 R
>R S
_loggerT [
,[ \
IRestaurantService] o
_restaurantService	p Ç
,
Ç É-
IRestaurantAuthorizationService
Ñ £-
_restaurantAuthorizationService
§ √
)
√ ƒ
:
≈ ∆
IRequestHandler
« ÷
<
÷ ◊%
DeleteRestaurantCommand
◊ Ó
,
Ó Ô
bool
 Ù
>
Ù ı
{ 
public 

async 
Task 
< 
bool 
> 
Handle "
(" ##
DeleteRestaurantCommand# :
request; B
,B C
CancellationTokenD U
cancellationV b
)b c
{ 
_logger 
. 
LogInformation 
( 
$str L
,L M
requestN U
.U V
IdV X
)X Y
;Y Z
var 

restaurant 
= 
await 
_restaurantService 1
.1 2"
GetRestaurantByIdAsync2 H
(H I
requestI P
.P Q
IdQ S
)S T
;T U
if 

( 

restaurant 
is 
null 
) 
throw 
new 
NotFoundException '
(' (
nameof( .
(. /

Restaurant/ 9
)9 :
,: ;
request< C
.C D
IdD F
.F G
ToStringG O
(O P
)P Q
)Q R
;R S
if 

(
 
! +
_restaurantAuthorizationService +
.+ ,
	Authorize, 5
(5 6

restaurant6 @
,@ A
resourceOperationB S
:S T
ResourceOperationU f
.f g
Deleteg m
)m n
)n o
throw 
new $
ForbiddenAccessException .
(. /
)/ 0
;0 1
bool 
	isDeleted 
= 
await 
_restaurantService 1
.1 2
DeleteRestaurant2 B
(B C
requestC J
.J K
IdK M
)M N
;N O
return 
	isDeleted 
; 
} 
} É
âC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\CQRS\Commands\DeleteDishesCommand.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
CQRS& *
.* +
Commands+ 3
;3 4
public		 
class		 
DeleteDishesCommand		  
(		  !
int		! $
restaurantId		% 1
)		1 2
:		3 4
IRequest		5 =
{

 
public 

int 
RestaurantId 
{ 
get !
;! "
}# $
=% &
restaurantId' 3
;3 4
} 
public 
class &
DeleteDishesCommandHandler '
(' (
ILogger( /
</ 0&
DeleteDishesCommandHandler0 J
>J K
loggerL R
,R S
IRestaurantService !
restaurantsRepository ,
,, -
IDishService 
dishesRepository !
)! "
:# $
IRequestHandler% 4
<4 5
DeleteDishesCommand5 H
>H I
{ 
public 

async 
Task 
Handle 
( 
DeleteDishesCommand 0
request1 8
,8 9
CancellationToken: K
cancellationTokenL ]
)] ^
{ 
logger 
. 

LogWarning 
( 
$str O
,O P
requestQ X
.X Y
RestaurantIdY e
)e f
;f g
var 

restaurant 
= 
await !
restaurantsRepository 4
.4 5"
GetRestaurantByIdAsync5 K
(K L
requestL S
.S T
RestaurantIdT `
)` a
;a b
if 

( 

restaurant 
== 
null 
) 
throw  %
new& )
NotFoundException* ;
(; <
nameof< B
(B C

RestaurantC M
)M N
,N O
requestP W
.W X
RestaurantIdX d
.d e
ToStringe m
(m n
)n o
)o p
;p q
await 
dishesRepository 
. 
Delete %
(% &

restaurant& 0
.0 1
Dishes1 7
)7 8
;8 9
} 
} Ë
çC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\CQRS\Commands\CreateRestaurantCommand.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
CQRS& *
.* +
Commands+ 3
;3 4
public

 
class

 #
CreateRestaurantCommand

 $
:

% &
IRequest

' /
<

/ 0
int

0 3
>

3 4
{ 
public 

CreateRestaurantDto 
? 
CreateRestaurantDto  3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
} 
public 
class *
CreateRestaurantCommandHandler +
(+ ,
ILogger, 3
<3 4*
CreateRestaurantCommandHandler4 R
>R S
_loggerT [
,[ \
IRestaurantService] o
_restaurantService	p Ç
,
Ç É
IMapper
Ñ ã
_mapper
å ì
,
ì î
IUserContext
ï °
userContext
¢ ≠
)
≠ Æ
:
Ø ∞
IRequestHandler
± ¿
<
¿ ¡%
CreateRestaurantCommand
¡ ÿ
,
ÿ Ÿ
int
⁄ ›
>
› ﬁ
{ 
public 

async 
Task 
< 
int 
> 
Handle !
(! "#
CreateRestaurantCommand" 9
request: A
,A B
CancellationTokenC T
cancellationU a
)a b
{ 
var 
currentUser 
= 
userContext %
.% &

GetCurrent& 0
(0 1
)1 2
;2 3
_logger 
. 
LogInformation 
( 
$str b
,b c
currentUserd o
!o p
.p q
Emailq v
,v w
currentUser	x É
.
É Ñ
Id
Ñ Ü
,
Ü á
request
à è
)
è ê
;
ê ë
var 

restaurant 
= 
_mapper  
.  !
Map! $
<$ %
Domain% +
.+ ,
Entities, 4
.4 5

Restaurant5 ?
>? @
(@ A
requestA H
.H I
CreateRestaurantDtoI \
)\ ]
;] ^

restaurant 
. 
OwnerId 
= 
currentUser (
.( )
Id) +
;+ ,
int 
restaurantId 
= 
await  
_restaurantService! 3
.3 4
CreateRestaurant4 D
(D E

restaurantE O
)O P
;P Q
return 
restaurantId 
; 
} 
} ﬁ#
áC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\CQRS\Commands\CreateDishCommand.cs
	namespace		 	
Revision_Part_1		
 
.		 
Application		 %
.		% &
CQRS		& *
.		* +
Commands		+ 3
;		3 4
public 
class 
CreateDishCommand 
:  
IRequest! )
<) *
int* -
>- .
{ 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
=% &
default' .
!. /
;/ 0
public 

string 
Description 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
default. 5
!5 6
;6 7
public 

decimal 
Price 
{ 
get 
; 
set  #
;# $
}% &
public 

int 
? 
KiloCalories 
{ 
get "
;" #
set$ '
;' (
}) *
public 

int 
RestaurantId 
{ 
get !
;! "
set# &
;& '
}( )
} 
public 
class $
CreateDishCommandHandler %
(% &
ILogger& -
<- .$
CreateDishCommandHandler. F
>F G
loggerH N
,N O
IRestaurantService !
restaurantsRepository ,
,, -
IDishService 
dishesRepository !
,! "
IMapper 
mapper 
) 
: 
IRequestHandler %
<% &
CreateDishCommand& 7
,7 8
int9 <
>< =
{ 
public 

async 
Task 
< 
int 
> 
Handle !
(! "
CreateDishCommand" 3
request4 ;
,; <
CancellationToken= N
cancellationTokenO `
)` a
{ 
logger 
. 
LogInformation 
( 
$str A
,A B
requestC J
)J K
;K L
var 

restaurant 
= 
await !
restaurantsRepository 4
.4 5"
GetRestaurantByIdAsync5 K
(K L
requestL S
.S T
RestaurantIdT `
)` a
;a b
if 

( 

restaurant 
== 
null 
) 
throw  %
new& )
NotFoundException* ;
(; <
nameof< B
(B C

RestaurantC M
)M N
,N O
requestP W
.W X
RestaurantIdX d
.d e
ToStringe m
(m n
)n o
)o p
;p q
var   
dish   
=   
mapper   
.   
Map   
<   
Dish   "
>  " #
(  # $
request  $ +
)  + ,
;  , -
return"" 
await"" 
dishesRepository"" %
.""% &
Create""& ,
("", -
dish""- 1
)""1 2
;""2 3
}$$ 
}%% 
public'' 
class'' &
CreateDishCommandValidator'' '
:''( )
AbstractValidator''* ;
<''; <
CreateDishCommand''< M
>''M N
{(( 
public)) 
&
CreateDishCommandValidator)) %
())% &
)))& '
{** 
RuleFor++ 
(++ 
dish++ 
=>++ 
dish++ 
.++ 
Price++ "
)++" #
.,,  
GreaterThanOrEqualTo,, !
(,,! "
$num,," #
),,# $
.-- 
WithMessage-- 
(-- 
$str-- ?
)--? @
;--@ A
RuleFor00 
(00 
dish00 
=>00 
dish00 
.00 
KiloCalories00 )
)00) *
.11  
GreaterThanOrEqualTo11 !
(11! "
$num11" #
)11# $
.22 
WithMessage22 
(22 
$str22 F
)22F G
;22G H
}33 
}44 ò
ãC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1.Application\CQRS\Commands\AssignUserRoleCommand.cs
	namespace 	
Revision_Part_1
 
. 
Application %
.% &
CQRS& *
.* +
Commands+ 3
;3 4
public 
class !
AssignUserRoleCommand "
:# $
IRequest% -
{		 
public

 

string

 
	UserEmail

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
=

* +
default

, 3
!

3 4
;

4 5
public 

string 
RoleName 
{ 
get  
;  !
set" %
;% &
}' (
=) *
default+ 2
!2 3
;3 4
} 
public 
class (
AssignUserRoleCommandHandler )
() *
ILogger* 1
<1 2(
AssignUserRoleCommandHandler2 N
>N O
loggerP V
,V W
UserManager 
< 
Domain 
. 
Entities 
.  
User  $
>$ %
userManager& 1
,1 2
RoleManager 
< 
IdentityRole 
> 
roleManager )
)) *
:+ ,
IRequestHandler- <
<< =!
AssignUserRoleCommand= R
>R S
{ 
public 

async 
Task 
Handle 
( !
AssignUserRoleCommand 2
request3 :
,: ;
CancellationToken< M
cancellationTokenN _
)_ `
{ 
logger 
. 
LogInformation 
( 
$str ?
,? @
requestA H
)H I
;I J
var 
user 
= 
await 
userManager $
.$ %
FindByEmailAsync% 5
(5 6
request6 =
.= >
	UserEmail> G
)G H
?? 
throw 
new 
NotFoundException *
(* +
nameof+ 1
(1 2
User2 6
)6 7
,7 8
request9 @
.@ A
	UserEmailA J
)J K
;K L
var 
role 
= 
await 
roleManager $
.$ %
FindByNameAsync% 4
(4 5
request5 <
.< =
RoleName= E
)E F
?? 
throw 
new 
NotFoundException *
(* +
nameof+ 1
(1 2
IdentityRole2 >
)> ?
,? @
requestA H
.H I
RoleNameI Q
)Q R
;R S
await 
userManager 
. 
AddToRoleAsync (
(( )
user) -
,- .
role/ 3
.3 4
Name4 8
!8 9
)9 :
;: ;
} 
} 