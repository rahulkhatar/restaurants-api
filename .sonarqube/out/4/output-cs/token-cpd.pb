™9
C:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\tests\Unit.Tests\Validators\CreateRestarantValidatorTests.cs
	namespace 	
Unit
 
. 
Tests 
. 

Validators 
;  
public 
class )
CreateRestarantValidatorTests *
{		 
[

 
Fact

 	
(

	 

)


 
]

 
public 

void C
7Validator_ForValidCommand_ShouldNotHaveValidationErrors G
(G H
)H I
{ 
var 
command 
= 
new #
CreateRestaurantCommand 1
(1 2
)2 3
{ 	
CreateRestaurantDto 
=  !
new" %
CreateRestaurantDto& 9
{ 
Name 
= 
$str )
,) *
Category 
= 
$str $
,$ %
ContactEmail 
= 
$str .
,. /

PostalCode 
= 
$str %
} 
} 	
;	 

var 
	validator 
= 
new &
CreateRestaurantValidation 6
(6 7
)7 8
;8 9
var 
result 
= 
	validator 
. 
TestValidate +
(+ ,
command, 3
)3 4
;4 5
result 
. ,
 ShouldNotHaveAnyValidationErrors /
(/ 0
)0 1
;1 2
} 
[!! 
Fact!! 	
(!!	 

)!!
 
]!! 
public"" 

void"" B
6Validator_ForInvalidCommand_ShouldHaveValidationErrors"" F
(""F G
)""G H
{## 
var%% 
command%% 
=%% 
new%% #
CreateRestaurantCommand%% 1
(%%1 2
)%%2 3
{&& 	
CreateRestaurantDto'' 
=''  !
new''" %
CreateRestaurantDto''& 9
{(( 
Name)) 
=)) 
$str)) 
,)) 
Category** 
=** 
$str**  
,**  !
ContactEmail++ 
=++ 
$str++ *
,++* +

PostalCode,, 
=,, 
$str,, $
}-- 
}.. 	
;..	 

var// 
	validator// 
=// 
new// &
CreateRestaurantValidation// 6
(//6 7
)//7 8
;//8 9
var22 
result22 
=22 
	validator22 
.22 
TestValidate22 +
(22+ ,
command22, 3
)223 4
;224 5
result55 
.55 (
ShouldHaveValidationErrorFor55 +
(55+ ,
c55, -
=>55. 0
c551 2
.552 3
CreateRestaurantDto553 F
!55F G
.55G H
Name55H L
)55L M
;55M N
result66 
.66 (
ShouldHaveValidationErrorFor66 +
(66+ ,
c66, -
=>66. 0
c661 2
.662 3
CreateRestaurantDto663 F
!66F G
.66G H
Category66H P
)66P Q
;66Q R
result77 
.77 (
ShouldHaveValidationErrorFor77 +
(77+ ,
c77, -
=>77. 0
c771 2
.772 3
CreateRestaurantDto773 F
!77F G
.77G H
ContactEmail77H T
)77T U
;77U V
result88 
.88 (
ShouldHaveValidationErrorFor88 +
(88+ ,
c88, -
=>88. 0
c881 2
.882 3
CreateRestaurantDto883 F
!88F G
.88G H

PostalCode88H R
)88R S
;88S T
}99 
[;; 
Theory;; 
];; 
[<< 

InlineData<< 
(<< 
$str<< 
)<< 
]<< 
[== 

InlineData== 
(== 
$str== 
)== 
]== 
[>> 

InlineData>> 
(>> 
$str>> 
)>> 
]>> 
[?? 

InlineData?? 
(?? 
$str?? 
)?? 
]?? 
[@@ 

InlineData@@ 
(@@ 
$str@@ 
)@@ 
]@@ 
publicAA 

voidAA F
:Validator_ForValidCategories_ShouldNotHaveValidationErrorsAA J
(AAJ K
stringAAK Q
categoryAAR Z
)AAZ [
{BB 
varDD 
	validatorDD 
=DD 
newDD &
CreateRestaurantValidationDD 6
(DD6 7
)DD7 8
;DD8 9
varEE 
commandEE 
=EE 
newEE #
CreateRestaurantCommandEE 1
(EE1 2
)EE2 3
{FF 	
CreateRestaurantDtoGG 
=GG  !
newGG" %
CreateRestaurantDtoGG& 9
{HH 
CategoryII 
=II 
categoryII #
,II# $
}JJ 
}KK 	
;KK	 

varNN 
resultNN 
=NN 
	validatorNN 
.NN 
TestValidateNN +
(NN+ ,
commandNN, 3
)NN3 4
;NN4 5
resultQQ 
.QQ +
ShouldNotHaveValidationErrorForQQ .
(QQ. /
cQQ/ 0
=>QQ1 3
cQQ4 5
.QQ5 6
CreateRestaurantDtoQQ6 I
!QQI J
.QQJ K
CategoryQQK S
)QQS T
;QQT U
}RR 
[TT 
TheoryTT 
]TT 
[UU 

InlineDataUU 
(UU 
$strUU 
)UU 
]UU 
[VV 

InlineDataVV 
(VV 
$strVV 
)VV 
]VV 
[WW 

InlineDataWW 
(WW 
$strWW 
)WW 
]WW 
[XX 

InlineDataXX 
(XX 
$strXX 
)XX 
]XX 
publicYY 

voidYY F
:Validator_ForValidPostalCode_ShouldNotHaveValidationErrorsYY J
(YYJ K
stringYYK Q

postalCodeYYR \
)YY\ ]
{ZZ 
var\\ 
	validator\\ 
=\\ 
new\\ &
CreateRestaurantValidation\\ 6
(\\6 7
)\\7 8
;\\8 9
var]] 
command]] 
=]] 
new]] #
CreateRestaurantCommand]] 1
(]]1 2
)]]2 3
{^^ 	
CreateRestaurantDto__ 
=__  !
new__" %
CreateRestaurantDto__& 9
{`` 

PostalCodeaa 
=aa 

postalCodeaa '
,aa' (
}bb 
}cc 	
;cc	 

