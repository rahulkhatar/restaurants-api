â<
yC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\tests\Integration.Tests\RestaurantControllerTests.cs
	namespace 	
Integration
 
. 
Tests 
; 
public 
class %
RestaurantControllerTests &
:' (
IClassFixture) 6
<6 7!
WebApplicationFactory7 L
<L M
ProgramM T
>T U
>U V
{ 
private 
readonly !
WebApplicationFactory *
<* +
Program+ 2
>2 3
_factory4 <
;< =
private 
readonly 
Mock 
< 
IRestaurantService ,
>, -
_restaurantService. @
=A B
newC F
(F G
)G H
;H I
public 
%
RestaurantControllerTests $
($ %!
WebApplicationFactory% :
<: ;
Program; B
>B C
factoryD K
)K L
{ 
_factory 
= 
factory 
. 
WithWebHostBuilder -
(- .
builder. 5
=>6 8
{ 	
builder 
. !
ConfigureTestServices )
() *
services* 2
=>3 5
{ 
services 
. 
AddSingleton %
<% &
IPolicyEvaluator& 6
,6 7
FakePolicyEvaluator8 K
>K L
(L M
)M N
;N O
services 
. 
Replace  
(  !
ServiceDescriptor! 2
.2 3
Scoped3 9
(9 :
typeof: @
(@ A
IRestaurantServiceA S
)S T
,T U
_V W
=>X Z
_restaurantService[ m
.m n
Objectn t
)t u
)u v
;v w
} 
) 
; 
} 	
)	 

;
 
} 
[   
Fact   	
]  	 

public!! 

async!! 
Task!! ,
 GetAll_ForValidRequest_ReturnsOK!! 6
(!!6 7
)!!7 8
{"" 
var$$ 
client$$ 
=$$ 
_factory$$ 
.$$ 
CreateClient$$ *
($$* +
)$$+ ,
;$$, -
var'' 
result'' 
='' 
await'' 
client'' !
.''! "
GetAsync''" *
(''* +
$str''+ <
)''< =
;''= >
result** 
.** 

StatusCode** 
.** 
Should**  
(**  !
)**! "
.**" #
Be**# %
(**% &
HttpStatusCode**& 4
.**4 5
OK**5 7
)**7 8
;**8 9
}++ 
[-- 
Fact-- 	
]--	 

public.. 

async.. 
Task.. 6
*GetAll_ForInvalidRequest_ReturnsBadRequest.. @
(..@ A
)..A B
{// 
var11 
client11 
=11 
_factory11 
.11 
CreateClient11 *
(11* +
)11+ ,
;11, -
var44 
result44 
=44 
await44 
client44 !
.44! "
GetAsync44" *
(44* +
$str44+ A
)44A B
;44B C
result77 
.77 

StatusCode77 
.77 
Should77  
(77  !
)77! "
.77" #
Be77# %
(77% &
HttpStatusCode77& 4
.774 5

BadRequest775 ?
)77? @
;77@ A
}88 
[<< 
Fact<< 	
]<<	 

public== 

async== 
Task== <
0GetById_ForNonExistingId_ShouldReturn404NotFound== F
(==F G
)==G H
{>> 
int@@ 
id@@ 
=@@ 
$num@@ 
;@@ 
_restaurantServiceAA 
.AA 
SetupAA  
(AA  !
mAA! "
=>AA# %
mAA& '
.AA' ("
GetRestaurantByIdAsyncAA( >
(AA> ?
idAA? A
)AAA B
)AAB C
.AAC D
ReturnsAsyncAAD P
(AAP Q
(AAQ R

RestaurantAAR \
?AA\ ]
)AA] ^
nullAA^ b
)AAb c
;AAc d
varCC 
clientCC 
=CC 
_factoryCC 
.CC 
CreateClientCC *
(CC* +
)CC+ ,
;CC, -
varFF 
resultFF 
=FF 
awaitFF 
clientFF !
.FF! "
GetAsyncFF" *
(FF* +
$"FF+ -
$strFF- >
{FF> ?
idFF? A
}FFA B
"FFB C
)FFC D
;FFD E
resultII 
.II 

StatusCodeII 
.II 
ShouldII  
(II  !
)II! "
.II" #
BeII# %
(II% &
HttpStatusCodeII& 4
.II4 5
NotFoundII5 =
)II= >
;II> ?
}JJ 
[LL 
FactLL 	
]LL	 

publicMM 

