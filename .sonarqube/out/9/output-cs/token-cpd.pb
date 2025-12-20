­
cC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1\Program.cs
try		 
{

 
var 
builder 
= 
WebApplication  
.  !
CreateBuilder! .
(. /
args/ 3
)3 4
;4 5
builder 
. 
AddPresentation 
( 
) 
; 
builder 
. 
Services 
. 
AddInfrastructure &
(& '
builder' .
.. /
Configuration/ <
)< =
;= >
builder 
. 
Services 
. 
AddApplication #
(# $
)$ %
;% &
var 
app 
= 
builder 
. 
Build 
( 
) 
; 
var 
scope 
= 
app 
. 
Services 
. 
CreateScope (
(( )
)) *
;* +
var 
seeder 
= 
scope 
. 
ServiceProvider &
.& '
GetRequiredService' 9
<9 :
IRestaurantSeeder: K
>K L
(L M
)M N
;N O
await 	
seeder
 
. 
Seed 
( 
) 
; 
if 
( 
app 
. 
Environment 
. 
IsDevelopment %
(% &
)& '
)' (
{ 
app 
. 

UseSwagger 
( 
) 
; 
app 
. 
UseSwaggerUI 
( 
) 
; 
} 
app 
. $
UseSerilogRequestLogging  
(  !
)! "
;" #
app 
. 
UseMiddleware 
< 
ExceptionHandling '
>' (
(( )
)) *
;* +
app 
. 
UseMiddleware 
< 
RequestTimeLogging (
>( )
() *
)* +
;+ ,
app!! 
.!! 
UseHttpsRedirection!! 
(!! 
)!! 
;!! 
app$$ 
.$$ 
MapGroup$$ 
($$ 
$str$$ 
)$$  
.$$  !
WithTags$$! )
($$) *
$str$$* 4
)$$4 5
.$$5 6
MapIdentityApi$$6 D
<$$D E
User$$E I
>$$I J
($$J K
)$$K L
;$$L M
app&& 
.&& 
UseAuthorization&& 
(&& 
)&& 
;&& 
app(( 
.(( 
MapControllers(( 
((( 
)(( 
;(( 
app** 
.** 
Run** 
(** 
)** 
;** 
},, 
catch-- 
(-- 
	Exception-- 
ex-- 
)-- 
{.. 
Log// 
.// 
Fatal// 
(// 
ex// 
,// 
$str// /
)/// 0
;//0 1
}00 
finally11 
{22 
Log33 
.33 
CloseAndFlush33 
(33 
)33 
;33 
}44 
public66 
partial66 
class66 
Program66 
{66 
}66  þ
zC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1\Middlewares\RequestTimeLogging.cs
	namespace 	
Revision_Part_1
 
. 
Middlewares %
;% &
public 
class 
RequestTimeLogging 
(  
ILogger  '
<' (
RequestTimeLogging( :
>: ;
_logger< C
)C D
:E F
IMiddlewareG R
{ 
public 

async 
Task 
InvokeAsync !
(! "
HttpContext" -
context. 5
,5 6
RequestDelegate7 F
nextG K
)K L
{		 
var

 
	stopWatch

 
=

 
	Stopwatch

 !
.

! "
StartNew

" *
(

* +
)

+ ,
;

, -
await 
next 
. 
Invoke 
( 
context !
)! "
;" #
	stopWatch 
. 
Stop 
( 
) 
; 
if 

(
 
	stopWatch 
. 
ElapsedMilliseconds (
/) *
$num+ /
>0 1
$num2 3
)3 4
{ 	
_logger 
. 

LogWarning 
( 
$str L
,L M
contextN U
.U V
RequestV ]
.] ^
Method^ d
,d e
contextf m
.m n
Requestn u
.u v
Pathv z
,z {
	stopWatch	| …
.
… †!
ElapsedMilliseconds
† ™
)
™ š
;
š ›
} 	
} 
} –
yC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1\Middlewares\ExceptionHandling.cs
	namespace 	
Revision_Part_1
 
. 
Middlewares %
{ 
public 

class 
ExceptionHandling "
(" #
ILogger# *
<* +
ExceptionHandling+ <
>< =
_logger> E
)E F
:G H
IMiddlewareI T
{ 
public 
async 
Task 
InvokeAsync %
(% &
HttpContext& 1
context2 9
,9 :
RequestDelegate; J
nextK O
)O P
{		 	
try

 
{ 
await 
next 
. 
Invoke !
(! "
context" )
)) *
;* +
} 
catch 
( 
NotFoundException $
notFound% -
)- .
{ 
context 
. 
Response  
.  !

StatusCode! +
=, -
$num. 1
;1 2
await 
context 
. 
Response &
.& '

WriteAsync' 1
(1 2
notFound2 :
.: ;
Message; B
)B C
;C D
} 
catch 
( $
ForbiddenAccessException +
forbidAccess, 8
)8 9
{ 
context 
. 
Response  
.  !

StatusCode! +
=, -
$num. 1
;1 2
await 
context 
. 
Response &
.& '

WriteAsync' 1
(1 2
forbidAccess2 >
.> ?
Message? F
)F G
;G H
} 
catch 
( 
	Exception 
ex 
)  
{ 
_logger 
. 
LogError  
(  !
ex! #
,# $
ex% '
.' (
Message( /
)/ 0
;0 1
context 
. 
Response  
.  !

StatusCode! +
=, -
$num. 1
;1 2
await 
context 
. 
Response &
.& '

WriteAsync' 1
(1 2
$str2 M
)M N
;N O
} 
} 	
} 
}   Ù
…C:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1\Extensions\WebApplicationBuilderExtension.cs
	namespace 	
Revision_Part_1
 
. 

Extensions $
;$ %
public 
static 
class *
WebApplicationBuilderExtension 2
{ 
public 

static 
void 
AddPresentation &
(& '
this' +!
WebApplicationBuilder, A
builderB I
)I J
{		 
builder

 
.

 
Services

 
.

 
AddControllers

 '
(

' (
)

( )
;

) *
builder 
. 
Services 
. #
AddEndpointsApiExplorer 0
(0 1
)1 2
;2 3
builder 
. 
Services 
. 
AddSwaggerGen &
(& '
c' (
=>) +
{ 	
c 
. !
AddSecurityDefinition #
(# $
$str$ 0
,0 1
new2 5
	Microsoft6 ?
.? @
OpenApi@ G
.G H
ModelsH N
.N O!
OpenApiSecuritySchemeO d
{ 
Type 
= 
	Microsoft  
.  !
OpenApi! (
.( )
Models) /
./ 0
SecuritySchemeType0 B
.B C
HttpC G
,G H
Scheme 
= 
$str !
} 
) 
; 
c 
. "
AddSecurityRequirement $
($ %
new% (
	Microsoft) 2
.2 3
OpenApi3 :
.: ;
Models; A
.A B&
OpenApiSecurityRequirementB \
{ 
{ 	
new 
	Microsoft 
. 
OpenApi !
.! "
Models" (
.( )!
OpenApiSecurityScheme) >
{ 
	Reference 
= 
new 
	Microsoft  )
.) *
OpenApi* 1
.1 2
Models2 8
.8 9
OpenApiReference9 I
{ 
Type 
= 
	Microsoft $
.$ %
OpenApi% ,
., -
Models- 3
.3 4
ReferenceType4 A
.A B
SecuritySchemeB P
,P Q
Id 
= 
$str %
} 
} 
, 
[ 
] 
}   	
}!! 
)!! 
;!! 
}"" 	
)""	 

;""
 
builder%% 
.%% 
Services%% 
.%% 
	AddScoped%% "
<%%" #
ExceptionHandling%%# 4
>%%4 5
(%%5 6
)%%6 7
;%%7 8
builder&& 
.&& 
Services&& 
.&& 
	AddScoped&& "
<&&" #
RequestTimeLogging&&# 5
>&&5 6
(&&6 7
)&&7 8
;&&8 9
builder)) 
.)) 
Host)) 
.)) 