varff 
resultff 
=ff 
	validatorff 
.ff 
TestValidateff +
(ff+ ,
commandff, 3
)ff3 4
;ff4 5
resultii 
.ii (
ShouldHaveValidationErrorForii +
(ii+ ,
cii, -
=>ii. 0
cii1 2
.ii2 3
CreateRestaurantDtoii3 F
!iiF G
.iiG H

PostalCodeiiH R
)iiR S
;iiS T
}jj 
}kk ¹
oC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\tests\Unit.Tests\Users\CurrentUserTests.cs
	namespace 	
Unit
 
. 
Tests 
. 
Users 
; 
public 
class 
CurrentUserTests 
{ 
[

 
Theory

 
(

 
)

 
]

 
[ 

InlineData 
( 
$str 
) 
] 
[ 

InlineData 
( 
$str 
) 
] 
public 

void 6
*IsInRole_WithMatchingRole_ShouldReturnTrue :
(: ;
string; A
roleNameB J
)J K
{ 
var 
currentUser 
= 
new 
Current %
(% &
$str& )
,) *
$str+ :
,: ;
[< =
$str= D
,D E
$strF L
]L M
,M N
nullO S
,S T
nullU Y
)Y Z
;Z [
var 
isInRole 
= 
currentUser "
." #
IsInRole# +
(+ ,
roleName, 4
)4 5
;5 6
isInRole 
. 
Should 
( 
) 
. 
BeTrue  
(  !
)! "
;" #
} 
[ 
Fact 	
(	 

)
 
] 
public 

void 9
-IsInRole_WithNoMatchingRole_ShouldReturnFalse =
(= >
)> ?
{ 
var 
currentUser 
= 
new 
Current %
(% &
$str& )
,) *
$str+ :
,: ;
[< =
$str= D
,D E
$strF L
]L M
,M N
nullO S
,S T
nullU Y
)Y Z
;Z [
var   
isInRole   
=   
currentUser   "
.  " #
IsInRole  # +
(  + ,
$str  , 3
)  3 4
;  4 5
isInRole## 
.## 
Should## 
(## 
)## 
.## 
BeFalse## !
(##! "
)##" #
;### $
}$$ 
[&& 
Fact&& 	
(&&	 

)&&
 
]&& 
public'' 

void'' =
1IsInRole_WithNoMatchingRoleCase_ShouldReturnFalse'' A
(''A B
)''B C
{(( 
var** 
currentUser** 
=** 
new** 
Current** %
(**% &
$str**& )
,**) *
$str**+ :
,**: ;
[**< =
$str**= D
,**D E
$str**F L
]**L M
,**M N
null**O S
,**S T
null**U Y
)**Y Z
;**Z [
var-- 
isInRole-- 
=-- 
currentUser-- "
.--" #
IsInRole--# +
(--+ ,
$str--, 3
)--3 4
;--4 5
isInRole00 
.00 
Should00 
(00 
)00 
.00 
BeFalse00 !
(00! "
)00" #
;00# $
}11 
}22 ù/
oC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\tests\Unit.Tests\Users\UserContextTests.cs
	namespace 	
Unit
 