asyncMM 
TaskMM 0
$GetById_ForExistingId_ShouldReturnOKMM :
(MM: ;
)MM; <
{NN 
intPP 
idPP 
=PP 
$numPP 
;PP 
varQQ 

restaurantQQ 
=QQ 
newQQ 

RestaurantQQ '
(QQ' (
)QQ( )
{RR 	
IdSS 
=SS 
idSS 
,SS 
NameTT 
=TT 
$strTT 
,TT 
DescriptionUU 
=UU 
$strUU ,
}VV 	
;VV	 

_restaurantServiceXX 
.XX 
SetupXX  
(XX  !
mXX! "
=>XX# %
mXX& '
.XX' ("
GetRestaurantByIdAsyncXX( >
(XX> ?
idXX? A
)XXA B
)XXB C
.XXC D
ReturnsAsyncXXD P
(XXP Q

restaurantXXQ [
)XX[ \
;XX\ ]
varZZ 
clientZZ 
=ZZ 
_factoryZZ 
.ZZ 
CreateClientZZ *
(ZZ* +
)ZZ+ ,
;ZZ, -
var]] 
result]] 
=]] 
await]] 
client]] !
.]]! "
GetAsync]]" *
(]]* +
$"]]+ -
$str]]- >
{]]> ?
id]]? A
}]]A B
"]]B C
)]]C D
;]]D E
var^^ 
restaurantDto^^ 
=^^ 
await^^ !
result^^" (
.^^( )
Content^^) 0
.^^0 1
ReadFromJsonAsync^^1 B
<^^B C
RestaurantDto^^C P
>^^P Q
(^^Q R
)^^R S
;^^S T
resultaa 
.aa 

StatusCodeaa 
.aa 
Shouldaa  
(aa  !
)aa! "
.aa" #
Beaa# %
(aa% &
HttpStatusCodeaa& 4
.aa4 5
OKaa5 7
)aa7 8
;aa8 9
restaurantDtobb 
.bb 
Shouldbb 
(bb 
)bb 
.bb 
	NotBeNullbb (
(bb( )
)bb) *
;bb* +
restaurantDtocc 
.cc 
Namecc 
.cc 
Shouldcc !
(cc! "
)cc" #
.cc# $
Becc$ &
(cc& '
$strcc' -
)cc- .
;cc. /
restaurantDtodd 
.dd 
Descriptiondd !
.dd! "
Shoulddd" (
(dd( )
)dd) *
.dd* +
Bedd+ -
(dd- .
$strdd. @
)dd@ A
;ddA B
}ff 
}gg Â
sC:\Users\rahul\Desktop\API_Tasks\DotNetCore_8\Revision_Part_1_Github\tests\Integration.Tests\FakePolicyEvaluator.cs
	namespace 	
Integration
 
. 
Tests 
; 
public		 
class		 
FakePolicyEvaluator		  
:		! "
IPolicyEvaluator		# 3
{

 
public 

Task 
< 
AuthenticateResult "
>" #
AuthenticateAsync$ 5
(5 6
AuthorizationPolicy6 I
policyJ P
,P Q
HttpContextR ]
context^ e
)e f
{ 
var 
claimsPrincipal 
= 
new !
ClaimsPrincipal" 1
(1 2
)2 3
;3 4
claimsPrincipal 
. 
AddIdentity #
(# $
new$ '
ClaimsIdentity( 6
(6 7
new 
[ 
] 
{ 
new 
Claim 
( 

ClaimTypes $
.$ %
NameIdentifier% 3
,3 4
$str5 8
)8 9
,9 :
new 
Claim 
( 

ClaimTypes $
.$ %
Role% )
,) *
$str+ 2
)2 3
,3 4
} 
) 	
)	 

;
 
var 
ticket 
= 
new  
AuthenticationTicket -
(- .
claimsPrincipal. =
,= >
$str? E
)E F
;F G
var 
result 
= 
AuthenticateResult '
.' (
Success( /
(/ 0
ticket0 6
)6 7
;7 8
return 
Task 
. 

FromResult 
( 
result %
)% &
;& '
} 
public 

Task 
< %
PolicyAuthorizationResult )
>) *
AuthorizeAsync+ 9
(9 :
AuthorizationPolicy: M
policyN T
,T U
AuthenticateResultV h 
authenticationResulti }
,} ~
HttpContext	 Š
context
‹ ’
,
’ “
object
” š
?
š ›
resource
œ ¤
)
¤ ¥
{ 
var 
result 
= %
PolicyAuthorizationResult .
.. /
Success/ 6
(6 7
)7 8
;8 9
return 
Task 
. 

FromResult 
( 
result %
)% &
;& '
} 
}   