UseSerilog)) 
())  
())  !
context))! (
,))( )
configuration))* 7
)))7 8
=>))9 ;
{** 	
configuration++ 
.,, 
ReadFrom,, 
.,, 
Configuration,, #
(,,# $
context,,$ +
.,,+ ,
Configuration,,, 9
),,9 :
;,,: ;
}11 	
)11	 

;11
 
}33 
}44 ÿ
uC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1\Controllers\YooController.cs
	namespace 	
Revision_Part_1
 
. 
Controllers %
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
YooController 
:  
ControllerBase! /
{		 
[

 	
HttpGet

	 
]

 
public 
IActionResult 
Get  
(  !
)! "
{ 	
return 
Ok 
( 
$str >
)> ?
;? @
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
IActionResult 
GetOne #
(# $
)$ %
{ 	
return 
Ok 
( 
$str +
)+ ,
;, -
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
IActionResult 
GetTwo #
(# $
)$ %
{ 	
return 
Ok 
( 
$str +
)+ ,
;, -
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
IActionResult 
GetThree %
(% &
)& '
{ 	
return 
Ok 
( 
$str 5
)5 6
;6 7
}   	
["" 	
HttpGet""	 
("" 
$str"" 
)"" 
]"" 
public## 
IActionResult## 
GetFour## $
(##$ %
)##% &
{$$ 	
return%% 
Ok%% 
(%% 
$str%% 0
)%%0 1
;%%1 2
}&& 	
[(( 	
HttpGet((	 
((( 
$str(( 
)(( 
](( 
public)) 
IActionResult)) 
GetFive)) $
())$ %
)))% &
{** 	
return++ 
Ok++ 
(++ 
$str++ 0
)++0 1
;++1 2
},, 	
}-- 
}.. •9
}C:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1\Controllers\RestaurantsController.cs
	namespace

 	
Revision_Part_1


 
.

 
Controllers

 %
;

% &
[ 
Route 
( 
$str 
) 
] 
[ 
ApiController 
] 
public,, 
class,, !
RestaurantsController,, "
(,," #
	IMediator,,# ,(
_additionalRestaurantService,,- I
),,I J
:,,K L
ControllerBase,,M [
{-- 
[.. 
HttpGet.. 
].. 
[//  
ProducesResponseType// 
(// 
StatusCodes// %
.//% &
Status200OK//& 1
,//1 2
Type//3 7
=//8 9
typeof//: @
(//@ A
IEnumerable//A L
<//L M
RestaurantDto//M Z
>//Z [
)//[ \
)//\ ]
]//] ^
public33 

async33 
Task33 
<33 
IActionResult33 #
>33# $
GetAll33% +
(33+ ,
)33, -
{44 
var66 
restaurants66 
=66 
await66 (
_additionalRestaurantService66  <
.66< =
Send66= A
(66A B
new66B E!
GetAllRestaurantQuery66F [
(66[ \
)66\ ]
)66] ^
;66^ _
return77 
Ok77 
(77 
restaurants77 
)77 
;77 
}88 
[:: 
HttpGet:: 
(:: 
$str:: 
):: 
]:: 
public<< 

async<< 
Task<< 
<<< 
IActionResult<< #
><<# $
GetById<<% ,
(<<, -
int<<- 0
id<<1 3
)<<3 4
{== 
var>> 

restaurant>> 
=>> 
await>> (
_additionalRestaurantService>> ;
.>>; <
Send>>< @
(>>@ A
new>>A D"
GetRestaurantByIdQuery>>E [
(>>[ \
)>>\ ]
{>>^ _
Id>>` b
=>>c d
id>>e g
}>>h i
)>>i j
;>>j k
if?? 

(?? 

restaurant?? 
is?? 
null?? 
)?? 
return@@ 
NotFound@@ 
(@@ 
)@@ 
;@@ 
returnBB 
OkBB 
(BB 

restaurantBB 
)BB 
;BB 
}CC 
[EE 
HttpPostEE 
]EE 
publicFF 

asyncFF 
TaskFF 
<FF 
IActionResultFF #
>FF# $
CreateRestaurantFF% 5
(FF5 6
[FF6 7
FromBodyFF7 ?
]FF? @
CreateRestaurantDtoFFA T
createRestaurantDtoFFU h
)FFh i
{GG 
ifHH 

(HH 
!HH 

ModelStateHH 
.HH 
IsValidHH 
)HH  
returnII 

BadRequestII 
(II 

ModelStateII (
)II( )
;II) *
intKK 
idKK 
=KK 
awaitKK (
_additionalRestaurantServiceKK 3
.KK3 4
SendKK4 8
(KK8 9
newKK9 <#
CreateRestaurantCommandKK= T
(KKT U
)KKU V
{KKW X
CreateRestaurantDtoKKY l
=KKm n 
createRestaurantDto	KKo ‚
}
KKƒ „
)
KK„ …
;
KK… †
returnLL 
CreatedAtActionLL 
(LL 
nameofLL %
(LL% &
GetByIdLL& -
)LL- .
,LL. /
newLL0 3
{LL4 5
idLL6 8
=LL9 :
idLL; =
}LL> ?
,LL? @
nullLLA E
)LLE F
;LLF G
}MM 
[OO 

HttpDeleteOO 
(OO 
$strOO 
)OO 
]OO 
publicPP 

asyncPP 
TaskPP 
<PP 
IActionResultPP #
>PP# $
DeleteRestaurantPP% 5
(PP5 6
[PP6 7
	FromRoutePP7 @
]PP@ A
intPPB E
idPPF H
)PPH I
{QQ 
varRR 

restaurantRR 
=RR 
awaitRR (
_additionalRestaurantServiceRR ;
.RR; <
SendRR< @
(RR@ A
newRRA D#
DeleteRestaurantCommandRRE \
(RR\ ]
)RR] ^
{RR_ `
IdRRa c
=RRd e
idRRf h
}RRi j
)RRj k
;RRk l
ifSS 

(SS 
!SS 

restaurantSS 
)SS 
returnTT 
NotFoundTT 
(TT 
)TT 
;TT 
returnVV 
OkVV 
(VV 

restaurantVV 
)VV 
;VV 
}WW 
[YY 
	HttpPatchYY 
(YY 
$strYY 
)YY 
]YY 
[ZZ  
ProducesResponseTypeZZ 
(ZZ 
StatusCodesZZ %
.ZZ% &
Status204NoContentZZ& 8
)ZZ8 9
]ZZ9 :
[[[  
ProducesResponseType[[ 
([[ 
StatusCodes[[ %
.[[% &
Status404NotFound[[& 7
)[[7 8
][[8 9
public\\ 

async\\ 
Task\\ 
<\\ 
IActionResult\\ #
>\\# $
UpdateRestaurant\\% 5
(\\5 6
[\\6 7
	FromRoute\\7 @
]\\@ A
int\\B E
id\\F H
,\\H I#
UpdateRestaurantCommand\\J a
command\\b i
)\\i j
{]] 
command^^ 
.^^ 
Id^^ 
=^^ 
id^^ 
;^^ 
await__ (
_additionalRestaurantService__ *
.__* +
Send__+ /
(__/ 0
command__0 7
)__7 8
;__8 9
returnbb 
	NoContentbb 
(bb 
)bb 
;bb 
}ee 
[hh 
HttpPosthh 
(hh 
$strhh 
)hh 
]hh 
publicii 

asyncii 
Taskii 
<ii 
IActionResultii #
>ii# $

UploadLogoii% /
(ii/ 0
[ii0 1
	FromRouteii1 :
]ii: ;
intii< ?
idii@ B
,iiB C
	IFormFileiiD M
fileiiN R
)iiR S
{jj 
usingkk 
varkk 
streamkk 
=kk 
filekk 
.kk  
OpenReadStreamkk  .
(kk. /
)kk/ 0
;kk0 1
varmm 
commandmm 
=mm 
newmm '
UploadRestaurantLogoCommandmm 5
(mm5 6
)mm6 7
{nn 	
RestaurantIdoo 
=oo 
idoo 
,oo 
FileNamepp 
=pp 
filepp 
.pp 
FileNamepp $
,pp$ %
Fileqq 
=qq 
streamqq 
}rr 	
;rr	 

awaittt (
_additionalRestaurantServicett *
.tt* +
Sendtt+ /
(tt/ 0
commandtt0 7
)tt7 8
;tt8 9
returnuu 
	NoContentuu 
(uu 
)uu 
;uu 
}vv 
}ww ’
zC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1\Controllers\IdentityController.cs
	namespace 	
Revision_Part_1
 
. 
Controllers %
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
IdentityController #
(# $
	IMediator$ -
mediator. 6
)6 7
:8 9
ControllerBase: H
{ 
[ 	
	HttpPatch	 
( 
$str 
) 
] 
[ 	
	Authorize	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
UpdateUserDetails) :
(: ;#
UpdateUserDetailCommand; R
commandS Z
)Z [
{ 	
await 
mediator 
. 
Send 
(  
command  '
)' (
;( )
return 
	NoContent 
( 
) 
; 
} 	
[ 	
HttpPost	 
( 
$str 
) 
] 
[ 	
	Authorize	 
( 
Roles 
= 
$str "
)" #
]# $
public 
async 
Task 
< 
IActionResult '
>' (
AssignUserRole) 7
(7 8!
AssignUserRoleCommand8 M
commandN U
)U V
{ 	
await 
mediator 
. 
Send 
(  
command  '
)' (
;( )
return 
	NoContent 
( 
) 
; 
} 	
[ 	

HttpDelete	 
( 
$str 
) 
]  
[ 	
	Authorize	 
( 
Roles 
= 
$str "
)" #
]# $
public 
async 
Task 
< 
IActionResult '
>' (
UnassignUserRole) 9
(9 :#
UnassignUserRoleCommand: Q
commandR Y
)Y Z
{   	
await!! 
mediator!! 
.!! 
Send!! 
(!!  
command!!  '
)!!' (
;!!( )
return"" 
	NoContent"" 
("" 
)"" 
;"" 
}## 	
}$$ 
}%% « 
xC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\src\Revision_Part_1\Controllers\DishesController.cs
	namespace		 	
Revision_Part_1		
 
.		 
Controllers		 %
{

 
[ 
Route 

(
 
$str 2
)2 3
]3 4
[ 
ApiController 
] 
public 

class 
DishesController !
(! "
	IMediator" +
mediator, 4
)4 5
:6 7
ControllerBase8 F
{ 
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
IActionResult '
>' (

CreateDish) 3
(3 4
[4 5
	FromRoute5 >
]> ?
int@ C
restaurantIdD P
,P Q
CreateDishCommandR c
commandd k
)k l
{ 	
command 
. 
RestaurantId  
=! "
restaurantId# /
;/ 0
var 
dishId 
= 
await 
mediator '
.' (
Send( ,
(, -
command- 4
)4 5
;5 6
return 
CreatedAtAction "
(" #
nameof# )
() * 
GetByIdForRestaurant* >
)> ?
,? @
newA D
{E F
restaurantIdG S
,S T
dishIdU [
}\ ]
,] ^
null_ c
)c d
;d e
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
DishDto3 :
>: ;
>; <
>< =
GetAllForRestaurant> Q
(Q R
[R S
	FromRouteS \
]\ ]
int^ a
restaurantIdb n
)n o
{ 	
var 
dishes 
= 
await 
mediator '
.' (
Send( ,
(, -
new- 0
GetAllDishQuery1 @
(@ A
restaurantIdA M
)M N
)N O
;O P
return 
Ok 
( 
dishes 
) 
; 
} 	
[   	
HttpGet  	 
(   
$str   
)   
]   
public!! 
async!! 
Task!! 
<!! 
ActionResult!! &
<!!& '
DishDto!!' .
>!!. /
>!!/ 0 
GetByIdForRestaurant!!1 E
(!!E F
[!!F G
	FromRoute!!G P
]!!P Q
int!!R U
restaurantId!!V b
,!!b c
[!!d e
	FromRoute!!e n
]!!n o
int!!p s
dishId!!t z
)!!z {
{"" 	
var## 
dish## 
=## 
await## 
mediator## %
.##% &
Send##& *
(##* +
new##+ .
GetDishByIdQuery##/ ?
(##? @
restaurantId##@ L
,##L M
dishId##N T
)##T U
)##U V
;##V W
return$$ 
Ok$$ 
($$ 
dish$$ 
)$$ 
;$$ 
}%% 	
['' 	

HttpDelete''	 
]'' 
public(( 
async(( 
Task(( 
<(( 
IActionResult(( '
>((' (%
DeleteDishesForRestaurant(() B
(((B C
[((C D
	FromRoute((D M
]((M N
int((O R
restaurantId((S _
)((_ `
{)) 	
await** 
mediator** 
.** 
Send** 
(**  
new**  #
DeleteDishesCommand**$ 7
(**7 8
restaurantId**8 D
)**D E
)**E F
;**F G
return++ 
	NoContent++ 
(++ 
)++ 
;++ 
},, 	
}-- 
}.. 