. 
Tests 
. 
Users 
; 
public		 
class		 
UserContextTests		 
{

 
[ 
Fact 	
(	 

)
 
] 
public 

void L
@GetCurrentUserTest_WithAuthenticatedUser_ShouldReturnCurrentUser P
(P Q
)Q R
{ 
var #
httpContextAccessorMock #
=$ %
new& )
Mock* .
<. / 
IHttpContextAccessor/ C
>C D
(D E
)E F
;F G
var 
dateOfBirth 
= 
new 
DateOnly &
(& '
$num' +
,+ ,
$num- .
,. /
$num0 1
)1 2
;2 3
var 
claims 
= 
new 
List 
< 
Claim #
># $
($ %
)% &
{ 	
new 
( 

ClaimTypes 
. 
NameIdentifier *
,* +
$str, /
)/ 0
,0 1
new 
( 

ClaimTypes 
. 
Email !
,! "
$str# 2
)2 3
,3 4
new 
( 

ClaimTypes 
. 
Role  
,  !
$str" )
)) *
,* +
new 
( 

ClaimTypes 
. 
Role  
,  !
$str" (
)( )
,) *
new 
( 
$str 
, 
$str  (
)( )
,) *
new 
( 
$str 
, 
dateOfBirth  +
.+ ,
ToString, 4
(4 5
$str5 A
)A B
)B C
} 	
;	 

var 
user 
= 
new 
ClaimsPrincipal &
(& '
new' *
ClaimsIdentity+ 9
(9 :
claims: @
,@ A
$strB H
)H I
)I J
;J K#
httpContextAccessorMock 
.  
Setup  %
(% &
x& '
=>( *
x+ ,
., -
HttpContext- 8
)8 9
.9 :
Returns: A
(A B
newB E
DefaultHttpContextF X
(X Y
)Y Z
{ 	
User 
= 
user 
}   	
)  	 

;  
 
var"" 
userContext"" 
="" 
new"" 
UserContext"" )
("") *#
httpContextAccessorMock""* A
.""A B
Object""B H
)""H I
;""I J
var%% 
currentUser%% 
=%% 
userContext%% %
.%%% &

GetCurrent%%& 0
(%%0 1
)%%1 2
;%%2 3
currentUser(( 
.(( 
Should(( 
((( 
)(( 
.(( 
	NotBeNull(( &
(((& '
)((' (
;((( )
currentUser)) 
!)) 
.)) 
Id)) 
.)) 
Should)) 
()) 
)))  
.))  !
Be))! #
())# $
$str))$ '
)))' (
;))( )
currentUser** 
.** 
Email** 
.** 
Should**  
(**  !
)**! "
.**" #
Be**# %
(**% &
$str**& 5
)**5 6
;**6 7
currentUser++ 
.++ 
Roles++ 
.++ 
Should++  
(++  !
)++! "
.++" #
ContainInOrder++# 1
(++1 2
$str++3 :
,++: ;
$str++< B
)++B C
;++C D
currentUser,, 
.,, 
Nationality,, 
.,,  
Should,,  &
(,,& '
),,' (
.,,( )
Be,,) +
(,,+ ,
$str,,, 4
),,4 5
;,,5 6
currentUser-- 
.-- 
DateOfBirth-- 
.--  
Should--  &
(--& '
)--' (
.--( )
Be--) +
(--+ ,
dateOfBirth--, 7
)--7 8
;--8 9
}.. 
[00 
Fact00 	
(00	 

)00
 
]00 
public11 

void11 W
KGetCurrentUserTest_WithUserContextNotPresent_ThrowInvalidOperationException11 [
(11[ \
)11\ ]
{22 
var44 #
httpContextAccessorMock44 #
=44$ %
new44& )
Mock44* .
<44. / 
IHttpContextAccessor44/ C
>44C D
(44D E
)44E F
;44F G#
httpContextAccessorMock55 
.55  
Setup55  %
(55% &
x55& '
=>55( *
x55+ ,
.55, -
HttpContext55- 8
)558 9
.559 :
Returns55: A
(55A B
(55B C
HttpContext55C N
)55N O
null55O S
)55S T
;55T U
var77 
userContext77 
=77 
new77 
UserContext77 )
(77) *#
httpContextAccessorMock77* A
.77A B
Object77B H
)77H I
;77I J
Action:: 
action:: 
=:: 
(:: 
):: 
=>:: 
userContext:: )
.::) *

GetCurrent::* 4
(::4 5
)::5 6
;::6 7
action== 
.== 
Should== 
(== 
)== 
.== 
Throw== 
<== %
InvalidOperationException== 7
>==7 8
(==8 9
)==9 :
.==: ;
WithMessage==; F
(==F G
$str==G e
)==e f
;==f g
}>> 
}?? Ã
”C:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\tests\Unit.Tests\Middlewares\CreateMultipleRestaurantRequirementHandlerTests.cs
	namespace

 	
Unit


 
.

 
Tests

 
.

 
Middlewares

  
;

  !
public 
class ;
/CreateMultipleRestaurantRequirementHandlerTests <
{ 
[ 
Fact 	
(	 

)
 
] 
public 

async 
Task R
FHandleRequirementAsync_UserHasCreatedMultipleRestaurants_ShouldSucceed \
(\ ]
)] ^
{ 
var 
userContextMock 
= 
new !
Mock" &
<& '
IUserContext' 3
>3 4
(4 5
)5 6
;6 7
var 
currentUser 
= 
new 
Current %
(% &
$str& )
,) *
$str+ =
,= >
[? @
]@ A
,A B
nullC G
,G H
nullI M
)M N
;N O
userContextMock 
. 
Setup 
( 
uc  
=>! #
uc$ &
.& '

GetCurrent' 1
(1 2
)2 3
)3 4
.4 5
Returns5 <
(< =
currentUser= H
)H I
;I J
var 
restaurants 
= 
new 
List "
<" #

Restaurant# -
>- .
{ 	
new 
( 
) 
{ 
OwnerId 
= 
currentUser %
.% &
Id& (
,( )
} 
, 
new 
( 
) 
{ 
OwnerId 
= 
currentUser %
.% &
Id& (
,( )
}   
,   
new!! 
(!! 
)!! 
{"" 
OwnerId## 
=## 
$str## 
,## 
}$$ 
}%% 	
;%%	 

var'' !
restaurantServiceMock'' !
=''" #
new''$ '
Mock''( ,
<'', -
IRestaurantService''- ?
>''? @
(''@ A
)''A B
;''B C!
restaurantServiceMock(( 
.(( 
Setup(( #
(((# $
r(($ %
=>((& (
r(() *
.((* +
GetAllAsync((+ 6
(((6 7
)((7 8
)((8 9
.((9 :
ReturnsAsync((: F
(((F G
restaurants((G R
)((R S
;((S T
var** 
requirement** 
=** 
new** 1
%CreatedMultipleRestaurantsRequirement** C
(**C D
$num**D E
)**E F
;**F G
var++ 
handler++ 
=++ 
new++ 8
,CreatedMultipleRestaurantsRequirementHandler++ F
(++F G!
restaurantServiceMock++G \
.++\ ]
Object++] c
,++c d
userContextMock++e t
.++t u
Object++u {
)++{ |
;++| }
var,, 
context,, 
=,, 
new,, '
AuthorizationHandlerContext,, 5
(,,5 6
[,,6 7
requirement,,7 B
],,B C
,,,C D
null,,E I
,,,I J
null,,K O
),,O P
;,,P Q
await// 
handler// 
.// 
HandleAsync// !
(//! "
context//" )
)//) *
;//* +
context22 
.22 
HasSucceeded22 
.22 
Should22 #
(22# $
)22$ %
.22% &
BeTrue22& ,
(22, -
)22- .
;22. /
}33 
}44 ‹3
{C:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\tests\Unit.Tests\Middlewares\ExceptionHandlingTests.cs
	namespace 	
Unit
 
. 
Tests 
. 
Middlewares  
;  !
public 
class "
ExceptionHandlingTests #
{ 
[ 
Fact 	
(	 

)
 
] 
public 

async 
Task D
8InvokeAsync_WhenNoExceptionThrown_ShouldCallNextDelegate N
(N O
)O P
{ 
var 

loggerMock 
= 
new 
Mock !
<! "
ILogger" )
<) *
ExceptionHandling* ;
>; <
>< =
(= >
)> ?
;? @
var 

middleware 
= 
new 
ExceptionHandling .
(. /

loggerMock/ 9
.9 :
Object: @
)@ A
;A B
var 
context 
= 
new 
DefaultHttpContext ,
(, -
)- .
;. /
var 
nextDelegateMock 
= 
new "
Mock# '
<' (
RequestDelegate( 7
>7 8
(8 9
)9 :
;: ;
await 

middleware 
. 
InvokeAsync $
($ %
context% ,
,, -
nextDelegateMock. >
.> ?
Object? E
)E F
;F G
nextDelegateMock 
. 
Verify 
(  
next  $
=>% '
next( ,
., -
Invoke- 3
(3 4
context4 ;
); <
,< =
Times> C
.C D
OnceD H
)H I
;I J
} 
[   
Fact   	
]  	 

public!! 

async!! 
Task!! J
>InvokeAsync_WhenNotFoundExceptionThrown_ShouldSetStatusCode404!! T
(!!T U
)!!U V
{"" 
var$$ 
context$$ 
=$$ 
new$$ 
DefaultHttpContext$$ ,
($$, -
)$$- .
;$$. /
var%% 

loggerMock%% 
=%% 
new%% 
Mock%% !
<%%! "
ILogger%%" )
<%%) *
ExceptionHandling%%* ;
>%%; <
>%%< =
(%%= >
)%%> ?
;%%? @
var&& 

middleware&& 
=&& 
new&& 
ExceptionHandling&& .
(&&. /

loggerMock&&/ 9
.&&9 :
Object&&: @
)&&@ A
;&&A B
var'' 
notFoundException'' 
='' 
new''  #
NotFoundException''$ 5
(''5 6
nameof''6 <
(''< =

Restaurant''= G
)''G H
,''H I
$str''J M
)''M N
;''N O
await** 

middleware** 
.** 
InvokeAsync** $
(**$ %
context**% ,
,**, -
_**. /
=>**0 2
throw**3 8
notFoundException**9 J
)**J K
;**K L
context-- 
.-- 
Response-- 
.-- 

StatusCode-- #
.--# $
Should--$ *
(--* +
)--+ ,
.--, -
Be--- /
(--/ 0
$num--0 3
)--3 4
;--4 5
}// 
[11 
Fact11 	
]11	 

public22 

async22 
Task22 H
<InvokeAsync_WhenForbidExceptionThrown_ShouldSetStatusCode40322 R
(22R S
)22S T
{33 
var55 
context55 
=55 
new55 
DefaultHttpContext55 ,
(55, -
)55- .
;55. /
var66 

loggerMock66 
=66 
new66 
Mock66 !
<66! "
ILogger66" )
<66) *
ExceptionHandling66* ;
>66; <
>66< =
(66= >
)66> ?
;66? @
var77 

middleware77 
=77 
new77 
ExceptionHandling77 .
(77. /

loggerMock77/ 9
.779 :
Object77: @
)77@ A
;77A B
var88 
	exception88 
=88 
new88 $
ForbiddenAccessException88 4
(884 5
)885 6
;886 7
await;; 

middleware;; 
.;; 
InvokeAsync;; $
(;;$ %
context;;% ,
,;;, -
_;;. /
=>;;0 2
throw;;3 8
	exception;;9 B
);;B C
;;;C D
context>> 
.>> 
Response>> 
.>> 

StatusCode>> #
.>># $
Should>>$ *
(>>* +
)>>+ ,
.>>, -
Be>>- /
(>>/ 0
$num>>0 3
)>>3 4
;>>4 5
}@@ 
[BB 
FactBB 	
]BB	 

publicCC 

asyncCC 
TaskCC I
=InvokeAsync_WhenGenericExceptionThrown_ShouldSetStatusCode500CC S
(CCS T
)CCT U
{DD 
varFF 
contextFF 
=FF 
newFF 
DefaultHttpContextFF ,
(FF, -
)FF- .
;FF. /
varGG 

loggerMockGG 
=GG 
newGG 
MockGG !
<GG! "
ILoggerGG" )
<GG) *
ExceptionHandlingGG* ;
>GG; <
>GG< =
(GG= >
)GG> ?
;GG? @
varHH 

middlewareHH 
=HH 
newHH 
ExceptionHandlingHH .
(HH. /

loggerMockHH/ 9
.HH9 :
ObjectHH: @
)HH@ A
;HHA B
varII 
	exceptionII 
=II 
newII 
	ExceptionII %
(II% &
)II& '
;II' (
awaitLL 

middlewareLL 
.LL 
InvokeAsyncLL $
(LL$ %
contextLL% ,
,LL, -
_LL. /
=>LL0 2
throwLL3 8
	exceptionLL9 B
)LLB C
;LLC D
contextOO 
.OO 
ResponseOO 
.OO 

StatusCodeOO #
.OO# $
ShouldOO$ *
(OO* +
)OO+ ,
.OO, -
BeOO- /
(OO/ 0
$numOO0 3
)OO3 4
;OO4 5
}QQ 
}RR Ð>
{C:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\tests\Unit.Tests\MappingProfile\MappingProfileTests.cs
	namespace 	
Unit
 
. 
Tests 
. 
MappingProfile #
;# $
public		 
class		 
MappingProfileTests		  
{

 
private 
readonly 
IMapper 
_mapper $
;$ %
public 

MappingProfileTests 
( 
)  
{ 
_mapper 
= 
new 
MapperConfiguration )
() *
cfg* -
=>. 0
{ 	
cfg 
. 

AddProfile 
< 
Revision_Part_1 *
.* +
Application+ 6
.6 7
MappingProfile7 E
>E F
(F G
)G H
;H I
} 	
)	 

.
 
CreateMapper 
( 
) 
; 
} 
[ 
Fact 	
(	 

)
 
] 
public 

void -
!CreateMap_ForRestaurantToDto_Maps 1
(1 2
)2 3
{ 
var 

restaurant 
= 
new 

Restaurant '
{ 	
Id 
= 
$num 
, 
Name 
= 
$str $
,$ %
Description 
= 
$str -
,- .
Category 
= 
$str  
,  !
HasDelivery 
= 
true 
, 
ContactEmail 
= 
$str -
,- .
Address   
=   
new   
Address   !
{!! 
Street"" 
="" 
$str"" &
,""& '
City## 
=## 
$str## "
,##" #

PostalCode$$ 
=$$ 
$str$$ $
}%% 
,%% 
}&& 	
;&&	 

var)) 
restaurantDto)) 
=)) 
_mapper)) #
.))# $
Map))$ '
<))' (
RestaurantDto))( 5
>))5 6
())6 7

restaurant))7 A
)))A B
;))B C
restaurantDto,, 
.,, 
Should,, 
(,, 
),, 
.,, 
	NotBeNull,, (
(,,( )
),,) *
;,,* +
restaurantDto-- 
.-- 
Id-- 
.-- 
Should-- 
(--  
)--  !
.--! "
Be--" $
(--$ %

restaurant--% /
.--/ 0
Id--0 2
)--2 3
;--3 4
restaurantDto.. 
... 
Name.. 
... 
Should.. !
(..! "
).." #
...# $
Be..$ &
(..& '

restaurant..' 1
...1 2
Name..2 6
)..6 7
;..7 8
restaurantDto// 
.// 
Description// !
.//! "
Should//" (
(//( )
)//) *
.//* +
Be//+ -
(//- .

restaurant//. 8
.//8 9
Description//9 D
)//D E
;//E F
restaurantDto00 
.00 
Category00 
.00 
Should00 %
(00% &
)00& '
.00' (
Be00( *
(00* +

restaurant00+ 5
.005 6
Category006 >
)00> ?
;00? @
restaurantDto11 
.11 
HasDelivery11 !
.11! "
Should11" (
(11( )
)11) *
.11* +
Be11+ -
(11- .

restaurant11. 8
.118 9
HasDelivery119 D
)11D E
;11E F
restaurantDto22 
.22 
Street22 
.22 
Should22 #
(22# $
)22$ %
.22% &
Be22& (
(22( )

restaurant22) 3
.223 4
Address224 ;
?22; <
.22< =
Street22= C
)22C D
;22D E
restaurantDto33 
.33 
City33 
.33 
Should33 !
(33! "
)33" #
.33# $
Be33$ &
(33& '

restaurant33' 1
.331 2
Address332 9
?339 :
.33: ;
City33; ?
)33? @
;33@ A
restaurantDto44 
.44 

PostalCode44  
.44  !
Should44! '
(44' (
)44( )
.44) *
Be44* ,
(44, -

restaurant44- 7
.447 8
Address448 ?
?44? @
.44@ A

PostalCode44A K
)44K L
;44L M
}55 
[77 
Fact77 	
(77	 

)77
 
]77 
public88 

void88 ;
/CreateMap_ForRestaurantCommandToRestaurant_Maps88 ?
(88? @
)88@ A
{99 
var;; 
command;; 
=;; 
new;; #
CreateRestaurantCommand;; 1
(;;1 2
);;2 3
{<< 	
CreateRestaurantDto== 
===  !
new==" %
CreateRestaurantDto==& 9
{>> 
Name?? 
=?? 
$str?? (
,??( )
Description@@ 
=@@ 
$str@@ $
,@@$ %
CategoryAA 
=AA 
$strAA $
,AA$ %
HasDeliveryBB 
=BB 
trueBB "
,BB" #
ContactEmailCC 
=CC 
$strCC .
,CC. /
ContactNumberDD 
=DD 
$strDD  +
,DD+ ,
CityEE 
=EE 
$strEE "
,EE" #
StreetFF 
=FF 
$strFF &
,FF& '

PostalCodeGG 
=GG 
$strGG %
}HH 
}II 	
;II	 

varLL 

restaurantLL 
=LL 
_mapperLL  
.LL  !
MapLL! $
<LL$ %

RestaurantLL% /
>LL/ 0
(LL0 1
commandLL1 8
.LL8 9
CreateRestaurantDtoLL9 L
)LLL M
;LLM N

restaurantOO 
.OO 
ShouldOO 
(OO 
)OO 
.OO 
	NotBeNullOO %
(OO% &
)OO& '
;OO' (

restaurantPP 
.PP 
NamePP 
.PP 
ShouldPP 
(PP 
)PP  
.PP  !
BePP! #
(PP# $
commandPP$ +
.PP+ ,
CreateRestaurantDtoPP, ?
.PP? @
NamePP@ D
)PPD E
;PPE F

restaurantQQ 
.QQ 
DescriptionQQ 
.QQ 
ShouldQQ %
(QQ% &
)QQ& '
.QQ' (
BeQQ( *
(QQ* +
commandQQ+ 2
.QQ2 3
CreateRestaurantDtoQQ3 F
.QQF G
DescriptionQQG R
)QQR S
;QQS T

restaurantRR 
.RR 
CategoryRR 
.RR 
ShouldRR "
(RR" #
)RR# $
.RR$ %
BeRR% '
(RR' (
commandRR( /
.RR/ 0
CreateRestaurantDtoRR0 C
.RRC D
CategoryRRD L
)RRL M
;RRM N

restaurantSS 
.SS 
HasDeliverySS 
.SS 
ShouldSS %
(SS% &
)SS& '
.SS' (
BeSS( *
(SS* +
commandSS+ 2
.SS2 3
CreateRestaurantDtoSS3 F
.SSF G
HasDeliverySSG R
)SSR S
;SSS T

restaurantTT 
.TT 
ContactEmailTT 
.TT  
ShouldTT  &
(TT& '
)TT' (
.TT( )
BeTT) +
(TT+ ,
commandTT, 3
.TT3 4
CreateRestaurantDtoTT4 G
.TTG H
ContactEmailTTH T
)TTT U
;TTU V
}UU 
}VV ê0
ŠC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\tests\Unit.Tests\CQRS\Handlers\UpdateRestaurantCommandHandlerTests.cs
	namespace 	
Unit
 
. 
Tests 
. 
CQRS 
. 
Handlers "
;" #
public 
class /
#UpdateRestaurantCommandHandlerTests 0
{ 
private 
readonly 
Mock 
< 
IRestaurantService ,
>, -"
_restaurantServiceMock. D
;D E
private 
readonly 
Mock 
< 

AutoMapper $
.$ %
IMapper% ,
>, -
_mapperMock. 9
;9 :
private 
readonly *
UpdateRestaurantCommandHandler 3
_handler4 <
;< =
public 
/
#UpdateRestaurantCommandHandlerTests .
(. /
)/ 0
{ 
var 
_loggerMock 
= 
new 
Mock "
<" #
ILogger# *
<* +*
UpdateRestaurantCommandHandler+ I
>I J
>J K
(K L
)L M
;M N"
_restaurantServiceMock 
=  
new! $
Mock% )
<) *
IRestaurantService* <
>< =
(= >
)> ?
;? @
_mapperMock 
= 
new 
Mock 
< 

AutoMapper )
.) *
IMapper* 1
>1 2
(2 3
)3 4
;4 5
_handler 
= 
new *
UpdateRestaurantCommandHandler 5
(5 6
_loggerMock 
. 
Object 
, "
_restaurantServiceMock "
." #
Object# )
,) *
_mapperMock 
. 
Object 
) 
;  
} 
[   
Fact   	
(  	 

)  
 
]   
public!! 

async!! 
Task!! :
.Handle_WithValidRequest_ShouldUpdateRestaurant!! D
(!!D E
)!!E F
{"" 
var## 
restaurantId## 
=## 
$num## 
;## 
var$$ 
command$$ 
=$$ 
new$$ #
UpdateRestaurantCommand$$ 1
{%% 	
Id&& 
=&& 
restaurantId&& 
,&& 
Name'' 
='' 
$str'' !
,''! "
Description(( 
=(( 
$str(( /
,((/ 0
HasDelivery)) 
=)) 
true)) 
}** 	
;**	 

var,, 

restaurant,, 
=,, 
new,, 

Restaurant,, '
(,,' (
),,( )
{-- 	
Id.. 
=.. 
restaurantId.. 
,.. 
Name// 
=// 
$str// 
,// 
Description00 
=00 
$str00  
}11 	
;11	 
"
_restaurantServiceMock33 
.33 
Setup33 $
(33$ %
r33% &
=>33' )
r33* +
.33+ ,"
GetRestaurantByIdAsync33, B
(33B C
restaurantId33C O
)33O P
)33P Q
.33Q R
ReturnsAsync33R ^
(33^ _

restaurant33_ i
)33i j
;33j k
await66 
_handler66 
.66 
Handle66 
(66 
command66 %
,66% &
CancellationToken66' 8
.668 9
None669 =
)66= >
;66> ?"
_restaurantServiceMock99 
.99 
Verify99 %
(99% &
r99& '
=>99( *
r99+ ,
.99, -
SaveChanges99- 8
(998 9
)999 :
,99: ;
Times99< A
.99A B
Once99B F
)99F G
;99G H
_mapperMock:: 
.:: 
Verify:: 
(:: 
r:: 
=>:: 
r::  !
.::! "
Map::" %
(::% &
command::& -
,::- .

restaurant::/ 9
)::9 :
,::: ;
Times::< A
.::A B
Once::B F
)::F G
;::G H
};; 
[== 
Fact== 	
(==	 

)==
 
]== 
public>> 

async>> 
Task>> I
=Handle_WithNonExistingRestaurant_ShouldThrowNotFoundException>> S
(>>S T
)>>T U
{?? 
var@@ 
restaurantId@@ 
=@@ 
$num@@ 
;@@ 
varAA 
commandAA 
=AA 
newAA #
UpdateRestaurantCommandAA 1
{BB 	
IdCC 
=CC 
restaurantIdCC 
,CC 
}DD 	
;DD	 
"
_restaurantServiceMockFF 
.FF 
SetupFF $
(FF$ %
rFF% &
=>FF' )
rFF* +
.FF+ ,"
GetRestaurantByIdAsyncFF, B
(FFB C
restaurantIdFFC O
)FFO P
)FFP Q
.FFQ R
ReturnsAsyncFFR ^
(FF^ _
(FF_ `

RestaurantFF` j
?FFj k
)FFk l
nullFFl p
)FFp q
;FFq r
FuncII 
<II 
TaskII 
>II 
actII 
=II 
asyncII 
(II  
)II  !
=>II" $
awaitII% *
_handlerII+ 3
.II3 4
HandleII4 :
(II: ;
commandII; B
,IIB C
CancellationTokenIID U
.IIU V
NoneIIV Z
)IIZ [
;II[ \
awaitLL 
actLL 
.LL 
ShouldLL 
(LL 
)LL 
.LL 

ThrowAsyncLL %
<LL% &
NotFoundExceptionLL& 7
>LL7 8
(LL8 9
)LL9 :
.MM 
WithMessageMM 
(MM 
$"MM 
$strMM /
{MM/ 0
restaurantIdMM0 <
}MM< =
$strMM= Q
"MMQ R
)MMR S
;MMS T
}NN 
}OO Ö%
ŠC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\tests\Unit.Tests\CQRS\Handlers\CreateRestaurantCommandHandlerTests.cs
	namespace 	
Unit
 
. 
Tests 
. 
CQRS 
. 
Handlers "
;" #
public 
class /
#CreateRestaurantCommandHandlerTests 0
{ 
[ 
Fact 	
(	 

)
 
] 
public 

async 
Task :
.Handle_ForValidCommand_ReturnsCreateRestaurant D
(D E
)E F
{ 
var 

loggerMock 
= 
new 
Mock !
<! "
ILogger" )
<) **
CreateRestaurantCommandHandler* H
>H I
>I J
(J K
)K L
;L M
var 

mapperMock 
= 
new 
Mock !
<! "
IMapper" )
>) *
(* +
)+ ,
;, -
var $
restaurantRepositoryMock $
=% &
new' *
Mock+ /
</ 0
IRestaurantService0 B
>B C
(C D
)D E
;E F
var 
userContextMock 
= 
new !
Mock" &
<& '
IUserContext' 3
>3 4
(4 5
)5 6
;6 7$
restaurantRepositoryMock  
.  !
Setup! &
(& '
repo' +
=>, .
repo/ 3
.3 4
CreateRestaurant4 D
(D E
ItE G
.G H
IsAnyH M
<M N

RestaurantN X
>X Y
(Y Z
)Z [
)[ \
)\ ]
. 
ReturnsAsync 
( 
$num 
) 
; 
var 
currentUser 
= 
new 
Current %
(% &
$str& 0
,0 1
$str2 A
,A B
[C D
]D E
,E F
nullG K
,K L
nullM Q
)Q R
;R S
userContextMock 
. 
Setup 
( 
user "
=># %
user& *
.* +

GetCurrent+ 5
(5 6
)6 7
)7 8
.8 9
Returns9 @
(@ A
currentUserA L
)L M
;M N
var 
commandHandler 
= 
new  *
CreateRestaurantCommandHandler! ?
(? @

loggerMock@ J
.J K
ObjectK Q
,Q R$
restaurantRepositoryMockS k
.k l
Objectl r
,r s

mapperMockt ~
.~ 
Object	 …
,
… †
userContextMock
‡ –
.
– —
Object
— 
)
 ž
;
ž Ÿ
var   
command   
=   
new   #
CreateRestaurantCommand   1
(  1 2
)  2 3
;  3 4
var!! 

restaurant!! 
=!! 
new!! 

Restaurant!! '
(!!' (
)!!( )
;!!) *

mapperMock"" 
."" 
Setup"" 
("" 
m"" 
=>"" 
m"" 
.""  
Map""  #
<""# $

Restaurant""$ .
>"". /
(""/ 0
command""0 7
.""7 8
CreateRestaurantDto""8 K
)""K L
)""L M
.""M N
Returns""N U
(""U V

restaurant""V `
)""` a
;""a b
var%% 
result%% 
=%% 
await%% 
commandHandler%% )
.%%) *
Handle%%* 0
(%%0 1
command%%1 8
,%%8 9
CancellationToken%%: K
.%%K L
None%%L P
)%%P Q
;%%Q R
result(( 
.(( 
Should(( 
((( 
)(( 
.(( 
Be(( 
((( 
$num(( 
)(( 
;(( 

restaurant)) 
.)) 
OwnerId)) 
.)) 
Should)) !
())! "
)))" #
.))# $
Be))$ &
())& '
$str))' 1
)))1 2
;))2 3$
restaurantRepositoryMock**  
.**  !
Verify**! '
(**' (
repo**( ,
=>**- /
repo**0 4
.**4 5
CreateRestaurant**5 E
(**E F

restaurant**F P
)**P Q
,**Q R
Times**S X
.**X Y
Once**Y ]
)**] ^
;**^ _
}++ 
},, 