??'
?.?.
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??%
?
embedding_11/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??@*(
shared_nameembedding_11/embeddings
?
+embedding_11/embeddings/Read/ReadVariableOpReadVariableOpembedding_11/embeddings* 
_output_shapes
:
??@*
dtype0
?
conv1d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv1d_28/kernel
z
$conv1d_28/kernel/Read/ReadVariableOpReadVariableOpconv1d_28/kernel*#
_output_shapes
:@?*
dtype0
u
conv1d_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv1d_28/bias
n
"conv1d_28/bias/Read/ReadVariableOpReadVariableOpconv1d_28/bias*
_output_shapes	
:?*
dtype0
?
conv1d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*!
shared_nameconv1d_29/kernel
z
$conv1d_29/kernel/Read/ReadVariableOpReadVariableOpconv1d_29/kernel*#
_output_shapes
:?@*
dtype0
t
conv1d_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d_29/bias
m
"conv1d_29/bias/Read/ReadVariableOpReadVariableOpconv1d_29/bias*
_output_shapes
:@*
dtype0
z
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_22/kernel
s
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes

:@@*
dtype0
r
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_22/bias
k
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes
:@*
dtype0
z
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_23/kernel
s
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes

:@*
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes
:*
dtype0
?
predictions/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*#
shared_namepredictions/kernel
y
&predictions/kernel/Read/ReadVariableOpReadVariableOppredictions/kernel*
_output_shapes

:*
dtype0
x
predictions/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namepredictions/bias
q
$predictions/bias/Read/ReadVariableOpReadVariableOppredictions/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name1877*
value_dtype0	

MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_1089*
value_dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/embedding_11/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??@*/
shared_name Adam/embedding_11/embeddings/m
?
2Adam/embedding_11/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_11/embeddings/m* 
_output_shapes
:
??@*
dtype0
?
Adam/conv1d_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv1d_28/kernel/m
?
+Adam/conv1d_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_28/kernel/m*#
_output_shapes
:@?*
dtype0
?
Adam/conv1d_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv1d_28/bias/m
|
)Adam/conv1d_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_28/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv1d_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*(
shared_nameAdam/conv1d_29/kernel/m
?
+Adam/conv1d_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_29/kernel/m*#
_output_shapes
:?@*
dtype0
?
Adam/conv1d_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv1d_29/bias/m
{
)Adam/conv1d_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_29/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*'
shared_nameAdam/dense_22/kernel/m
?
*Adam/dense_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/m*
_output_shapes

:@@*
dtype0
?
Adam/dense_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_22/bias/m
y
(Adam/dense_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_23/kernel/m
?
*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/m
y
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes
:*
dtype0
?
Adam/predictions/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:**
shared_nameAdam/predictions/kernel/m
?
-Adam/predictions/kernel/m/Read/ReadVariableOpReadVariableOpAdam/predictions/kernel/m*
_output_shapes

:*
dtype0
?
Adam/predictions/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/predictions/bias/m

+Adam/predictions/bias/m/Read/ReadVariableOpReadVariableOpAdam/predictions/bias/m*
_output_shapes
:*
dtype0
?
Adam/embedding_11/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??@*/
shared_name Adam/embedding_11/embeddings/v
?
2Adam/embedding_11/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_11/embeddings/v* 
_output_shapes
:
??@*
dtype0
?
Adam/conv1d_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv1d_28/kernel/v
?
+Adam/conv1d_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_28/kernel/v*#
_output_shapes
:@?*
dtype0
?
Adam/conv1d_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv1d_28/bias/v
|
)Adam/conv1d_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_28/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv1d_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*(
shared_nameAdam/conv1d_29/kernel/v
?
+Adam/conv1d_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_29/kernel/v*#
_output_shapes
:?@*
dtype0
?
Adam/conv1d_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv1d_29/bias/v
{
)Adam/conv1d_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_29/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*'
shared_nameAdam/dense_22/kernel/v
?
*Adam/dense_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/v*
_output_shapes

:@@*
dtype0
?
Adam/dense_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_22/bias/v
y
(Adam/dense_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_23/kernel/v
?
*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/v
y
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes
:*
dtype0
?
Adam/predictions/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:**
shared_nameAdam/predictions/kernel/v
?
-Adam/predictions/kernel/v/Read/ReadVariableOpReadVariableOpAdam/predictions/kernel/v*
_output_shapes

:*
dtype0
?
Adam/predictions/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/predictions/bias/v

+Adam/predictions/bias/v/Read/ReadVariableOpReadVariableOpAdam/predictions/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??
Const_4Const*
_output_shapes

:??*
dtype0*ѥ
valueƥB¥??BiBtoBtheBaBmyBandByouBitBisBinBforBofBimBonBmeBhaveBthatBsoBbutBjustBwithBdayBbeBitsBatBnotBwasBallBgoodBthisBnowBoutBupBgetBareBnoBlikeBgoBdontByourBloveBdoBgoingBworkBtooBtodayBgotBfromBcantBoneBhappyBlolBtimeBknowBbackBuBwhatBreallyBwillBaboutBweBhadBthereBamBcanBseeBsomeBifBwellBnewBnightBhomeBasBwantBthinkBmothersBmoreBthanksBhowBstillBwhenBoffBohB2BmuchBtheyBhereBmissBgreatBanBhopeBneedBlastBhasBhahaBherBthatsBmorningBfunBbeenBthenBorBillBfeelBtomorrowBwishBwouldBheBtwitterBsadBonlyBsorryBdidntBbadBagainBwhyBwereBrightBtonightBmakeBbyBveryByeahBgonnaBthemBdidBsheBniceBweekBbetterBthoughBsleepBiveB3BcomeBwayBgettingBcouldBoverBshouldBnextBbedBpeopleBweekendByoureBhateBafterBwatchingBsayBschoolBhimBdaysBawesomeBwaitBevenBthingBbestBbeingBokBlongBheyBneverBdownBanyBworkingBsoonBshowBwontBhavingBthankBlittleByesBwhoBsureBhisBlookBtakeB4BmomBthanBtiredBfriendsBcoolBmayBfirstBurBfeelingBdoesntBourBhoursBeveryoneBdoingBguysBalwaysBbecauseBsickBusBpleaseBdoneBanotherBwannaBmovieBmanBalreadyBphoneBhouseBlifeBwhereBwatchBeverBfinallyBbeforeBoldBmadeBfindBfridayBtryingBreadyBwentBthoughtByetBxB	somethingByayBintoBsameBsucksBawayBthoseBliveBleftBfollowBbitBwowBotherBwhileBprettyBlooksBlookingBgirlBguessBamazingByearBsawBbigBkeepBmaybeBletBfriendBthingsBstarBsomeoneBomgBalsoBsaidBmissedBlaterBsuchB1BnothingBgladBtweetBughBtwoBstartBhotBnBuntilBtryBsongBjobBsinceBmondayBhesBhardBearlyBaroundBhearBbirthdayByaBhelpBhaventBstuffBplayBmakesBheadBgoneBcarBactuallyB	yesterdayBworldBboredBtillBreadBcomingBcheckBcallBmomsBlotBidBtellBlostBbabyBpartyBfoundBisntBgiveBweatherBmanyBmakingBhurtsBpoorBhairBgottaBgodBfewBdoesBanythingBmusicBrainBmyselfBmoneyBhiBtalkBputBexcitedBwaitingBmostBcauseBmeanBfamilyBawwBcoffeeB5BsunBmustBlateBmightB	listeningBleastBendBbelieveBwelcomeBmissingBfarBenjoyBwithoutBwasntBtimesBsummerBleaveBstupidBcoldBalmostBthinkingBstopBfunnyBsundayBforwardBfinishedBdinnerBmineBluckBgameBthroughBthoBsoundsBanyoneBplayingBwhatsBwantedBtheirBeatBbothB	beautifulBuseBlunchB
everythingBcuteBwhichBtotallyBprobablyBfreeBcouldntBtheresBsoooBshesBhourBwholeBhellB	followersBeveryBsweetBsaysBkidsBwBtheseBeatingBplaceBfoodBlovelyBhaBseenBhahahaBenoughBwokeBweeksBwantsBstuckBrealBpicBsuperBokayB	goodnightBagoByearsBvideoBtookBoutsideBkindaBfullBbuyBawwwB10BtvBofficeBclassBroomBguyBelseBbookBtakingBcameBbusyBhitBanymoreBstayBkindBheadacheBforgotB	followingBwrongBusedBsittingBrBonlineBgirlsBwarsBlotsB	hopefullyBshoppingBquiteBpostBmumBlovedBgetsBbrokeBseemsBnewsBdudeBableBtripBtrekBtheyreBnameBhurtBdogBdadBbooBtweetsBrestBpartBinternetBhelloBeitherBcrazyBbreakBbBseeingBsaturdayBownBfeelsBdrinkBiphoneBcryBcalledBaloneBtilBtalkingBstartingBrunBonceBholidayBdBchangeBtriedBmonthBmindBmeetBeveningBrememberBpersonBmoveBideaBfaceBcomputerBawakeBahBwinBsBrunningBminutesBgoesBcuzBbtwBaskB6BwatchedBonesBoBhalfBfavoriteBfailBpictureBluckyBinsteadBbankB7ByoutubeB	sometimesBmommyBlovesBletsBhopingBheheBheardBdeadBboughtB	wonderfulBtoldBhappenedBfacebookBconcertBcloseBwritingBturnBtrueBsooBperfectBhighBfanBemailBboyBblogBticketsBsendBmotherBmonthsBlmaoBfineBdriveB	breakfastBawBstartedBiceBbdayBanywayB8ByallBsleepingBpainBneedsBheartBcoupleBboringBaccountBsuckBsooooBsiteBshowerBmomentBlilBleavingBlaBhungryBheadingB
definitelyBtestBsoreBsetBopenBexamBtopBsayingBrainingBmoviesBjuneBgoinBdearBcourseBaintByoullBvoteBbeachByeaBwakeBsunnyBsongsBproblemBlinkBhappenBgaveBeyesBcatchBcatBwriteBteaBniteBlessBjonasBfinalBcomesBcareBasleepB	afternoonBtourBsupposedBspendBseasonBrockBreadingBpicturesBhangB	chocolateBcardBarentB4thBwalkBusingB	seriouslyBpicsBphotoBcleaningBcityBxdBseemBpastBmadBknewBipodBfastBdreamBbyeBbrokenBboutBwouldntBweddingBukBtextBsoundBsighBsecondBsadlyBparkBnapBmovingBmeetingBinterestingBhugsBepisodeBwishingBspentBspecialBshortBredBmoodBmeansBlistBfbBfairBchanceBbringBwaterBtownBthreeBreplyBpBlondonBdueBdrivingBcutB12ByepBworthBworksBsaveBratherBnopeBfluBdiedBdateBcongratsBboysBaddBunfortunatelyBunderBtogetherBladyBforgetBfellBexamsBenjoyingBenglishBcreamBcakeBahhBreasonBplansBpageBmeantBlikedBlearnBlaptopBjealousBfallB	differentBcleanBcBagreeBworryBwordsBwhiteBweirdBwarmBrideBpplBphotosBmrBearlierBduringBbrothersBtweetingBstoreBsideBpointBpizzaBmessageBhugeBfinishB	everybodyB
absolutelyB1stBwtfBwindowsBupsetBslowBshowsBnumberBneededBnearBkidBhorribleBhangingBbikeBbgtBalbumB30ByumByouveBworstBthroatBsisterBrelaxingBplayedBlookedBgoogleBfactBemBblessBblackBbetBbehindBbeerBbabeB100BwishesBvisitBstartsBsentBpromBplusBlivingBlistenBgymBfansBexceptBeasyBeachBdrinkingBdaBcameraBbusBbrotherByummyBupdatesBupdateBtrafficBsunshineBstudyBmiddleBfingersBcollegeBbcBateByB	wonderingBsmileBparentsBmovedBlonelyB
graduationBgiftBdanceBcosBclubBcheeseB
apparentlyBanswerBahhhBwordBshameBsatBplanBnightsBlineBhuhBhugBhowsBhappensBgardenBflightBexactlyB
especiallyBdieBdangBcannotBbusinessBblueBbandByoursBworseBwearBviaB
understandBthxBstomachBsonBsleptBrevisionBpsBpickB
officiallyBidkBhunBhmmBfeetB	fantasticBexcitingBalongBwonBstoryBsnlBsleepyBohhBnoneBmacBlongerBkeepsBitllBinsideBhubbyBhatesBhandBfigureBdrunkBcupBcompanyBcommentBalthoughB2dayB15ByourselfBworkedBversionBvegasBtakenBstayingBsoldBshallBsendingBscreenBranBprojectBluvBlowBlegsBgreenBfrontBforeverBdressBchickenB	boyfriendBairBwooBtrainBthinksBteamBtakesBsingleBshopBrealizedBquickBpoolBpaperBouchBmenBlazyBlameBjustinBguttedBguitarBfeltBdreamsBcryingBchatBbummedBappBalotBwonderBwineBwifeBsexyBserviceBripBrainyBpostedBmetBmamaBmBlovingBflyBdvdBdogsBdecidedBclosedBchillinBcheckedBcaseBbbqB
appreciateB11BxoxoBwheresBusuallyBtummyBsupportBstudyingBsmallBsignBshareBproblemsBpaidBpackingBminBmilesBmatterBmathBjoinBiï¿½mBhospitalBhannahBfrenchBfollowedBfixBdavidBcountB
completelyB2ndB20BwhateverBwearingBwalkingBtuesdayBtomB	starbucksB	somewhereBshirtBsafeBpowerBpassBnoteBmumsBmentionBimaBhomeworkBfamBetcBdisappointedBcdBappleBwebsiteBtwilightBthursdayBtalentBswineBstoppedBsingBshutBroundBrandomBradioBpublicBproudBothersBoohBnycBjohnBimagineBgoodbyeBgigBgamesBextraBdarkBbroBbodyBbloodyBbloodBbecomeBbeatBawfulByrB	wednesdayBwakingBvideosBspendingBsitBquietBplacesBnobodyBmessagesBlatelyBindeedB	hilariousBhahahBgroupBfutureBdoorBcozBchurchB
blackberryBbetweenBbarB9B25B	wolverineBvoiceBvidBshotBshoesBscaredBouttaBmoonBmobileBmmmBminuteBloadBkilledBkBjusBgorgeousBgettinBfreakinBfilmBfeelinBeyeB
everywhereBendedB	deliciousBclassesBchicagoBchangedBbrainBbooksB	availableBartB	apartmentBanywaysBanytimeBacrossByoungByoBvacationBtouchBthruBthanxBtellingBsurgeryBsessionBprofileBpcBpayBnearlyBmilkBmateBloadsBlightBlBknowsBkissBjulyBinfoBfollowfridayBfingerBeverydayBentireBehBdownloadBdmBdealB	currentlyBcopyBclothesBcallingBbagBagesB3dB13ByupBwhosBwebBtravelBticketBswearBstandBsisBsingingBsillyBshouldntBshiftBsharingBseriousBrocksBreturnBraceBquestionBpeaceBnahBmyspaceBmessBmcflyBmachineBlikesBkillBjonBitunesBholdBfollowerBfailedB
depressingBdadsBcousinBcongratulationsBchildrenBcheersB	cancelledBbummerBbreakingBaskingBanybodyBannoyingB3rdBworriedBvBuploadBturnsBterribleBtaylorBsugarBsomebodyBsenseBselfBrecordBpuppyBprivateBpossibleBpinkBpeepsBpackBnyBnoticeBnormalBneckBmileyBmessedBmajorBmacbookBmaBlosingBlayBlaughBkneeBkillingB	interviewBholyBhehBheadedBhasntBgottenBgivingBfiveB
experienceBdeserveBdarnBcookingBcookBcaughtBburntBblastBb4BamericaBalrightBwitBwindowBusualBunlessBuglyBtwiceBtroubleBtoniteBstickBspaceBsocialBskyBshootBscaryBsamBreBorderedBohhhBmrsBmailBlayingBlakeBjokeBjayB	importantBhandsBfreshBfourBfootBfloorBfixedBffB	favouriteBfavBfallingBfabB	expensiveBenjoyedBearthBdropBdesignBdefBdeepBdaughterBdancingBcoverBcodeBcatsBcallsB	australiaBairportBageBaccessBwootBwomanBthoughtsBthirdBsupposeBstreetBsortBslightlyBroadBringBputtingBprobBperhapsBorderBoopsBoftenBmondaysBlibraryBlearnedBlatestBknoBkeepingBhistoryBhelpingBhahahahaBgrandmaBfmlB	finishingBfinalsBfiguredB	excellentBdyingBdoctorBdntB	depressedBdeathBdaddyBcookiesBconversationBchillBchannelBcanadaB
californiaBbritainsBboxBbesidesBbarelyBarrivedBamericanBaffordB24BxoBwomenBwinterBwerentBumB	tweetdeckBthaBteethBsweetieBsuxBstrangeBstraightBspotBreviewBreleaseBpullBprayBpmBplanningBplaneBpieceBphilippinesBnowhereBnoticedBmsBmontanaBmommiesBmixBmidnightBloseBlivedBlieBladiesBkiddingBkickBjumpBjackBjB
interestedB	impressedBhusbandBhrsBhoweverBhoneyBheresBgivenBfridaysBfreakingBflowersBfishBfightB	exhaustedBeBdoubleBdaveBcriedBcrashBcompleteBchineseBcellBcatchingBcardsBbuyingBbroughtBbookedBbbB
backgroundBaweBarticleBahhhhBabtB14B0BwatBwasteBwantingBtrulyBtrackBtonightsBteacherBsystemBsydneyBsumBsuckedBstressedBstepBsmhBslowlyBsimpleBshowingBriceBquoteBquitBpresentBprayingBplannedBpassedBpartsBontoBnoseBnickBneitherBndBnaBmommysBmommaBmatchBlossBlocalBlegBjoyBjoeBideasBhurtingBhooBholidaysBheatBhavBhangoverBgermanyBfightingBfatBepisodesBepicBdragBdisneyBdentistBcrossedBcloudyBclosingBbossBblessedBbirdBballBawwwwBaugustBaskedBareaBapartBafraidB45ByoudBwedBwatchinBwashB
twitteringBtopicBtoastBthrowBtenBteachingBtanBtalkinBswimmingBsushiBsunburnBstudioBsouthBsoupBsoooooBseriesBseattleBscheduleBruinedB	recommendBquizBpromiseB
productiveBplentyBpissedBpayingBpartyingBnorthBmsnBminsBloudBkitchenBissuesBinviteBimmaBhughBhmmmBhdBgunnaBgoshBfolksBfireBfeverBfaveBfakeBexpectedBessayBerBenergyBemptyBdunnoBdroppedBdrBdoubtBdirectB
differenceBdesktopBdeckBdeBcravingBcousinsBcountryBcostBcontactBcolorBcheerBcavsBcarsBbuttonBbottleBblockBbenBatmBarmsBappsBaheadB18Bï¿½BworkinBwoBwildBweeBwashingB	uploadingBtypeBtwitBturnedBtruckBtoughBtheatreBtgifBtasteBtalkedBtBswimBsuggestionsBstyleBstressBstormBstatesBstateBspringBsportsBspeakBsomehowBsixBsimsBseveralBschoolsBsavingBsaleBrequestBremindsB
rememberedBrealizeBproperlyBpresentationBparkingBpantsBpainfulB	obviouslyBmmmmBmarriedBmallBmagicBlookinBlistenedBlenoBlearningBlaughingBlandBjobsBjamB	includingBiiBheroBhellaB	happeningBhadntBgrossBgrandBgoodnessBfullyBfitBfabulousBearsBdrinksB
downloadedBdoinBdjBdeskBdcBdammitBcreditBcrappyBcoughBcoastBchrisBchooseBchoiceBcelebratingBbugBbuddyBbostonBboardBbfBbatteryBbathBbabiesBarghBallowedBalexBahaBaddictedBactionB50B40B2niteB21ByorkBxmenBwindBwenBweekendsBwaitinBvsBvotingBupdatedBuniBtwitpicBtweepsBtrailerBtongueBtoeBtodaysB
timberlakeBthunderBtextingBtexasBsurpriseBsupernaturalBstatusBspamBsometimeBshotsBserverBsecretBsanBrushBrowBreportBrepliedBrelaxBrealityBrealisedB	questionsBpreferBopeningBofficialBoceanBnervousBnailsBmouthBmostlyBmissesBmileBmiamiBmassageBmarathonBlikingBlaundryBkeysBkeyboardBkeptBjoinedBjkBjamesBinsaneBhostBhollyB	happinessBgrayBgivesBgearBgBfourthBflatBflashBfellowBfaultBfatherBewBevilBeggBeasierBdryBdressedBdoctorsBdespiteBdemiBdegreesBconfusedBcommentsB	christmasBcancerBburnedBbottomBblockedBblameB	basicallyBbadlyBawardsBattemptBalarmBagainstB80sB6thB2008B16BwroteBwithinBwisdomBweveBvotedBusaBuncleBtwittersBtixBtipBthomasBtheyveBtableB
successfulBstudentBstrongBstockBstayedBstackBstBspeakingBryanBrollBreviseB
recoveringBpurpleBpubBprogramBpriceBpracticeBpostingBpositiveBpopBpagesBpackedBnetBmemoriesBmediaBlivesBlightsBlaughedBkeyBhurryBhuntingBhotelBhonestlyBhimselfBheyyBhavinBhatBgrowBgreyBgregBgloomyBfyiBfootballBfamousBexcuseB	everyonesBeventBenglandBemailsBeggsBeastBdietBdeletedBdelayedBcupcakesBcrushBcontinueBclearBchickBcheapBchattingBchargeBchangingB	celebrateBbutterBburnBbrazilBblahBbillsBbiggerBbetaBbecomingBbathroomBbaseballBbaconB	attentionBashleyBarmBanywhereBadviceBaddedBacB17ByoungerByardBworriesBwoohooBwideBwhewBwhetherBwaysBvanBusbBupdatingBummmBuhBtweetedBtuneBtrendingBtrainingBtonsBtonBtisBtipsBthankyouBthankfulBsurelyBsunburntBsubwayBsteveBstarvingBsmellB	situationBshoutBshootingBshiningBsfBseniorsBscrewBscoreBruleBroleBroflBretweetBresultsBrespondBrepliesBrainsBpulledBps3B	portfolioBplsBplayerBpickedBphotographyBpaintingBorangeBooohBnotesBnormallyBnoooBnetworkBmtvBmillionBmealB	mcdonaldsBmattBmaryBmamasBmakeupB	literallyBlikelyBlevelBlawBlaunchBlakersBknowingBkateBjimmyB	itï¿½sBislandBinvolvedBilyBignoreBidiotBhrBhopesBheheheBheeBhearingBhealthyBhaircutBgrrrBgrandparentsBgnightBglassesBgahBfreezingBfranceBforgiveBfirefoxBfindingBfilledBfeedBfancyBfBeditingBeconomyBdrugsBdrankBdramaBdocB	difficultBdetailsBdecideB	daughtersBdailyBcoreBcookieBcontrolB
connectionBcompBcntBcloserBcleanedBchillingBchildB	challengeBcarterBcampBcaliBcableBbunnyBbunchBbuildingBbrandBbootBbonesBbeinBbahBbagsBavoidBassignmentsBangryBadorableBadmitBadamB33B26ByrsBxboxBwestBvistaBvetBusesBughhhBturningBtruthBtreatBtoothBtoooBtitleBtinyBtheyllBthemeBtechBtaB	surprisedBsuitBstrawberriesBsteakBstationBstandingBsomeonesBsomedayBsocksBsmokeBskillsBsittinBshineBshellBsellBsecondsB	searchingBscienceBsandwichBsaladBsaBrudeBroommateBrockedBrichBrespectBresearchBqualityBproperBpossiblyBpoliceBpointsBplzBpleasureBpityBpickingBphillyBpetBperformanceBpeanutBparisBparanoidBpanicBpancakesBpairBpaintBowBovenBolderBofferBoctoberBnooooBnicoleBmommasBminiBminesBmigraineBmiaBmarkB
manchesterBmakinBloserBlooseBlockedBlinesBlettingBlessonsBlessonBlapBlackBknownBjuiceBjbBissueB	installedBhuluBhttptweetsgBhorseBhonestBhillsBhillBhenrieBhealthBheadsBhatedBhardlyBhanginB
hahahahahaBgudBgrownBgradeBgotsBgoodmorningBgolfBgoldenBglassB
frustratedBfieldBfemaleBfashionBexistBewwB	everytimeBerrorBearBdutyBdroveBdriverBdowntownBdownloadingBdishesBdisBdiegoBdegreeBcrackBcontentB
constantlyB	computersBcompetitionB
collectionBchipsBchestBchemBchapterBcenterBcakesBbrownBbringingBbrightBboundBbotheredBbornBbobBbillBbeeBbayBbasedBbandsBballsBavatarBannoyedBangelsBandyBamyB	allergiesBalcoholBaimBaddingBactBaceBaccidentB9amB5thB500B2moroB23B2009B19ByuByerByahBworkoutBworeBwinningBwingsBwiiBwifiBwickedBwhoaBwheneverBwetBwaveBwatsBwallBwalkedBvisitingBvillageBviewB	vancouverBusefulBurlBupsBtyBtweetieBtweetersBtweepleBtreeBtotalBthatllBtearsBteBtattooBsuddenBstudentsBstoresBspokeBspiderBspeechBsoulBsooooooBsoberBsmilingBsmellsBsmartBskypeBskinBsitesBshoutoutBshopsBshakeBsemesterBseesBseatsBseatBsearchBsarahBrubbishBrossBroastBriteBridingBrevisingBremindBrecipeBreachBrainedBrachelBproBpressBpostsBplainBpissBpillsB	photoshopBphonesBperiodBpeoplesBpartnerBpalmBpackageBpaBooBoddBobamaBnutsBnumbersBnomBnkotbBnerdBnastyBmummyBmomentsBmodeBmoBmistakeBmissionBmexicanBmetalBmemoryBmaskBmarriageBlordBlmfaoBlisaBlimitBlargeBkittyBkellyBitalianBisnB
impossibleBidolBhumorBhookedBhelpsBheavenBgrrBgradBgiantBgfBgeekBftwBfriesBformBforcedBflyingBfloridaBfilesBfeelingsBfedBfarmBexpectBericBentryBenterBeffectsBdreamingBdrawingBdirtyBdeliveryB
definatelyBdecentBdatBcyrusBcuttingBcrossBcriesBcreativeBcreatedBcrashedBcountingBcouchB
conferenceBcinemaBchinaBcertainBcarryBbudgetBbringsB	brilliantBbrianBbreatheBboooBbloggingBbkBbioBbiggestBbffBbeyondBbellaBawhileBattackBatleastBatlBaswellBasapBanniversaryBangB	americansBakaBahhhhhBahahaBactualBaccidentallyBaboveB90B8amB80B200ByehBxxxxBwrkBwouldveBwoopBwokenBweightBwassupBwalmartBvotesBurghBuploadedBunitedBtrustBtoddBtheoryBtermBtellsBtearBteachBtaxBtastesBtagBswollenBswayBsurviveBsurprisinglyB	sufferingBstoleBstokedBsteelBstarwarsdayBssBsquareBspreadBspellBsortedBsmokingBsmilesBsizeBsistersBsirBsigningBshudBshinyBsettingBscriptBscrewedB	screamingBscreamBscratchBscanBsayinBsauceBsangBrunsBrubyBroseBrockingBreviewsBreleasedBregularB	recordingB	receptionBquotesBpushBpurseBpreviewBprayersBpotatoBpopularBpoleBplurkBplantsBpillowBphewBpatheticBparamoreBoweBoutfitB	otherwiseBoooohBoooBolBntBnonBno1BngBmusicalBmsgB
motivationBmorninBmodelsB	miserableBmikeB	microsoftBmichaelBmeeeeBmathsBmassiveB	marketingBmanagedBlyingBlocationBlinksBleavinBlaurieBlasBkissesBkingBjstBjourneyBjoiningBjapaneseBitemsB	insuranceB
incrediblyBincludeBilBieBhoustonBhomieB	hollyoaksBhmBheldBheavyBhahBhBgrowingBgroceryBgreysBgreatestBgrassBgrabBgmailBglasgowBgeorgeBgdBgarageBfusionBfuneralBfruitB
friendsterBfriendlyBflickBfillingBfeatureBf1B	extremelyB	expectingBeuropeBerrandsBentertainingBendsBellenBebayBdyeBdumbBdrawB
distractedBdishBdigitalBdecemberBdawnBdannyBdamnitBdallasBcustomerBcoveredBcostumeBcorrectB	convincedBcontestBcontactsBconsideringBconBcominBcomicsBcomfyBcomfortableBclueBcloudsBclientsBclickB	christianBcheckingBchargerBchargedB
charactersBcalmBbuildBbugsBbudBbsBbrowserBbreathBbowlingBboredomBboatBblocksBblehBbirdsBbestiesBbedtimeBbeautyBbearBbeansBbangBbakedBbabysittingBawsomeBaustinB
assignmentBappearBankleBaddressBadBacheB7amB4amB35B2morrowB22B140B10thB1000BzombieBzeroBzealandByouthByessByellowBwudBwondersBwkndBwkBweakBwavesBwashedBwanaBverizonBvanillaBvalleyBuserBtypicalBtylerBtwitterverseBtwitterlandBtwitterberryBtwinsBtshirtBtripsBtoyBtouringBtopicsB	tomorrowsBtokyoBtmrwBthrewBthnxBtheeBtheaterBtestingBtescoBteaseBtaxiBsyncBsundaysB	sunburnedBsuggestBsuckyBsubjectB	stressfulBstoriesBstopsBstarwarsBstageBstaffBsryBsrslyBspainBsoloBsmsBslowerBsimplyBsimilarBshowedBshortlyBshipB	shatteredBsharedBserversBsentenceBsellingBsecBseaBscrubsBscareBsavedBsaraBsadnessBrulesBruinBrollsBrobBriseBreturnedBresultBrepeatBremindedBregretBrefusesBqueensBqueenBpureBpuppiesBproductBprobsBprisonBprincessBpoundsBpoppedBpooBplaysBplantBpjsBpixBphilBperBpaulBpastaBparentBoriginalBoptionBoperaBohhhhBnovemberBnothinBnorBnoooooBnoonBnoodlesBnineB	newcastleB	neighborsBneighborBnawBnamesBnamedBmysteryBmonBmoiBmodelBmmmmmmBmindsBmichiganBmembersBmeltedBmehBmedicineBmcBmarleyBmarketBmarieBmainBlovinBlogBlimitedBlegalBlastfmBlanguageBlangBlaidBkoreaBkingdomBkillerBkickedBkeenBkayBjussBjoshBjonathanBjoesBjessBjerkBjenBjeffBjeansBjamieBishBinstallBinspirationB
incredibleBicedBhorrorBhollieBholeBholdingBhockeyBhidingBhelpfulBheelsBhedBheckBhavntBharderBhandleBguessingBgroupsB	greetingsB	graduatedBgr8BgossipBgoldBgmBgloriousBgirlfriendsB
girlfriendBgiftsBghostBgasBgaBfrustratingBfrmBfridgeBforestBforceBfoolBfoodsBflewBfinaleBfestivalBfeedbackBfaithBfailingBfacesBexplainBexchangeBespBempireBeffortBeffingBeditBe3BdriversBdraggedBdigBdiesBdeviceBdemoBdeleteBdareBdanBcuriousBcrossingBcreepyBcrampsBcourtBcostsBcornerBconverseB	confusingBcomparedBcommuteBcoachBclockBclimbBcleverBclassicBchinBchilledBchiliB	chemistryB
cheesecakeB	characterBcentreBcashB
canï¿½tBcanceledBcampingBcaBbuzzBbuttBburgerBbumBbuggerBbritneyBbradBbotherBborrowBbombBblowsBblowBbizBbitsBbettyBberryBbellyBbecameBbakingBbahahaBayBaudioBattackedBarriveBarrivalBappointmentB	apologiesBapBanxietyB	announcedBandrewBamusingBaliveB
afterwardsBadvanceBactingBackBabilityB90sB8thB75B630B60B4pmB3amB300BzooBzoneByogaByeahhhByeahhByahooBwoodsBwiseBwirelessBwinkBwifBwhoopBwhooBwhoeverBweedBwearsBwarBwaitedBwahBwackBvipBvidsBusernameBuselessBuponBunhappyBunableBunBughhBubuntuBuberBtwittervilleBtwitterificBtryinBtrousersBtransferBtoysBtorontoBtoolBtonyBtomorowBtommorowBtomatoBtoesBtmobileBthursBthrownBthrilledBthnksBthingyBtheirsBthailandBtextsBtestsB
terminatorB
technologyBteachersBtalentedBswiftBswedenBsweatingB
surroundedB	surprisesBsuccessBstuffedB
strawberryBstinksBstephBspellingBsoooooooBsoonerBsonnyBsomewhatBsoftBsocietyBsoccerBsnowBsnapBsmoothBsmithBsliceBskipBskiesBsissyB	singaporeBsignsBshouldveBshockedBsettingsBseasonsBsceneBsantaBsaltBsalesBsafariBsaddestBrubBrouteBroughBroofBriverBriotBrevengeBretardedBresponseB	remindingBreminderBrecoverB	recognizeBrecentlyBreceivedBrealyBrateBrandomlyBramBqldBqBproofBpromisedBprocessBpreviousBpretendBpresentsBpreB	potentialBporkBpoppingBpoopBpongBpoliticsBpicnicBperthB
performingBperformBpensBpassesBpadBozBotBorlandoBonionBomfgBnxtBnursingBnooBnjB
neighboursBnegativeBneatBnatureBnativeBnakedBmushroomBmovesBmouseB
mothersdayBmornBmonsterBmmBmidBmichelleBmicBmexicoB	mentionedBmeetingsBmeeeBmeaningBmassBmariaBmagazineBmaddieBlyricsBlowerBloveeeeBlovatoBlongestBlollBlogicBloBlistedBlipBlicenseBletterBleavesBleadsBleadBlastsBlambBlabBkoBkkBkittiesBkillsBkatieBjunkBjuniorBjumpingBjudddayBjrBjpBjokesBjointBjesusBjavaBjasonBjakeBitalyBironBinternationalBinstantBinputBinnerB	infectionB
impressionBimageBimacBikeaBignoringBignoredBidiotsBiconBicecreamBhyperBhveBhopefulBhookBhonourBhomemadeBhmphBhittingBhitsBhighlyBhideBhelpedBheapsB	headachesBhappierBhandyBhaiBhahahahBgroundedBgrillBgreaseBgratefulBgraceBgonBgniteBgnaBgingerBgermanB	geographyBgeniusBgeezBg1BfryBfriedBfoxBforumB	forgottenB
forgettingBfoneBfocusBflowBfishingBfilmingBfillBfilipinoBfileBfearBfailsBexactBexBeverythingsBeventsBenvyB	emergencyB	edinburghBedgeBdustBdunBdumBdudesBdrinkinBdrewBdreadingB
downstairsBdougieBdocsBdmsBdizzyB
discussionB
discoveredBdisappointingBdisappearedBdiffBdiamondBdewB
devastatedBdependsBdenverBdemonsBdemB	deliveredBdelayBdefaultBdeadlineBdatesBdamBcutestBcurseBcurrentBcuppaBcupcakeBcuddleBcrownBcrewBcrashingBconvoBconvinceBconstantBconsiderBcomplicatedB	communityBcomedyBcoloradoBcloudBclientBcircusBchristBcheesyBcheckinBchainB	certainlyBcentralBcastBcasaBcanucksBcabBbustBburgersBbtBbrunchBbrooklynBbridgeBbrideBboxesBboomBboilingBbluesBbingBbellB	beginningBbeboBbeatsBbearsBbattleBbassBbangsBbananaBbackupBawwwwwBawhBauntB
attemptingBaptBappliedB
apartmentsBannaBanimeBanimalsBanimalBangelBamountBallahBalBagreedBadoreBachesB	accordingBacceptBabitB95B7thB6amB430B3333B333B330B32B2bB2amB27B2000B16thB09ByuckyBytByousByeyByelledByayyBxoxBwthBwriterBwouldaBwornBwinnerBwin7BwillingBwhoopsBwhomBwhilstBweeklyBwastingBwarningBwaBvirtualBvibesBvenueBvaBupgradedBupcomingBunionB
unfollowedBunfairBummBultimateBu2BtypingBtxBtwppBtwittsBtwittingB
twitterersBtwitsBtweetupBtweetiesB
trampolineBtrainsBtradeBtracksB	toothacheBtoooooBtooooBtoolsBtonsilsBtoiletBtisdaleBtiringBtiresBtimBthusBthunderstormBthumbsBthumbB	thousandsBtherapyB
themselvesBthBtextedB	tennesseeBtendBtempB	teenagersBtcBtbhBtastyBtapeBtampaBswingBsweetyBsweatyBsweatB
surprisingBsupplyB	superstarBsunsBsufferBsuddenlyBsubBstuffsBstubbornBstrikeBstrepBstreetsBstreamB	strangersBstoodBstolenBstickerBstealBstarshipBstarsBstalkingBsprayBspinningBspanishBspammersBsoyBsouljaB	sooooooooBsonsBsome1BsolidBsoftwareBsoftballBsobBsnuggleBsnoringBsneakBsnackBsmoothieBslipBslightBskintBsingsBsignedBsightBshuffleBshoulderBshouldaBshoeBshippedBshapeBsettleB	septemberBseniorBselfishBsecurityBseanBsdB	saturdaysBroveBrootsBroomiesBrockinB
robluketicBrobinBrlyBrippedB
restaurantBresistBreportsBreplaceBrentBremovedBremoteBrelayB
relaxationBrelationshipB
regrettingB	regardingBrefuseB	referenceBrecordedBrecommendedBrecommendationBreceiveBreaderBreactionBrbBraysBrayBrarelyBrangBraiseBpullingBpugBprollyBprojectsB	pritchardBpriorityBprideB	presidentBpresenceB	prejudiceBprayerBpracticallyBprBpouringBpotB	postponedBposterBposhBpodcastBpocketBplaylistBplantedBpissingBpigsBpigBpieBphysicsB
photoshootBpfftBpetsBpepperBpeerBpaysBpatioBpatBpassingBpartiesBparksBpapaBpainsBownerBowlBovertimeBoutlookBoursBosBordersBoprahBoocBomjBoliveBoilBohhhhhBobviousBobsessedBnvrBnutBnuggetsBnoooooooBnooneBnoiseBnoesBninaBnightyBnickyBnicelyB	nevermindB
networkingBnestBnecklaceBnbaBnathanBmuffinBmuchoBmuahBmsgsBmp3BmowB	mountainsBmountainBmonitorBmodBmixedBmitchelBmissinBminusBminorBmiBmetroBmessingBmeowB	melbourneBmelBmeeBmedsBmediumBmatesBmasterBmartinBmarryBmanlyBmaleBmaintenanceBlungsBlucasBlogoB	locationsBlilyBlikeyB	lightningBlettersBlemonBleighBlegitBleeBlebronBlayoutBlawnBlauraBlaughsBlatteBlastedBlambertBlahBlactoseBkoreanBknightBkittenBkirkBkindsBkimBkillersBkicksBkickingBkevinBjuryBjoeyBjimBjapanBitselfBitemBitchyBinspiredBinfamousBindustryBindianaBindianBindiaB
impressiveBimaginationBhwBhurrayBhungoverBhttpustream2w5vBhtmlB	hoppusdayBhopBhoorayBhoodBhonBhollaBhoBhmmmmBhkBhiccupsBhhrsBheyyyBhersBhecticBheadinBhayleyBhayBhawtBhatingBhatersBhardestBhardcoreBgurlBgunBguineaBguiltBguideBguessedBgrrrrBgrewB
greenvilleBgrandpaBgrandmotherBgraduateBgooseBgoooodBgonaBgodsBglobalB
generationBgeneralB	gardeningBgagaBfrigginBfrickinBfriBfrankBframeBforumsBforthBforeignBfollowsBflowerBfliesB	financialBfilmsBfiguringBffsBexplodeBexpiredBexpertB
experimentBevery1BeveBescapeBesBerinBepBenB	emotionalBelBeffedBeddieBedBeclipseBdvdsBduckBdublinBdualBdsBdryerBdrsBdragonBdosentBdoorsBdonBdomainBdollsBdollarsBdmvB	disturbedBdistractionsBdistanceBdisplayB
disneylandBdislikeBdiggingBdiaBdiBdhBdeservedB	dedicatedB	decisionsBdecisionBdealingBdayyBdavisBdataBdarlingBdanielBdammBcutieBcusBcurryBcubsBctBcryinBcruisingBcrawlingB
courseworkBcouldveBcopBcoolestBcoolerBcookedBcontractB
consideredB	connectedBconnectB	confirmedBcomplainingBcommonBcommenceBcomicBcometBcomBcoldsBcoatBcmonBclimbingBclearedBcleanerBclapBcinnamonBciBchuckBchillyBchiBchefBcharlieBchangesBchancesBchairBchaiB	celebrityB
celebratedBcdsBcasesBcaresBcareerBcapBcandyBcancelBcamBcallinBcafeBbustedBburritoBburningBbuffaloBbubbleBbrosBbrbBbootsBbooooBblogsBblindBblewBbleedBbitesBbiologyBbestieBberlinBbensonBbelowBbelovedBbeginBbeatingBbblBbatmanBbasicBbanquetBbabesBayeBawesomenessBawardBautoBaussieBaudienceBatticsB	attackingBassumeBasianBartistsBarrivingBarmyBapptBappreciatedBapplicationBanthonyBanswersBamberBamazonBallllBaliBalgebraBalasBahahahaB	adventureB	advantageBadultBadsBactsBactiveBacademyB	abandonedB730B5pmB48B360B34B31B28B22ndB1amB10pmBzombiesBzeldaBzacByummByaayByaaayBx3BwutBwrittenBwristBwrapBwoutBwotBworldsBworkshopBwoooooBwoooBwoeBwksBwivesBwishedBwipedBwindyBwilliamBwifeyBwhtBwhiskeyBwhensBwendyBweedsBwebcamBwastedBwarpedBwarnBwalletBwaaaaayBwaaaBw00tBvtBvisualBvirusBvictoriaBveronicaBveggieBvampireButahBupgradeB	unpackingBunluckyB
unexpectedBuhhBughhhhBtxtBtwitterworldB	twitteredBtwistedBtwistBtwinBtunedBtumblrBtuesBtuckingBttBtrynaBtrickyBtrickedBtrentBtreesBtreatsBtravisBtrashBtranslationBtrailBtowelBtowardsBtossBtornBtodayyBtireBtightBtigerBtiffB	throwbackBthouBthinkinBthinBthatdB
thankfullyBthaiBthaaBterriblyBtennisB	technicalBtaughtBtaskBtargetBtanningBtankBtakinBtakersBtaiBtacoBsyndromeBsykesBswitchB
sweetheartBsweetestB	suspendedBsusanB
sunglassesBsum1B
suggestionBsuckerBsubjectsBstunningBstudyinBstretchBstoppingBstoneBsteamB	statementBstairsBsquirrelBsqlB	spongebobBspokenBspoilBspockBspiritBspeedBspammingBsortaB
somethingsBsomethinBsodaBsoakBsniffleBsniffBsmileyBslimBsleepsBsleepinBslapBslammedBskiBsizedB
situationsBsitsBsinusBsingerBsimpsonsBsimonBsilenceBsigjeansBsidekickBsiBshowinBshoutsBshortsBshiteBshaveBshackBsewingBselenaBseemedBsectionBseafoodBscrollBscreamedBscottBscotlandBscaringBsbBsausageBsanctuarysundayBsalaryBsacBrtBrpBrosieBrollingBrockyBrocketBrobertBrioBridBreturnsBrestedB	responsesB
respondingBreplysBreplacementBrepairBrenewedBremeberBreloadBreliefBrelaxinB	relativesBrelationshipsBrelatedBrelateB
registeredB
refreshingBrecoveryBrecommendationsBrecentBreasonsB
reasonableBrealiseBreachedBrcBratsBratBranchBraisesBrabbitsBrabbitBquizzesBquietlyBquicklyBqueBpythonBpwBputsBpurchaseBpupsBpunchBpumpedBpshhBpropsBpromoteBpromoBprogressBprizesBprintedBprintB	pricelessBprepareBpotterBpotatoesBpositionBposB
populationBpopsBpopcornBponytailBpolarBpointingBplateBplanetBpjBpizzasBpitBpinBpileBpiecesBpianoB
physicallyBpeterB
personallyBpersonalBperoB	perfectlyBperezBpenBpeeBpeacefulBpatternBpatienceBpasswordBparticularlyBparadeBpandaBpanBpamperBpalB	overnightBovercomeBovercastBottawaBopinionBopenedBootBoooooBooooBohioBofflineBofffBoclockBnurseBnonstopBnolaBnintendoB	nightmareBnieceBnhlB	newspaperBnephewBneilBneighborhoodBneedlesBneedaB	necessaryBnatalieBnatB	nashvilleBnanoBnanaBnailBnachosBmultipleBmuffinsBmudB	motivatedBmorningsBmonkeyBmollyBmodernBmiteBmisterBmissyBmintBmethinksB	messengerBmerchBmeltBmeganBmeetsBmaybBmaxBmauiBmatrixBmaterialBmarylandBmarksBmarcBmanualBmanagerB
managementBmanageBmagicalBmagBlykBlukeBluckilyBlouiseBlonerBlolzBloginBlockBljB	liverpoolBliverBlitBlisteninBlindaBlighterBlifetimeBliesboystellBliesBlgBleopardBlenosBledBleagueBleaderBlaurenBlaughterBlandedBlakerBlackingBlaceyBlabelsBkyleBkudosBkoiBknowwB	knowledgeBknifeBkingsB	keyboardsBkewlBkennyBkenBkeithBkcBkatBkarmaBkaraokeBjungleBjudgeBjtBjordanBjoanBjoBjetBjesseBjerseyBjennyBjeanBjazzBjaneBjamsBjailBjadeBjacketB	iï¿½veBivBittBitdBitbutBirishBirelandBiowaB
invitationB	invisibleB	inspiringBinspireB
inspectionB	insomniacBinlawsBinjuredBinformationBindoorsBindieBindependentBinchesBinboxBimproveB	impatientBimoBimmediatelyBimaxBiloveBillegalBikBicarlyBicantBhungBhumanBhughesBhubsBhpBhottBhostsBhostedBhostageBhorsesBhopedBhonoredBhomesBhomelessB	hollywoodBholdsBhiyaBhireB	highlightBhigherBherselfBheroesBheeheeBheaterBheartsBhealBhayfeverBhawaiiBhappiestBhandsomeBhallBhairsBhahahhaBhahaaBhackBh1n1BgutsBgutBguiltyBguildBguestBgroundBgrilledBgrapesBgrandmasB
graduatingBgooodBgoalBgiveawayBgirlyBgiB	generallyBgbBgangBgambitBgainingBgainedBfurtherB	furnitureBfunniestBfunkyBfuneralsBftskBftBfrogB	franciscoBformsBformerBfontsBfontBfollowinBfoldingBflopBflightsBfiredBfifteenBfcB	favoritesBfasterBfangirlBfamiliarBfairlyBfailureBfactoryBfactorBfabricBexternalB	exploringB
exhibitionB
exhaustingBexerciseBevidenceB
eventuallyBescapedB	equipmentBentertainmentBentertainedB
enterpriseBenteringBengineB
engagementBendlessBendingBemployeeBemoBemmaBelectricBeffinBeffB	educationBeditionBeditedBeatenBearringsBeaBdumpBdubaiBdrumBdroppingBdrivesBdrillBdreamtBdownsideBdorkBdonnieB	dollhouseBdollarBdollBdohB	disgustedB	discoveryBdirectlyBdiggBdieselBdevonBdevilBdetroitBdessertBdesireB	designersBdescriptionBdepotBdelightBdefoBdeeBdebitB	deadlinesBdayyyyBdayiBdayandBdamnedBdamageBdaftBcyclingBcurveBcultureBcueBcsiBcrunchBcruiseBcruelBcrowdBcrisisB
creativityBcreatingBcreateBcrawlBcrabBcozyB	coworkersBcoworkerBcowBcoveringBcouldaBcooksBconvertB
contributeB
conditionsB	conditionBconcreteBconcentrateBcompsB
complimentB	completedBcomplainBcomcastBcomboB
colleaguesBcokeBcodingB	cocktailsBcobraBcnnBclubbingBclipBclearlyBclaraBcitiesBcircumstancesBciaraBchromeB	christineBchoseBchoresBchoirBchocBchipBchileB	childrensBchelseaBcheaperBcharmingBcharmB	champagneBcelebsBcbaBcategoryBcarpetBcampusBcalBcacheB	butterflyBbushesBbushBburnsBbuiltBbucksBbryanBbruiseBbruceBbrowsingBbrodyB	broadbandBbrittanyBbrickBbradieBbowlBbottlesBbotBboostB	booooooooBbooooooBbonusBblownBblowingBblockingBblissBblipBblinkBblendBbleachBblanketsBblankBbiteB	birthdaysB
birminghamBbillyBbillionBbgBbesideBbelongBbeliveBbelatedBbegunBbedroomBbecomesBbeastBbeardBbea09BbeaBbbyB
basketballBbashBbaseBbarsB	barcelonaBbarackBbakeryBbakeBbakBbagelB	backroundBawkwardBaverageBauthorB
australianBauntsB	auditionsBauditionB	attendingBattendBattemptsBattBasylumBassesBashamedBarvoBartistBarticlesBarrivesBarizonaBargumentBarchieBapplesBansweredBanneBanimatedBandorBamenBalllllBallenBalikeBaliceBaidenBahhhhhhBafricaB
adventuresBadvancedBadoptB	admittingB	addictiveBactorBacidBachBaccountsBaahBaaaahB9thB830B5kB56B530B400B3000B2nightB27thB2010B167B150B127B10amB1030BzzzzBzoeBzackBzachBytonyByouuByouiByikesByesssByessirByellingByearbookByeByayyyByawnByaaaayBxxxxxBxpBxoxoxBwxBwwwyoutubecomchineselearnBwuBwtheBwritersBwrestlerBwrappedBworthyBworryingB	worldwideBwoodBwockeezBwntBwkendBwizardBwivBwittyB	withdrawlBwireBwinsBwillyBwidBwiBwhnBwheredBwheelsBwheelBwheatBwhattaBwhaaaatBwhBwendysB
wellingtonBweb20BweathersBwatingBwateredBwarningsBwangoBwandaB	wallpaperBwalksBwaitiBwagonBvpBvoodooBvolumeB
volleyballBvisibleBvisaBvirginBviralB	violentlyBvinegarBvincentBviewingBviewersBvictoryBvictorBvh1BverifyBvenusBventBveniceB
vegetarianBvastBvancityBvalueBvacuumBvacayBvacaBustreamBusersBursBurgeBuptoBupsideBupiBupgradesBunrealBunknownBunitsBungodlyBunfortunatlyB
unemployedBultraBullBuiBuggBudBtymBtwittiesBtwhirlBtwentyBtweeterBtweeplesBtweepBtwasBtwBtutBturtleBtunaBtumBtubesBtubeBtskBtshirtsBtsBtryedBtruBtristeBtrippinBtripleBtrickBtrialBtresBtrendB	treatmentBtreatedB
travellingB	travelingB	transportB	translateBtragicBtraditionalB	traditionBtraderBtpBtoyotaBtowardBtouchingBtouchedBtortureBtortaBtoppedBtonightiBtommyBtoddlerBtodayyyBtodayiBtnBtinaBtimingBtimelineBtilaBtierdBtieBtidyBtiB	throwdownBthreadBthrBthousandBthierBthickBtheydBthemesBthasBthankingBtesterBtermsBterminalBtendsBtelecomBtehBteddyBtechnicallyBteasedBteamsBtdBtcotBtattooedBtasticBtarmacBtangoBtalksBtalesBtagsBtacosBsyncingBsympathyBswingsBswinefluBsweetsBsweepB
sweatshirtBsweatsBswagBsuvB	survivingBsurvivedBsupermanB	sunscreenBsundaeBsumthinBsulkingBsubtleBsubscribersB	submittedBstungBstudiedB
strugglingBstripBstringBstrikesBstrawB	strangelyBstrandedBstraightenerB
straightenBstorageBstitchesBstinkBsticksBstevieBsteadyBstatsBstatBstartrekB	starfleetBstanleyBstandbyB	standardsBstandardBstalkersBstalkerBstaleBstadiumBssdB	spreadingBsprainedBspotifyBsportBspoonBspoiltBspoiledBspitBspillBspicyBspeltBspellsBspeedyBspeedingBspedBspecificallyBspeakersBspeakerBspareBspacesBsp2BspBsoxBsourcesBsoundedBsortingBsooooooooooBsonyBsomaticBsolutionBsoleB	sociologyBsocalBsnickersBsneezingBsnakeBsnailBsnacksBsnBsmashedBsmallerBsmackedBsmackBslowestBsleeepBslaveBslackingBslBskateBsiyaBsitterBsinkingBsingersBsimBsignalBsidewalkBsidesBsicknessBshrimpBshownBshowersBshoweredBshoppedBshockBshizzBshirtsBshippingBshinBshiftsBshhhBshhBsheeshBshedBsharkBsharesBshannonBshadesBshadeBsgBsetupBserveBserialBseptBseparateBseekBseedBseaworldBseBscratchyB	scrambledBscoresBscifiB	scheduledBscenesBscarB	satisfiedBsassB	sarcasticBsansBsanityB
sandwichesB	sandwhichBsampleBsammyBsamanthaB	salvationBsafelyBsadiBsaddenedBsaddBrussianBrunnyBrumBrugbyBrugBrubbingBroutineBrottenBrootingBroomsBronBromanticBromanceBrogueBrogersBrockstarBriskBringsBridiculouslyB
ridiculousBridesBrickBrichmondBrichieBrichardsBriBreznorBrezBreunionB	returningBretroBretiringBresumeBrestaurantsBresearchingBrescheduledB
rescheduleB	representBreplyingBreplayB	repingingBrentsBrentedBremoveBremixBrememberingBrelaxedBrelativeBrejectedB	rehearsalBregistrationBregardsB
regardlessBrefusedBrefundB
referencesBreelBreeeallyB
redesignedBreckonBrecitalB	recessionB	receivingBreadsBreadinBrawBratesBrapBrankinBrandomsBraininBrailsBradBrackBracismBrabiesBquotedBquiltBqueriesBquarterBqiBpushingBpushedBpurposeBpuneBpumpBpukedBpukeBpuffsB
psychologyB	providersBproudlyBprofessionalB
productionB	producersBprizeBprivacyBprintsBprintingBprinterBprinceB	primaveraB
presentingBpresentationsBpreparedBpremiumBpremiereBprematurelyBpregnantB	preferredBpreciousBprankBpradaBpoutingBpoutBpouredBpourBpossibilityBportugalBportableBporridgeBpoppinsB	pollutionBpoliticiansB	politicalBpolishBpolicyBpokerBpoetryBpoemsBpmsBplugsBplugBplotsBpleaseeeBpleasedBplayoffBplanesBplagueB	placementBpixiesBpitchB	pineappleBpiggyBphysioBphysicalBphotographerB
philosophyBphilosophicalBpgBpersonalityBperryB
perfectionBpepBpeelingBpedicureBpearlBpeBpbBpayedBpaycheckBpaxBpauloBpatronBpatrickBpatientsBpatientBpastorsBpassionBpasoBparvoBpartiedBparodyBparB	paparazziBpanteraBpamBpacquiaoBpacmanBozzyBoysterBowwwBownsBownersBoviBoverallBovaBoriginsB
originallyB
organizingBoreosBorderingBoptionsBopsB	operationBooopsBooohhhBoliverBofferingBofferedBoffenseBoceansBoccasionallyB	obsessionBnvmBnutellaBnumbBnowiBnovBnorthernBnormBnooooooBnoodleBnonethelessBnokiaBnoisesBnoeBnjoyB
nightmaresBnightlyBniggasBnicksBnicestBnicerBnicBniBnfgBnewestBnevaBnervesB	neglectedBneedleBneedingBneBnationalBnascarBnasalBnappingBnansBnamanBmuyBmutualBmusicmondayBmuscleBmumbaiBmrazBmowingBmourningB	morrisseyBmorrisBmoringBmorganBmolarBmoanBmitchBmistakesBmiseryBmirrorsBmirrorBminimumBmimisBmillionaireBmillerB	milkshakeBmileysBmikeyB	migrainesBmightyBmiddayBmicroBmgmtBmgB	metallicaBmessyBmerlinBmenuB
mentioningBmentalBmeltingBmelissaBmegaBmeesterBmeaganBmbaBmayhemBmaydayBmatthewBmattersBmasteredBmassacreB	marvelousB
margaritasBmarchBmannersBmangoBmandyBmammaBmajorlyBmainlyBmadridBmaddBmacsBmaccysBm8BlushBloverBloveeBlovBloungeBlottBlopezBloosingBloopBlooooongBloooolBlooongBloolBlolsoBlolllBloliBlogiesBloggingBlockerBlobsterBloadingBloadedBliteBlistsBlistingBlipstickBlinuxBlinkedinBlikewiseBlightingBliedBleslieBlesBlenovoBlendBlemmeBleightonBlegoBlegendBleedsBlectureBleatherBlearntB
leadershipBleBlcBlawsBlavaBlaunchedBlaterzB	lastnightBlaptopsBlappyB	languagesBlaneBlandlineBkongBknwBknockedBknittingBkneesB	knackeredBkittykatBkitchenfireBkidneyBkickinBkellieBkavyaB	katherineB
kardashianBjudyBjsBjournalBjonaswebcastBjokerBjohnsonBjohnnyBjogBjjBjellyBjealousyBjbsBjanuaryBjambaBjajaBjacksonBjacksBjackmanBjackieBjaBizzyBizzardBizBitttBitsucksBitouchBitimBitchingBitandBironingBironicBinvolvesBinvitingBinvitesBinvitedBintentionallyBintenseBinloveBinkBinfectedBindyB
industrialB
individualBindiansBindexBincludedBimpressionsBimmBimagesBikrBicBianBiaBhypeBhutBhurtinB	hurricaneBhurrahBhuntBhunnyBhumourBhumidityBhumidBhugglesBhubBhttptwitpiccom67hacBhttpbitlyr6rfcBhtcBhqBhowdBhousesBhostingBhordeBhopelessBhonorBhongBholsBhoedownBhoeBhmvBhintBhindiBhimymBhikingBhiiiBhiiBhighwayBhidBheyaBhelmetBheatherBheatedB
headphonesBhashtagBhashBharshBharryBharoldBharlemB	harddriveBharBhandlesBhandedBhamiltonBhairdresserBhaikuBhahhaBhackedBgumsBguestsBgueBgtBgrumpyBgroveBgrinBgreetingBgreekBgreaterBgravityBgraphicBgrandeBgranBgrammarBgrahamBgradersBgrabbingBgrabbedBgpsBgovBgotchaBgoooooodBgoogledBgoodluckBgoodbyesBgooBgolfingBgoldfishBgoiBgoddamnBglutenBglueBgloomBglimpseBgitBgigsBghostsBgeoffBgateBgaspBgaloreBgalleryBgadgetBg4BfuzzballBfuriousBfunctioningBfunctionBfudgeB
frustradedBfrogsBfringeBfrickenBfreshmanBfreezerBfreewayBfreedomBfrecklesBfreakyBfrankieB	frameworkBfrBfourteenBfoughtBfosterBfortBforecastBfordBfoldBfogBfoamBfoBfnBfluidsBfloodBflippinBflipBflickrBflBfkinBfittingBfitsBfitnessBfishiesBfirmwareB	fireworksBfinestBfindsBfilthyBfiguresBfieldsB
fieldnotesBfetchBfestBfebBfearsBfavorBfattyBfateBfarmerBfarewellBfalseBfallsBfalloutBfaireBextendBexpressBexpoBexpensesBexoticB
excitementB	exceptionBewwwB	evolutionBeverrBevansBeurukoBeuroBetsyBestateBespressoBerrBeraBequalBenthusiasticB	entertainB	enjoyableBenemyBemilyBelleBelementBelectricityBelaineBeightBegoB	effectiveBeffectBeekBeeeBedwardsBeditorsBeatinBeasilyBearnBdylanBdyedBduperBdunkinBdullBduhBducksBduBdslrBdrunkenBdrummerBdrowsyBdressesBdrearyB
dreambearsBdraggingBdozenB	downloadsBdownerBdoraBdopeBdoooBdoomBdoodBdooBdonutsBdongBdominosBdomesticBdoggieBdoesnB	documentsBdocumentaryBdiyBdivaBdistractingBdistantBdiscussionsBdiscussBdisconnectedBdiscoBdiscB
disappointB	directoryBdiningBdingBdinBdimpleBdigginBdiaryBdianneBdianaBdeyB
developersB	developedB	desperateBdesignsBdesignedBderB
depressionBdentistsBdellBdelishBdeliBddBdatingB	dashboardBdangitB	dangerousBdaneBdandyBdaisyBcycleBcyaBcutsB	customersBcurrencyBcurlingBcureBcultBcullenBcuddlingBcucumberBcubicleBcubeBcubaBcsBcrushedBcrispsBcrimeBcribBcreepedBcraigBcraftyBcrackedBcoverageB
courthouseBcountyBcountsBcoughingBcostcoBcostaBcordsBcordonBcopiesBcopeBcooperatingBcookerBconversationsB
convenientBcontrolsBcontBconstructionBconradB	conqueredB
compatibleBcompanysB	companiesB	committedBcommBcolourBcollectB	colleagueBcoldplayBcoincidenceBcofBcocktailBcoBclothingBclaimsBclaimBcigBchunkyB	christinaBchoppedBchoicesB
chocolatesBchitBchirpingBchipotleBchillenB
chillaxingBchilisBcheeringBcheekBcheddarBcheatingBcharlesBcharityBchargingBchargesBchapBchannelsBchampsBchadBchaBceremonyBcerealBccBcausesBcastleBcassieBcartBcarrieBcarolinaBcarolBcaringBcarelessBcardioBcardiffBcapsBcapacityBcanonBcameronBcamerasB
calculatorBcageBcabinBburyBburstBburbankBbumpsBbumpingBbuggyBbuffetBbuenoBbuddiesBbruisedBbrownieBbrookeBbronBbroadwayBbritainBbrightonB	brightensBbriefBbriBbrewingBbreedingBbreastBbreaksBbreadBbranchBbraceletBboyleBboxingBbowsBbouncyBbotsBbordersBboozeBboooooB	bookstoreBboohooBbonjourBboldBboardsBblushingBblondeBblondBblogtvBbloggerBblistersB	blessingsBbleedingBblechBblanketBbittersweetBbittenBbirthBbiasedBbffsBbfastBbeyonceBbensBbendBbelgianBbeersBbeefBbecuzBbecBbeatwittypartyBbeatlesBbeanieBbdBbballBbatsBbathingBbasementBbartBbarryBbarnesBbannedBbanginB	bamboozleB	baltimoreBbaliBbalconyBbalanceBbakaBbackyardBbacksBbacBbabyyBbabysBbabygirlBbaBazBawwwhB	automaticBauntieBaudreyB
attractiveB	attractedBasylmBasthmaB	assistantBasadaBartworkBarnoldBarkhamBappropriateBapproachingB
apprenticeBappreciationBapplyingBappliesBanywhoBanyhooBanxiousBannualBannouncementBangleBangelaB	amsterdamBampBamongstBamoB	amazinglyBamandaBalpineBaloudBalllBalleyBallergicBalexisBalbumsBalaskaBakoBaightBaidanBahhhhhhhBahahahBagileBaghBagentBagenciesBafricanBaeBadvertBadoptedBadobeB
additionalB	addictionBaddictBadaBactressBactivityBactionsBachingBacctBaccomplishedB
accomplishBacceptedBabbyB
abandoningBaaronBaaahB9pmB930B90210B900B800B6pmB68B67B615B58B4everB3hrsB36B35minsB330amB31stB29B247B20minsB1999B18thB1800B15thB147B145B12thB125B11thB1130B110B10kB1015B01Bï¿½ï¿½B	ï¿½youBï¿½6BzuneBzuluBzsBzeBzacharyBzByummmByukByuckByouyouByouuuB	youngsterByoubutByoooByogurtBymByippeeByipeeByessssByesiByeshByeeeeahByeeB	yearbooksByeahimByeahhhhhByeaahByeaaahByeaaaahByeaaaByasByarnByardsByanByallsByachtB	yaaaaaaayBxxxxxxxxBxoxoxoBxmasBx64BwweBwuvBwusBwthemBwritesBwreckBwrapsBwrappingBwowyouBwoundsBworshipBwormBworkwhatBworkunfortunatelyBworktooB	worksheetBworkloadBworkkB	wordpressBwoopsBwoolB	woodstockBwompBwomensBwolfBwoahBwmeB	withdrawsB
withdrawalBwitchBwiserB	wisconsinBwiresBwipingBwingstopBwindsorBwindingBwilB	wikileaksBwikiBwifesBwietersBwierdBwidgetBwichBwhyyyyBwhysBwhoseBwhoohooBwhitsunBwhistleB
whisperingB	whispererBwhineBwherBwheeBwhatreBwhatnotBwhatevBwhatchuBwhatchaBwhataburgerBwhalesBwhaleBwgnBwerntBweltsBwelshBwellityBwelcomedBweighBwehoBwegmansBweekmyBwebsitesBwebcastBwealthyBwealthBwdBwbBwayyyBwaxedBwaxBwavedBwattsBwatkinsBwateringB
waterfrontB	waterfallBwasnB
washingtonBwasherBwarrenB	warhammerBwardrobeBwants2B	wanderingBwandBwanB
walmartcomBwallsBwallaceBwalesBwalBwakesBwaitressBwaikikiBwafflesBwacomBwackyBwabbleBwaaahBvpnBvoidBvoicesBvogBvodafoneBvocalBvocabBvmwareBvividBvisitinBvisitedBvisionB	virtuallyBvirginiaBviolatedBvintageBvinBvimBviewsBvickyBvhsBvfcBvetsBversionsBverBventureBvendingBvehicleBveganBvegaBveBvcrBvcenterBvarsityBvalidBvadosBvacuumedBvaccinesBv2BuuuupBuuButterlyButterBurselfBurlsBureBurbansBurbanBupstairsB	upsettingBupperBuppBupandBunusualBunreadB
unpleasantBunparalleledBunpaidBunofficiallyBunoBunniBunnecessaryB	unlimitedB
universityBuniverseBunitBuniqueBunintentionallyBunholyB	unhealthyBunfortunateBunfollowBunfB	underwoodBunderstandsBunderstandableB
underscoreB
underbellyBunderageBundBuncoolBuncomfortableB
unbearableBunavailableB
unansweredBunaBummmnnnBulanBuhhhBughwhatBuggghBtyraB	typicallyBtypesBtyingBtxtingBtxtinBtwittertakeoverB
twitterfonB	twittererB
twitterenaBtwittaBtwittB	twiterfonBtwiterBtwinzBtwikiniBtwiiterBtwiggasB
tweetstatsBtweetinBtweeBtweakingBtvsB	tutorialsBturnoutBturkeyBtupacBtunnelBtunesBtunerBtumorBtuhBtuesdaysBttylBtssBtsccBtrustedBtruongBtrunkBtrumpsBtrumpetBtrufflesBtroyBtroughBtroubleshootingBtroublesBtroopersBtrolleyBtriviaBtrippingBtrippedBtrioBtriggerBtrekkingBtreatingBtravelsBtraumatizedBtrappedBtransportationBtransparencyB
transitionBtransitBtransformersBtransBtraitorBtrainerBtrainedBtrailsBtragedyBtouristBtouchinBtotalledBtossedBtortillaBtorrentBtoroBtorisBtoreBtopshopB
toothbrushBtoooooooBtooiBtoobutBtonighBtomozBtomatoesBtoiletsBtodoBtoastingBtoasterBtnxBtmwBtminusBtivoBtitlesBtitanicBtissuesBtissueBtiskBtireddBtimeeeBtimberlakesBtiestoBtideB	thursdaysBthudBthtsBthtBthrowingB	throbbingBthreeeBthreadsBthoughhBthotBthoiBthistleBthirtyBthingieBthighsBtherellBthereiBthereeBtherebutBtheatersBthatï¿½sBthanxxBthankiesBthangBtf2BtextmateBtextinBtestedBterryB	terrifiedBterrificBterabyteBtennantBtemptingBtemptedBtemperatureBtellyBteleportB	telephoneBteheBteethingBteenageBteeheeBteeBtechnoB	techniqueBteasingBteachesBtaylorsBtatumBtattoosBtatamiBtastedBtasksBtapewormBtaoBtannerBtannedBtaniaBtallBtalagaBtakehomeBtailBtafeBtadBtackleBtabsBtabletsBsytycdBsyncedBsymptomsBswitzerlandBswitchedBsweenyBsweeneyBswedishBsweatersBsweaterBswearsBswampedBswBsussB
suspiciousBsuspectBsurfingBsurfBsuprisedB
supportingB	supporterB
superpowerBsuperbBsupBsunriseBsunniestBsumtimeBsummitBsuiteBsuitcaseBsuicidesBsuicideB	suggestedBsudokuBsuckssssBsuckingBsuckaBsubscriptionB	subscribeBsubsBstylesBstumbleBstuffierBstudiosBstuBstruggleBstronglyBstrongerBstrokeBstripperBstripeyBstringsBstrictBstressinB
stressfreeBstrengthB
streamlineB	strategicBstraighteningBstormyBstormsBstormingB	stockholmBstingsBstingingBstilesBstilBstickyBstickingBstickamBstevesBsteroidsBstepmomsBstealthBstaysBstayinBstatueBstationsBstaticBstashBstartinBstarringBstaringBstaplesBstaplerBstankyBstandsBstampBstableBsrryBsriBsrB	squirrelsBsqueezeBsquadBspyBspursB	sprinklerBspringsteenBspringsBspreadsheetsBsprainBspotsB	spotlightBsposeBsporkBsplitBsplendidBspiritsBspinachBspinBspillingBspilledB	spielburgBspiceBspewBspendinBspencerBspelledBspeedsBspectacularBspecificBspeciesBspecialsBspearsBspeaksB	speakeasyBsparklyBspankBsowwyBsowwieB	southlandBsouthendBsourceBsourB
soundtrackBsoundingBsoulsBsortsBsorrowsBsorriesBsorchaBsophiaB
soooooooooBsooonBsoooimBsoonsoBsoonishBsolvingBsolvedBsolveBsoldiersBsoggyBsofaBsodasBsodBsockBsoapsBsoakedBsnuggledBsnifBsneezedBsneezeBsnappingBsmoothlyB	smoothiesBsmokesBsmfhBsmashingBsmBslyBslushBslumdogBslotBslippersBslippedBslicesB	sleepoverBsleeperBsleeeepBslavesBslaterBskypingBskyeBskullBskoolBsklBskippingBskippedBskinnyBskillzBsketchyBsketchBskBsistaBsissBsinusesBsinsBsinkBsingstarB	sincerelyBsinB
simplicityBsilentBsighsBsickyBsickerBsicBsiaBshutsBshuldBshudderBshucksBshrugBshowcaseBshoutingBshoudBshoreB
shopaholicBshooBshldBshittttB	shirtlessBshirleyBshinningBshiftingBshieldsBsherbertBshelvesBshelterBshelfB	sheffieldBsheetsBsheepBshawtyBshawBshavedBshaunBshatnerBsharpB	sharapovaBshanBshampooBshallowBshaanxiBsgtBsezBsexBsevereBsettledBsessionsBservedB
seperationBseperateBsepBseoB	sentencesBsensibilityBseminarsBselectedBseesmicBsedBseatingBseamlessBscrubBscrewingB
screenshotB
scratchingB	scratchesB	scratchedBscottyBscottishBscionBsciBschooolB	schoolingB	schoolersB	schedulesBscentsBscentBscenieBscenarioBscariestBscaresBscBsbsBsaynowBsayangBsauBsatsB	satelliteBsatanBsashimiBsarsBsaneBsandyBsandmanBsandB	sanctuaryBsanaBsamsBsameeBsambergBsaluteBsalonBsakeBsaintsBsailBsagaBsaferBsaddoBsadderBsacredB
sacramentoBsackBsabbethBs3BryansBruthBrushingBrunninBrunnersBrulerBruiningBrubsBrsmvBrsBrouterBrouletteBrotationBrosesBroseanneBroscoeBroomieBrooBromeoBrollerbladingBrolledBrodneyBrobbedBroastedBrighBrichardBribenaBrhubarbBrfBreyBrexBrewriteBrewardBreunitedBretweetsB	retweetedB	retrieverBretreatBrethinkBrestrictionsB	restoringBrestingBresortBrescueBrerunsBrerunBrequirementsBrequiemBrequestsBrepublicBrepostB	replacingB	repiercedB
repeatedlyBrepeatedBrenoBreminiscingBremediesBremberBremainsBrelyingBreliB	relegatedBrejectsB	rejectionBreinstalledBrehabBregisterBregalBregBrefugeeBrefsBrefrigeratorB	refreshedBrefluxB	referringBrefBredyedBredskinsBredoBredheadBredbullB	recoveredBrecoupB
recordingsB
recognizedBrecipesBrecapBrebootBrebelBrearB	realizingB	realisticBreadyyyBrdBrazerBrawrBravenBratingsB	raspberryBrashidBrareBrantBrangersBrangerBramenBrallyBraleighBraisedB
rainforestBrahBraftBraffleBracquetBracketBracistsBr2BquintoBquinnBqueueBqueryBqueerBquashedB
qualifyingBquadBqsBqotBqoodBqdobaBpusherB	purposelyBpupBpunkBpunchingBpumpsBpumpkinBpuffyBpuddingB
publishingB
publishersB	publishedBpublishBpubliclyBptsBptaBpruningB	providingBprovidesB
providenceBproverbsBproveBproteinBprosperBprosB	proposalsBpropB	promisingBpromisesBprologueBprogramsB
programmerB	programmeBprofilesB
professionBproductivityBproducerBproduceBprixBprismBpriorB	princetonBprimeBprimaBpricingBpricesBpricedB
previouslyBpreventB
pretendingBpressureBprescriptionBpreschoolerBprepromBprepBpreorderB
predictingB	predictedBpredictableBpreciateBprawnsBpraisingB
practicingBpplsBppB	powerblogBpowBpoutsBpoursBpoundingBpotusBpostersBpostalB
portsmouthBportoBportlandBportBpopsicleBpoppinBpoorlyBpoorerBpoopyBpoopingBpoopedBpoofyBponyB	polyesterBpoloBpollyBpollardBpokesBpoiaBpoetsBpoetBpodBpmslBplzzBpluggingBpluggedBpluckBplotBpleasantBplaytimeBplayoffsBplayinBplatformBplatesBplasterBplantingB
placementsBplacedBpkuBpitasBpissesBpipersBpintBpinkpopBpingBpineBpinchedBpilotBpillBpiesBpiercedBpickleBphuketBphraseB
photographBphoenixBphobiaBphillipsBphillipBphatBpharmacyBphBpgpmBpfBpeteBpervsBperuBpermitB
permissionBpermanentlyBpercentBpepsiB
peppermintBpennsylvaniaBpendantBpembrokeBpegBpeepBpeekabooBpeedB	pedicuresBpebblesBpeakBpdBpcdBpaypalBpaydayBpawsBpauseBpatchBpastyBpastorBpasteB	passwordsBpassportB
passengersB	partyyyyyBpartyyyyBpartyinB
particularBparentalBparcsB	parallelsB	paperworkBpapersBpantryBpanelBpandoraBpalmsBpalaceBpakistanBpairsB	paintingsBpaintedBpaigeBp9BoyBoxfordBowwBowtBoverseasBoversB	overratedBoverkillB	overjoyedBoutingBoutfitsBoutdatedB	ourselvesBouiBouchieBoscarBorthodontistBorphanBorilliaBorganicBorgBoreoBoregonBoracleBoptionalBoptedBopposedBopportunityBoperationalB	operatingBopensBopBonscreenBoneselfBoneeBondemandBomwBomletteBomgshBomgoshBomBolympicBollBolivesBoldiesBokiBokayyyBohmygodB	oficiallyBofficesB	officallyBoffendedBoffendBofcourseBodBoctBoccuredBoasisBnwBnuttinBnuthinBnursesBnunBnumb3rsBnumBnuggetBnudgeBnthBnprBnpBnowjustBnowitBnowadaysBnovelsBnovaBnouB
nottinghamBnottBnotionBnotificationsBnoticesBnothingsBnosBnormsB
noooooooooB	nooooooooBnonsenseBnonmediaBnonlongBnomatterBnoisyBnoidaBnogoBnodBnobodysBnmBnkBniqhtBningBnileyBnikoBnikkiBnikeBnightttB	nightlifeBnightiBnicoBnickedBnicholasBniamhBnewportBnewishBnewbornBnewbieBnewarkBneuroanatomyBneuroBnetworksBnettlesBnetherlandsBnetbookBnerveBnerdyBnephewsBnekkidBneglectBnedBnearestBncBnaziBnawwBnavyBnauseousBnatyBnaturalBnapsBnannaBnancyBnanBnamingBnambuBnaiBnadiaBmyyBmyrtleBmyaBmxBmwahahaBmustveBmusterBmussoBmushyBmuseumBmuseBmusclesBmurrayBmurphysBmurderedBmunchBmunaBmultiBmulchBmuBmtnBmriBmozartsBmozartBmovietooBmovieingBmovementB
motorcycleB	motorbikeBmotionBmotherï¿½sBmossB	morrrningB	morrisonsBmorleyBmorgansBmorBmoppingBmooreBmoodsBmontrealBmontannaBmonkBmoniesBmonfriBmonctonBmomiesBmoldovanBmojitoBmogwaiBmodemBmockBmnBmmsBmmmmmBmlbBmkBmixingBmitchellBmitBmisunderstoodBmissusB	misplacedBmishB	miserablyBmisconstruedBmisBmirandaBminneapolisBminimalBmineeB
milkshakesBmilanoBmilanBmiiBmigranesBmidwayBmidtermsBmidjuneBmgaBmeterBmesBmeredithBmereBmentorBmentBmensB
meningitisBmenaceBmemyBmemesBmemberBmeinBmeiB	meeeeeeeeBmeeeeeBmeditateB
medicationBmedicalBmedB	meatballsBmeatBmeasureBmeanieBmdBmcrBmcflyyBmcflysBmayersBmaxinBmattressBmatildaBmateyB	maternityBmatchingBmatchesBmatchedBmastersBmashedBmasculinityBmartiniBmartBmarketsBmarkedBmarinesBmarinaBmariahBmareBmarcoBmarBmansBmannnnBmannBmanicsB	manhattanBmammalsBmalteseBmalibuB	malaysianBmalaysiaB
makerfaireBmakBmaineBmailsBmaiBmahBmagnetBmagnersB	magazinesBmadresBmadreBmadnessBmadlyBmadisonBmaddiesBmacarenaBmaamBmaaanBlynneBlydiaBluxuryBluvinBlureBlungB	lunchtimeB
lunchbreakBlunaBluggageBlucyBlubBlowestBlovinglyBloveyBloversB
lovelinessBloveeeeeB
love1thingBlousyBloudlyBlouBlotteryBlotsaBlotrBlosBlorraineBloooveBloooooveBloooongB	longboardBlollllBloicBlogicalBloggedBlobbyBloadersBlngBlmkBlmfaooooBlmfaooBlmBllBlizzieB
livingroomBlivinBlitleBliquorBlipsBlineupBlincolnBlimoBlimeBlimbBliftingBlifesBliesgirlstellBliekBlibbyBliamBliaB	lexingtonBlevelsBletdownBleonardoBleonBleoBlensesBlensBlennyBlemsipBlemonadeB	leicesterBled2BleapBleanBleakedBleahBleadingBleadersBlbBlazingBlayneBlaxBlavenderBlaurensBlatterBlashesBlaserBlasagnaBlarsBlarryBlarBlappytopBlapitB	laodiceanBlanceB	lancasterBlaminateB	lamesauceBlamerBlambsBlalaBlahiranBlagB	lafayetteBladysB	ladyhawkeBladieBlacroixBlaborBkyBktBkrogersBkrispyBkrisBkremeBkrakenBkpBkoolBknoxBknowwwwBknowimBknowiBknooowBknockoutBknockBknitBklemmBklB	kiyosakisBkiwiBkittensBkitBkindleBkindergartenBkimmyBkimbaBkillinBkiddiesBkiBkhanBkgsBkfcBkeywordBkeyedBkeychainBkevBkettleBketchupBkeshiaBkentBkennelBkbsBkazimBkayleighBkaylaBkayaBkawawaBkatyBkatiesBkarenBkaneBkanBkalokaBkaBjuzBjustwatchedBjustintvBjusticeBjuniorsBjunejulyBjumpsBjumpedBjulysBjulietBjulieBjuliaBjugaBjoysBjoyfullBjournalistsBjourBjosiahBjoolsBjonesBjokingB	johnathanBjjjBjipBjillBjgBjesterBjessieBjerrysBjeremyBjennBjenkinsBjelousBjelloBjejeBjeffreeBjdBjaysBjaykBjayceesBjaredsBjarBjansenBjanesBjaneiroBjamiesBjalanBjakartaB	jailbreakBjaiBjagerBjacksonsBjackedBjackassBiyaBiwonderBityouBitaggBispBisisBisaacBirresponsibleBirregularlyBironyBirisBiplayerBiphonesBipaBionbasedBioBinvitationsB
investmentBinvestigatedBinvestB	inventionB	intriguedBinterviewedBinternsB	internetsBinternalB	interfaceBinteractiveBintendedBintelligentB	integrityBintakeB
instrumentBinspiteBinspirationalBinsomniaBinsistBinsanityBinsBinnocentBinnBingBinformedBinfestedBindulgeB	indonesiaBincreasinglyBincreaseBincorporateBincomeBincaseB	inabilityBinaBimposeBimportedBimportantlyB	immediateB	imaginaryBimacsBiloveyouBillnessBiightBihaveBihateBignorantBiglooBigetBidealBicurveBickyBickBichigoB
hystericalBhypedBhvB
huntsvilleBhunkBhungerBhundredBhumbugBhumbleBhulkBhuggedBhudgensBhubbysBhuaaaaBhttpwwwdesignianlBhttpustream2uhsBhttptwitpiccom67tp9Bhttptwitpiccom4wh4dBhttptwitpiccom4jg09Bhttptwitpiccom4j585Bhttptinyurlcomdhpol7BhttppromotionitaggcomBhttpblipfm5z3oqBhttpbitlysnjenBhttpbitlym8zfxBhttpbitlyj00haBhttpbitly6fgxdBhttpbitly16urvvBhtownBhsBhowreBhowieBhowevaB	houseworkBhotterBhotnessBhospBhorrorsBhorridBhorriblyBhookyBhookahBhoodieB	honeymoonBhomesickBhomeiBhomeeBhollandBhogBhobbyBhittinBhissBhiringBhiredBhipsBhipBhimiBhiltonBhillsongBhikeB
highschoolBhighestB	hibernateBhiatusBhhahaBhgtvBheyyaBhetB	hereeeeeeBherebutBhendrixBhenBhelsinkiBhellooooBhelenBheirBheinekenB	hehehehehBheheheheBheheeeBheeeeyBheavensBheartwarmingB	heartburnBheartbrokenB
heartbreakB
healthcareBhealedBheadsupB
headliningBheadlineBheaderBhbuBhazBhaywardBhaylesBhawksBhaveeBhatsBhatchBharvardBharlowBharleyBhardwareBharbourBhappendBhangoutBhandzBhandmadeBhanBhamBhaloBhallwayBhallmarkBhalfassedlyBhaleyBhairstylebutBhahaiB	hahahahahBhackerBhabitBh8BgwBgutterBgusBgunsBgunaBgumboBgumBguinnessB	guaranteeBgtgBgta4BgrumblesBgrumbleBgrubBgrrrrrBgrrhBgrowlBgroomBgrizzlyBgriffinBgreetBgreedyBgreeceBgreatlyBgraphicsBgrannyBgrafB	graduatesBgradesBgraderBgraciousBgrabeBgpuBgownBgovtB
governmentBgotoBgorillaB
goooooooodBgooooBgoodiesBgomezBgodawfulBgoatBgluedBglowingBglovesBgloryBglobeBglitterBglitchBglenBglBgivinBgivBgirliesBginBgimmeBgilmoreBgilbertBgilaBgigglingBgigglesBgiggleBgiganticBghettoBggBgfsBgetchaBgeorgiaBgeometryBgentsBgentlyBgenevaBgenesBgenderBgemsBgeekyBgeeeBgearsBgaysBgawdB	gatheringBgatherBgatesBgaryBgarlicBgantBgamingBgameboyBgalBgainBgahhhBgahhBgaahBfwdBfussBfuntimeBfunnnnBfunnnBfunnierBfunkB
fundraiserBfuelBfuckkkBfubumvcBfuBfruityBfruitsBfrozenBfrownBfrisbeeBfriendorfollowcomBfrenzBfreezesBfreezeBfred6BfreakedBfreakBfranklyBfountainBfotoBfortunatelyBforrealBformulaBformatBfootyBfoolishBfondueBfondBfolkBfoggyBfocusedBflysBflyerBflushBflourBfloodingBflicksBflavourBflavorBflatsBflashingB	flapatacoBflapBflameBflagsBflagBfknB
fixrepliesBfixingBfishyBfishesBfisherBfirtsBfirmlyBfirewireBfionaBfinnaBfinlandBfinishesBfingernailsBfinalyBfinBfilterBfilBfiftiesBfifthBfiddleBficBfiascoBfianceBfewerBfeversBfestivitiesBferryBfernandaBfenderBfemalesBfeltedBfellowsBfellasBfellaBfelineBfeedsBfeederBfeeBfeaturedBfckingBfavsBfatigueBfathersBfastestB	fashionedBfascinatingBfartedBfartBfarmersBfantasyBfanclubBfamiliesBfameBfallowBfallonBfallenBfairnessBfaBeyebrowsB	extensionBextendedBexportB	explosionBexplorerB
explicitlyBexplanationBexplainsBexperimentalBexperiencingBexpenseB	expansionBexpBexitB
exercisingBexcusesB	excursionB	exclusiveBexclamationBexceededBevryoneBevrBevieBeverrrBeverbodyB
eventhoughBeventfulBevaB
eurovisionBeuphoriaBeuBethanBetBestimateBestherBestasBestBessaysBerrorsBermmBermB
erinchardeBerickaBericaBereB
equivalentBequalsBepsBenvironmentBentirelyBenteredBenoughtBenginesBengagedBengageB	energizedBendureBendorsementBendometriosisB	endlesslyBencoreB	employeesBempathyBemotionallyBemergeBembassyBembarrassingBembarrassedB
embarrasedBemailingBemailedBelvisBelsesBelmoBelliottBelliotBelkBeljBelevenBelevatorBeleganceBelectionBekBefronBeffyBeffortsBeeeeBedwardBeducatedBeditsBedenBeddyBeconomicBecBeasternB	earphonesBearnedBeaglesBeagleB	eachotherBe71BdynastyBdwBdvrBduvetBdutchBdustbinBdurianBdunnBdumpedBdumboBdubbedBdubBdsiBdrummersBdruggedBdropsBdropedBdroolB	drizzlingBdrizzleBdriveinBdripBdriedBdrewsBdressingBdresserB
dreamwidthBdreaminBdrawnBdratBdrakeBdraftBdownsB
downloaderBdownfallBdownedB	doughnutsBdoughB	douchebagBdoublesBdotsBdotaBdoseBdonsBdonnaBdonationBdonateBdoggyBdodgingBdocumentationBdocksBdnsBdkBdjsBdjingBdivingBdivineBdisturbanceBdistributionBdistractB	distancesBdissapointedBdisorderBdiskB
dishwasherB
disgustingB	discussedBdiscoverBdiscouragingBdiscouragedB	discountsBdiscountBdisasterBdisappointmentBdisabledBdirectorB
directionsBdipsBdippinBdipBdiosBdintBdinnersBdinerBdindinBdimplesBdifficultiesBdieingBdidnï¿½tBdiceBdiasBdiapersBdianeBdialBdezBdexterBdevsBdevicesBdevelopmentB
developingBdevBdetoxBdetourB	detentionBdestroyBdespairBdeservesBderbyBdepositsB	deodorantBdentBdennyBdenmarkBdeniedBdenialBdenB
democraticBdelsBdelhiBdelBdefragB
definitionBdefineBdefenseBdefendBdefeatedBdeerBdeeplyBdeeperBdeeeeseartedB
dedicationB
dedicatingB
decreasingB	decoratedBdecodeBdeclinedBdecidingBdecemberistsBdebussyB	debuggingBdebbieBdebatingBdebateBdebBdeanB
dealershipBdcdBdayyyBdayweekBdayssssBdayssBdaylightBdayaBdawBdatabaseBdashBdasBdartsBdarrenBdarlinBdanyBdansBdannysBdanicaBdangerBdancedBdampenBdampBdamnnnBdamagedBdaddysBdadaBdaaayBczechBcysticBcuzzBcuuuuteBcuterBcustomBcustardBcurvesBcurlyBcuredBcupsBcupboardBculturalBcullen26Bcullen10BcudBcubesBcubbiesBctrlBcssBcs4BcrumblesBcrsBcrowdsourcingBcrowBcrossfitBcrochetBcrispyBcrispiesBcringeBcriminalBcricketBcreeperBcreekBcreamsB
crazyangelBcraziiBcravingsBcraneBcrampingBcrackingBcrackersBcpsBcpBcoxBcourtesyBcouponsBcouplaB	countriesBcounterBcougarBcoryB	corruptedB	correctlyBcoronaBcornerstoneBcornBcorkBcoreyBcordovaBcordBcoralineBcopsBcopiedBcooooooooolBcoolnessB
conventionBcontributorsBcontraryBcontinuallyBcontextBcontemplatingBcontainB
contactingBconsumptionB
conspiracyBconsolationBconsiderablyBconservativeBconnectionsBcongratulatoryB	congratssB	confusionBconfusinBconflictBconfirmationB	confidentB
confidenceBconfessionalBconfBcondolencesBconditioningBconcurB	concernedBconcernBconceptBconanB
compromiseBcompositionBcomplimentsBcomplexB
completingB
compensateB	companionBcommunicationBcommitmentsBcommingBcommercialsB
commentingB
commentaryBcommandBcomfortBcomet09BcomebackBcombinationBcolumnsBcolumbusB	colouringBcolossusBcolossalB
collectingB	collapsesBcolinB	coldstoneBcolderBcolbertBcolaBcoffeBcodyBcodBcocoaBcocoBcobrasBcoachesBcmBclutchesBclothBclosureBclosetBclosestBclosesB	closenessBcloneBcloggingBclimbsBclickingBclickedBcleaninBcldBclawsBclaudiaBclaudeBclassyB
classmatesB	classmateBclassicsBclashBclancyBclairesBclaireBcivicBcitizensBcircleBcinemasBcindyB
cincinnatiBciderBciciBciaoBchuB
chroniclesBchowderBchosenBchopsBchoppersBchompBchokedBchiroBchingoB	childhoodB	chihuahuaBchicksB	chickenedBchicaBchezBchesterBcherylBcherryBcherishBchemoBcheetosBcheetoBcheeseyBcheesecakesBcheeksBcheatBcheapyBchattinBchattedBchatsBchasingBchartsBchartB	charlotteBcharleyB
charlestonBcharBchaperBchaosBchanningBchandlerB	championsBchampionBchallengingB
challengedBchaletBchalBchachiBcfBcertBcentsB
centigradeBcentBcemetaryBcelticB	cellphoneBcelebritiesBcelebrationBcelebBceilingBcebuBcbBcauzBcautiousBcausedBcatwalkBcaterBcastingBcastielBcartoonsBcartoonBcarryingBcarriersBcarrBcarneBcarmenBcarltonBcarlsBcarlaBcareersB	cardboardBcaramelBcaptainsBcaptainBcapitalBcapeB
canterburyB	candidateBcanberraBcanalBcampaignBcameoB	camcorderB	cambodianBcaloriesBcalorieBcalendarBcalculusBcaffeineB	cafeteriaBcacaBbyeeeeBbyebyeBbuzzingBbuzzedBbuysBbuuuutBbustingBbusiestBburiedBbunniesBbumsBbumpedBbumpBbullBbulkyBbulbBbuglesBbuggingBbuffBbuenosBbucketBbtchesBbscBbsbBbrushingBbrunoBbruisesBbrowniesBbrooksBbroodyBbroncosB
bronchitisBbrixtonBbritsBbritBbrisbaneBbrisBbrightlyBbrighterBbrewedBbrewBbrekkieBbreezyBbreedBbreB	brazilianBbrawlBbraveBbrandonBbraidBbracketBbracesBbraBboystownB
boyfriendsBboxersBbowBbouquetBbouncingBboulderBbottomsB	botheringBbossesBboreddBborderBbopBboothBbootcampBboooooooBbooniesBbookbagBboobooBbondingBbomBboltBboiseBboiBbobaBboardingBboBbmthBblurBbluntB	blueberryBbluBblowinBbloomingtonBbloomBblondingBbloggersBbloggerificBblipfmBblergBblenderBblastingBblairBblacksB	blackjackB
blackhawksBblBbklynBbkkBbitterBbitingBbitchyBbishopB	birthdayyBbipolarBbinBbikesBbienBbibleBbhBbeverlyBbettingB
bestfriendBberraBbenefitBbenedrylBbeneathBbenchBbenadrylBbeltBbellacullen13BbelievedBbelfastBbeijingBbehavedBbehaveBbeginsBbeginingBbeesBbeckBbebeB
beatweetupBbeardsBbeanBbdaysBbcozBbbmBbbcB	batteriesBbathsB	bathroomsBbatBbasketBbarleyBbareB
bankruptcyBbankingBbangingBbangedB	bandwidthB	bandwagonBbambiBbamBballoonB	balancingBbaileyBbaiBbadluckBbadgeBbadddBbacteriaBbackpackBbackedBbachBbacardiBbabysitBayoBawwwwwwwBawfullyB
awesomnessBawesomeiBawesomeeBawefulBawareBawaitsBawaitingBavoidingBavidBaveBavBautomaticallyB
autofollowBautofillBausBauntyBauntiesBaugust84BauditBaudiobooBaudiBattractBattitudeBatticBattachedBatmosBatlasBatlantaBathleticBathensBaswelBasusBastonBassignedBassemblyBassassinBasksB
ashleighhhBashleighB	ashingtonBasbestosBartsB	arthritisBarrestedBarreBargueBarghhhB	argentinaBarenaBardB	archuletaBaraBaprilBappologyBapplicationsBappearsBappearedBappealB
appartmentB
apparantlyB	apologizeB	apatheticBaotsBanythinBanyonesBanyhowBanydayB	anxiouslyBantsB
antisocialBanticipatingBantBanother1BanothaBannoyBannounceBannasB	animationB	animatingBanhBangusBandroidBandreBandersonBanddBanatomyB	analyticsBamusedBamichaelBameBamazedBamazeBamaBalyssaBaltBalphaBalohaBaloeBalmondsBallowB
allnighterBallisonBallianzBallergyBallensBalienB	alejandraB	alcoholicBalabamaBairlinesBairconBaimingBahoyBahahBagreesBaghhhBagainiB
afternoonsBafterallBaeroBadvilBadvertsBadsenseBadrianaBadmittedBadmireBaddinB	addictingBadamsB
activitiesBacsBacousticBacingBachievementBachieveBacedB
accountingB
accidentlyB
accessibleB	acceptingBaccadentallyBacademicBabuzzBabsoluteBabsentBabroadBabramsBabidingBabcBaarghBaaawwwBaaawBaaahhhB999B99B98B950B94B904B8dB87B7pmB78B77B750B730pmB70sB70B69B65B64B63B614B61B60sB600B5amB57B53B516B5000B4wardB4gbB	48hoursnzB47B46B450B42B415B41B40minsB404B40000B3wordsaftersexB3kB3gB39B37B30minsB2pmB2niteiB2mozB2doB2890B250gbB250B24thB230B21stB20thB2001B1sB1millionB1hrB1gbB160B15minsB13225B12stB123B1210B1200B11pmB11amB1111B10minsB109B1040B1030pmB103B101B100thB$100000000000000000000000000000000000B10000B0981B07B06B05B03Bï¿½ï¿½ï¿½ï¿½Bï¿½ï¿½hB
ï¿½ureoB
ï¿½timoBï¿½tearï¿½Bï¿½stupidityï¿½Bï¿½nelegBï¿½iï¿½mBï¿½greedï¿½B	ï¿½480B	ï¿½300Bï¿½27Bï¿½20Bï¿½2Bï¿½17B	ï¿½150Bï¿½14B
ï¿½1299BzzzzzzzzzzzzzzzBzzzzzzzgoodnightB
zwitschertBzwarteBzumbaBzumBzuljinBzucciniBzuBzsgBzorzpeepBzornyBzoozooBzoomedBzoombeziBzongziBzonedBzommggBzomgB	zombiepixBzolBzoitaBzoeyBzoBzitBzippysBzipcodeBzipBzindexBzimmerBzetaBzeropointitBzensifyB
zenrelatedBzenjarBzenhBzendB	zemotecomBzemoteBzekeB	zeitgeistBzebraBzdbpBzbrushBzavaroniBzappaBzapatosBzapBzaneBzammoBzakBzahedanBzachyBzaccieBzabooBzaByyyyuckByyankeesBywByvonneByuuupByuuumByuupByusByurByupstillByupsByuppieByuppByupasByuotubeByungByunByumyumByumwishByummyyyByummyiByummmmmyyyyByummmmByummiestByumbByultronByulByukkyByujmByuhhByuenB	yuckhappyBystBysjByselfByscByroldByrbookByoyoByouï¿½reByouxByouwhatByouuuuuuuuuuuByouuuuuuByouuuuuByouuuuB	youtubesoByoutubesByouthankByoustinkatrespondingtotextsByouselfByourzByoursiB
yourselvesByours13ByournameB
youregreatByourbiggestfanByoupornB	youpleaseByouohByounginsByoungestByoungeByoumissByoulolByoulByouknowimsofreshtilldeathB
youironingB	youhopingB
youhhhhhhhByouheheByoubrokebackByoubeenByoubeByosemiteB	yorkshireByorksByoplaitByoouB	yoooouuuuByoooouuuB
yoooooooouByoooooooooooooooooooouByoooooooByooooByooByonkersByonByolandaByokoByokeB
yogurtlandB	yogurtingByoguliciousByoginiByoghurtByoggByogaingBynBylBykyatByknowByirByippieeByippieByippeeeByipawByinzByiiiitByihaByieldByhereByhawByhBygByfrogByeyahbutByewByetiByetgoingByetbutByetandB	yesyesyesByesthereB
yesterdayyByesterdaylegByesterdayimByesterdayillB
yesterdayiByesterdaybestByesterdayandByesterdayahhhB	yestardayByestByessumByesssssssssssB
yessssssirByessssssByesssssByesnotByesnoByesmetByesmaByesitsByesbutByes2dyByes2ByepsjustByepracedByenByellowishorangeishbrownishByellByehitsByehhaaaaaaaByeheyByehaByegByeeyByeehahByeehByeeetB	yeeeehaaaByeeeeeessssB
yeeeeeeeeeByeeeeeByeeeeahiByeeeeByeeeahByeeeByeayyyByeayyByeayByeaupB	yeaterdayB
yeasterdayB	yearstheyByearsssssssByearslolB
yearsblowsByearrrrByearmissionByearlyByearlingB	yearbringByearbookhahahaByealooksByeahyourByeahweB	yeahthoseB	yeahthatsByeahsheByeahsByeahmyByeahjustByeahhhhhhhhhhhhhB
yeahhaventB	yeaaaaaahByeaaBye6le3niBydayBybwmByayzByayyyyyyyyyyyB	yayyyyyyyByayyouByayschoolisoutByaysByaynessB	yaymencomByayiByayayByay1ByavannaByataByatByarisByardsaleByardiB	yardhouseByaosByaooB	yaobrokenByaoByanksByankeesByaniByangByallunfortunatelyByaleByalByahyanB	yahoospamByahhByaerByaayyByaaayyyByaaawnByaaaawwwwnnnnByaaaaayByaaaaaayByaaaaaaaaaaaayByaaBy4itBxxxxxxxxxxxxxxxxxxxxxxBxxxxxxxxxxxxxxxxxxxBxxxxxxxxxxxxxxxxxBxxxxxxxBxxxxxxloserBxxxxxxBxxxrebelrebelxxxBxxoxoBxxooBxxoBxuxuBxtBxsBxraysBxoxoxoxoxoxoBxoblairBxmlrpcBxmlBxmindBxmenwolverineBxfilesBxemBxdxdxdBxddBxbox720Bxbox360BxblBxbBxatlBxanaxBxamsBx100Bx0Bwï¿½lBwysBwyourBwyatttBwy911Bwwwyoutubecomwatchvcyjvgnp9vaBwwwyoutubecomwatchv9ftuv3xmrn0Bwwwyoutubecomwatchv6urrxta8domBwwwyoutubecomsluzzaaB%wwwwweeeeeeeeeeeeeeekkkkkeeeennnnddddBwwwwhispergiftscomBwwwwahliaocomBwwwultimatelohanorgBwwwtwitterfridgecomBwwwtwittercomdjarkaBwwwtraveljunkycomBwwwsoompiradiocomBwwwsamstephenscomBwwwrobsessedpattinsoncomBwwwreverbnationcomsukiBwwwredirlandaesBwwwplayerstationitBwwwpicnikcomBwwwmysweetebonycomBwwwmyspacecomtynishakeliBwwwmyspacecompwnageorgBwwwmyspacecommissmickeyBwwwmyspacecomflownyceB!wwwmyspacecomfashionisthenextcityBwwwmyspacecomdjspyBwwwlatalkradiocomBwwwjustintvkubbur20BwwwjustintvdjandywBwwwhennesseyblackcomBwwwhavealovelytimecomBwwwdujourmagcomsubscribeBwwwdosriosrestaurantcomBwwwdirectgovukstudentfinanceBwwwcrossroadsnetgocincinnatiBwwwchittypulgacomBwwwbilko22comBwwwaudiomicrocomBwworkB	wweeeeoooBwwecomBwwdcBwwBwveBwuzBwutsBwussupBwunBwuldBwthoseBwthatBwtgB	wtfwinterBwtachingBwtBwsopBwsmokeyBwsBwroxBwronglyBwrongandBwroclawpolandBwrkoutsBwrkgBwrkdBwritinBwritersblockBwriteohBwristsBwrigleyBwrightB	wrestlingB	wrestlersBwrestlefestBwrestledBwreckingBwreckersBwreckedBwrathBwrapperB	wranglersBwranglerBwraithBwr0teBwrBwpBwowzersBwowzaBwowwwwB	wowthanksBwowsaBwowiBwowhopeBwotdBwossyBwosB	worthlessBworthingBworthaB
worshipperBworsBworriediBwormyBwormieBworldrainingBworldnowBworldisBworldimaB	worlddontBworkyyBworkyBworkwiseB	workweeksBworkthinkingBworkthatB	worksthatBworkstationBworksickB	workplaceBworkntBworknoBworkmenBworklongBworkkkkkkkkkkkkkkkkkBworkkkBworkiveBworkitsB	workingohBworkinghappyB
workingbutBworkingboooB
workingandBworkiesBworkhillcatsBworkfinallyBworkersBworkdrawingBworkdoneBworkdetailsBworkdaysBworkboyzBworkbestBworkarrivedB	workaboutB
wordslooksB
wordgummedBwordddssBwordbyBwordartB	worcesterBwoosooBwoorkBwoopeeBwooowB
woootwooooBnwoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooBwooooooooooBwooooooBwoooompBwooooBwooomyBwooohoooBwooohB
woolworthsBwoolseryB	wookiemanB
woohoothisBwoofersBwoofBwoodyBwoodlandBwoodiesBwoodenB
wonï¿½tBwontonsBwonlyBwongBwondrousB
wonderlandB
wonderingiB	wonderfurB
wonderfulyBwonderfullyB
wonderfullBwonderedBwondeflBwolverinechilledBwolverhamptonBwolftrapBwokkingBwohooBwoefullyBwnnaBwnlawsBwnatBwnaBwmidsBwmiadBwldBwlanBwlBwkpBwkingBwkdsBwjphlipBwizzBwizB	wittyrudeB
witnessingB	witnessedBwitnessBwithstandingBwithnBwithinsoBwithdrewB
withdrawlsBwithdrawalsBwithbB	witdrawalBwitchuBwitchaBwishlistBwishinBwiselyBwiredBwirdsBwipeBwinwoodBwintourBwintersBwinterboardBwinstonBwinningachesBwinnersBwinksyBwinksBwiniBwingnutsBwingBwinebeerandBwindsBwindows7B	windmillsB
winchesterBwincedBwin1BwimpyB	wimbledonBwilsonBwilshireBwilmyBwillsBwillpaginateBwillnotBwillnoBwilllB
willkommenBwillieBwilliamsjoshBwilliamsBwillhoitB	willgraceBwilldoBwillblokBwildwoodBwildomarBwildlyBwildlifeBwildflowersBwildeBwilcoxBwilberB	wikipediaBwikihowBwikidBwiihBwifiyouB
wiffleballBwiffB
wifeyyyyyyBwiewBwiederBwidowBwidgetsB
widescreenBwiderBwiddddBwiaihBwhyyyyyyBwhyyyB	whywhywhyBwhydBwhyareyoustillhereBwhwhaBwhutB	whuffaokeBwhuahahhahaBwhreBwhrBwhoveBwhoshereBwhoresBwhoppingBwhopeeBwhoottBwhooreBwhooopsBwhooopBwhoooopsBwhooooooBwhoooBwhoolllleeeeBwhooaaaBwholeyB	wholesaleBwholelyBwholeheartedlyBwhoishonorsocietyBwhohooBwhodB	whoayoureBwhoahBwhittledBwhittierBwhitneysBwhitneyBwhitleyB
whitewaterBwhitesB	whitelistB	whitecapsBwhitB	whistlingB	whistlersBwhistleblowerBwhiskyBwhiskersBwhiskedBwhipBwhiningB
whinetweetBwhincopB	whimperedBwhilestupidBwhilesBwheverBwhereverBwhereeBwhenyouBwhenwhenBwheniwerealadBwheewBwheelockB
wheelchairBwheatsBwhatï¿½sBwhatttteverBwhatthefuckBwhattaburgerBwhattBwhatsupB
whatsoeverBwhatshappeningBwhateverworksBwhatadayBwhasupB
whassqooddBwharraBwharBwhalenBwhadyaBwhackerBwhackBwhaatttaattttBwhaaayBwhaaatB	whaaaaaatBwhaaaaaaaaaatBwhaaBwfmBwfdB
weï¿½reBwetsBwetitsBwesttBwestlifeBwestinBwestgateBwesternBwestendBwestcottBwesleyBweselyBwesBwerewookieeBwereveryB
werespiderBwereoctopusBwerecountingBwerderBwerdBwerB
wentworthsBwendBwembleyBweltBwelpBwellyBwellwoodBwellweBwellureBwellurBwellthatBwellonlyBwellnotBwellnessB
wellmovingBwellllllllllllllBwellllBwelllBwelliBwellhopeB	wellhapitB	wellgottaB	wellgoingBwelldeservedB
wellbikiniBwellbackBwellaB	welcomingB
welcomeyouBwelcomewouldB	welcomeeeBweitersBweissBweirdosBweirdoBweinfestBweiglyB
weightlessB	weightingBweighedBweiBweheyyyyBwefollowBweezyBweesBweerBweepyBweepsBweepingBweepBweeooowBweekworkBweekthenBweeksoverdueBweeksiBweekpleeeeeassseeeBweeknendBweekndBweekiBweekendtakingBweekendparisB	weekendorB
weekendnotB
weekendhowBweekendgottaB
weekendbutBweekendaB	weekend80BweekenB	weekeeendB
weekdays56BweekdayBweeekendBweeeeeBweeeeBweeeBweedingBweeboBweeabooBwedsB
weddingyouBweddingsBweddingbtnoBweddinBwebshotsBwebkitBwebkinzB
webgraphicBweberBwebduB	webdesignBwebconceptingBwebcomBwebcamsBweb10BweaverBweatlerB
weathernotBweatherboredsoooBweakiBwdwBwciBwcfBwcBwbuB
wazzupppppBwazBwayyyyyyBwayyyyyBwayyyyBwayyBwayneBwayimBwayiBwaydontBwayconfusedBwaxingBwavyBwavvesBwavingBwaverlyBwaupoosBwattyBwattupB	wattchingBwatsonBwatirBwathingBwathBwatersthoughtB
watermelonBwaterleyB	watergunsB	watchpoorBwatchmenB	watchingnB
watchingggBwatchesBwatchaBwasupimBwasuB	wasstraatBwasssupBwasnï¿½tBwaslooksB
waslookingBwashingtonlameBwashingtonimBwashersBwasamBwasabiB
warwoundscBwarwickBwarriorsBwarrentyBwarrantyBwarrantBwarnerBwarmupBwarmthBwarmtBwarmsBwarmlyBwariBwarfieldB	warehouseBwareasyBwardenBwardBwarcraftBwarblersBwarayBwantstobeakiddagain3BwantitB	wanthollaBwantewdBwantcntBwantbutBwantanB
wannnnaaaaBwannabeBwandersBwanaaBwalwalBwaltzerBwalnutBwalmondsB
wallpapersB
wallinwoodBwalleBwallbutB
walktheyreBwalkinB
walkeronerBwalkerB	walgreensBwaldoBwaldiBwalcersBwalaikumBwalahBwakkeBwakinBwakilBwakeupB	wakenbakeBwakefulBwakeboardingBwaittBwaitnBwaititsBwaitandBwailiBwaiitBwahtsBwahtBwahooBwahhhhBwahhBwahamericanB
wahahahahaBwahahahaBwahahaBwagnersBwaftingBwadesBwadeBwachtingBwachingBwachaBwacBwaawBwaahBwaaayyyyBwaaayBwaaaayBwaaaahBwaaaaahhhhhhBwaaaaaaaaahhhhB	waaaaaaaaBwaaaaaaaBwaaaaBw8Bw4mBw4Bvï¿½oBvx3000BvwllersBvwll2009BvwBvvBvuBvs2003BvryBvrbocomBvoyedBvoyagerstyleBvoyagerBvouchersBvoucherB	vordermanB	voraciousBvoorBvondtBvonabeBvonBvomitingBvolvicchallengeBvolunteeringB	volunteerBvolumesBvolterraBvoltBvolcomBvolcanoBvolB
voilï¿½BvoicesmileeyeslaughandB	voiceoverB	voicemailBvoegeleBvodkasBvodkaBvodasBvodB	vocï¿½BvocalsB
vocabularyBvoBvmasBvmailBvlunaB	vlogcandyBvlogBvizBviviannsBviviBviveBvityBvitaminsBvitaminBvitalBvitaBvisuallyBvisstBvisitsBvisitorsBvisitorBvisitngBvisiteBvisialvoicemailBvisasBvirusesBvirtusBvirtuesBvirtueBvirtualizationBvirginsB	virginityBvirgeBvipsBviperBvipcomeBviolentBviolenceB
violationsB	vioceniteB	vinylcladBvinylBvinsensitiveBvinerinimicBvindBvinceBvimeoBvigorousBviewedBviewdrowningBviennaaustriaBviennaBviejoB
vidsï¿½BvidoeB	vidjagameBvideoyouBvideorecordB
videophotoBvideokeB	videoblahBvictoiasBvictimBviciousBviceB
vibrationsB	vibratingBvibrantBvibeBviableBviBvhitsBvhemtBvgtribunecomBvfactoryBvestsBvespaBvesakBveryyyBverticalchineseBversionshelpB
versioningBverseB	veronicasBveronaBvernaeBvermouthBvermontBvereyBverdictBverandaBveraBveoB
venueswhatBventuraBventingBventiBvenomBvenkyB	vengaboysB	venezuelaBvenetianBvendorBvelvetBvehiclesBvegiesBvegiBveggiesespeciallyBveggiesB	vegetableBvegesBvedantaBvectorBvatBvaseBvasB
varnishingBvariousBvarietyB	varietiesBvansBvanessasBvanessaBvaluesBvaluableBvallejoBvallBvalkyriaB
validationB	valiantlyBvalerieB
valentinosB	valentinoB
valentinesBvaldezBval4nowBvalBvagueBvacuumsBvacuummyB	vacuumingBvacinesBvaccinationsBvacationsightseeingB	vacationsBvacationingBvacashunandBvacantBv110Bv099pb5B
uzbekistanBuxBuwianBuveBuvBuuuuughBuuuupsBuuuughBuuuuBuuurggBuuuggghhBuuuBuupBuugghhButurnButtonButteredButsButrechtButiButhxButhanksButf8ButerusButdkickButdB
uswitchnetBuswhatBussBusnlbestB^usmobilereuterscommobilemanyarticleprdturlhttpwwwreuterscomarticlebigmoneyidus1284981420090508BushersBusfBusetBusersfanfrickingtasticB	uselesslyBuseingBusdBusatexasBusaelBursssssBurselffB
urlmincnmtBurlautoexpandBurkBuribeBurghhBurggghBurgentBurbanaBuqhBupuggBuptownBupstupidBupstateB
upsidedownBupshotBupsetsBuprootedBuppsBuppppppBuppppBuppercutBupmaybeBupkeepBuphaveBupgradedoneBupforB	updressedBupdontBupdatestheyBupdateiBupbusyB
upbringingB	upbracingBupbeatBupahhBuoBunzelaifBunveilBuntwitBuntukBuntileBunsurprisedBunsureBunsungBunsuccesfulBunsubscribeBunstoppableB
unsociableB	unsettledBunseededBunsalvageableBunsaltedB
unreliableB	unrelatedBunravelBunproductiveB
unpreparedB	unpopularB
unpluggingBunplugBunpackedBunopenedBunnyBunmutedB	unmarriedBunlockedBunlockB	unloadingBunloadBunlikeB	unleashedB
unladylikeBunkownBunixodbcBunixB	universalBunivB	unitymodeBunityBunittestBunitenBuniteddogscomBuniteBuniqnameB	uninvitedBunintuitiveBuninterestingB	uninstallBunimpressedBuniformsBuniformBunifiedB	unhookingBunhookB	unhelpfulBunheardB
ungratefulBunfunBunfriedBunfortunetlyBunfortunatleyBunfortunatellyBunfortuantleyBunfortBunfollowingnotBunfollowingBunfollowersB	unfixableB
unfinishedBunfathomableB	unfairemoB
uneventfulBunemploymentB	undrstandBundiesBundevelopedB
underworldB	underwearBunderthesinkBundertandingB
understoodB
underratedBunderpriveledgedB
underpantsB	underpaidBundernourishedB
underneathBundergroundBunderdogB
undeniableB	undeletedBuncontrollablyBuncontrolableBunconditonallyB	unclaimedBuncBunboxedBunbelievableBunattractiveBunappealingBunanticipatedBunairBunagiBumzugBumuulanB	umpireingBumnoBumnicksBummwhyBummmphBummmmBummaBuminaaBumhowBumbrellaï¿½BumbrellalessB	umbrellaiBumbrellaBumaBuluB
ultrasoundB
ultimatelyBuletBulduarBulcersB	ukrainianBukpubsBuhppBuhooohBuhohB
uhmygawdddBuhmBuhkneeB
uhhonestlyBuhhmB
uhhindoorsBuhhhhBuhhhgBuglyoneeBugliestBuglierBughjustB
ughhreallyBughhiBughhhhhhhhhB
ughhhhhhhhBughhhhhhBughdoB
ughanywaysBuggsBuggoBugghhhhhBugghhhBugghB	ugggghhhhBugggBugBufffBuffBuduhnBudsBudonBudidBuddBucsdBuclaBuclBuckyBuceBubutBubookBubertwitteritBubcsB	ub40bringBu16BtyvmBtytnBtysonBtysBtyringBtyposBtypoBtypinBtypedbutBtypedBtynishaBtylersB
tylerhappyBtylenolBtygaBtygB	tyaï¿½BtwwBtwuneBtwtviteBtwpBtwoloersB
twnzfinestBtwngreatBtwitwooB	twitttttyBtwittterBtwittleBtwittixBtwittinBtwittersphereBtwitterslowlyB	twitterrrBtwitterringBtwitterrBtwitterpartyB
twitternutBtwitternameB	twittermyB
twitterlolBtwitterlandhouseB
twitterizeB
twitteritsBtwitteringupB	twitterinBtwitterifficBtwitteriBtwittergadgetBtwitterfridgeBtwitterfailsBtwittereveryoneBtwittercopytopifyBtwitterchallengedB
twitterbutBtwitterbugzBtwitterbugsnothingBtwitterbugsBtwitterblackberryB
twitterbgtB
twitteratiBtwitteraddictBtwitteractiveBtwittedBtwittascopeBtwitsterB	twitskiesBtwitpicsBtwitmomsBtwitmamaBtwitharBtwitfriendsBtwitfamBtwitchyB	twitchingBtwitchesBtwitaddictedBtwit01BtwistoryBtwisterBtwist86BtwirpsBtwirlBtwingeBtwindexxcomBtwimulationsBtwilightguyBtwiinBtwiggiesBtwidgetB	twiddlingBtwibeBtwibbleBtwiBtwenty20BtwentiesBtweetyB
tweetvilleB	tweetttttB
tweetsuiteBtweetshrinkingBtweetlolBtweetlessandBtweetiliciousBtweetheartsBtweethamptonBtweeterzBtweetenBtweetbudB
tweetbreakB
tweetbeaksBtweetb4ueatBtweetageB
tweepslandB
tweepsgoodB	tweefightBtweeetBtweeeetB	tweeeeeetBtweedlesBtweedeckBtweedBtweddingBtweakedBtwatterBtwainBtwaBtvtotalBtvfilmtheatreBtvaddictBtv21BtutusBtutorsBtutoringBtutorBtutleBtuteesBtussaudsBtusharBturtlesBturnonBturninB
turnaroundBturkishBturkeysBturfBturbullBturbinesBtupprwreBtunsiaBtuningBtunapunaBtumorsB
tumbleweedBtulipsBtulaneBtuitionBtuffBtuesdaydumbBtueBtucsonBtuckerBtubeyyouBtubasBttytomorrowBttyBtttBttownBttoBttgBttfnBtswiftBtswassenBtsssBtsiBtshwaneBtsarBtrytomergetwotoolsBtrystBtrysometimesBtryinhBtryingtakingBtryingsorryBtryblahBtrxBtrustyBtrumpingBtrullyB	truesdaleBtruelyBtrueiBtrueeeBtrueandBtrudysBtrudgedBtrsBtroublesthanksBtroubBtropicalBtroopsBtronBtrollingBtrojancongratsBtrojanBtroisBtrixBtrishB
tripsavingBtripolyBtripletBtripicsBtriniBtrinaBtrimmerBtrimmedBtrilogyBtrillinBtrikeBtriesBtricksBtrickpiecesBtrickeryBtricinaBtributeB	tributaryBtribesBtribblesB	triathlonBtriangleBtrevisoBtreningBtrendyBtremendouslyB
tremendousBtrekyBtrekwhatBtrekoneBtreknotBtrekkyBtrekkiesBtrekkieBtrekkedB	trekagainB	treelinedBtreeeeekBtreckBtrebleB	treasuresBtreBtrayBtravyB	travoltasB
travellersB	travelledBtravelinBtraveledBtraumatizingB	traumaticBtraumaBtrashesBtrashedBtrashcanBtrasfusionloadedBtrapezeBtrapBtranssiberianBtransmissionB
translatedB
transgressBtransformerB	transformBtransferringB
transferedBtranscriptionBtranscribingBtransatlanticBtransactionsBtrangBtrampyesssssirBtrakBtraitBtrainstubesBtrainrB	trainingsB	traingingBtrailorB	trailheadBtrailersBtrailedBtragidyBtragicluckilyB	tragediesBtraffffffficB	trafalgerBtradingB
tradescantBtradersB	trademarkBtrackyBtrackpadBtrackkBtrackingBtrackflashbackB
trackballsB	trackballBtracieBtracesBtraceBtrBtpsBtpgloveBtpcBtoysonlyBtoynoBtownnoBtowingBtowerBtowelsBtowedBtowBtoveBtoursBtournyBtourneyB
tournamentBtouristsBtouriBtouredBtourdeusBtouqueBtoughestBtouchwasBtouchscreenBtouchesBtottalyBtotherBtotesBtotemBtoteBtotalyB	totallingBtotBtossingBtossinBtosserBtossaBtosBtoryBtorturedBtortsBtortoiseshellB
tortelliniBtorontosBtornadoB	tormentedBtormentBtorinoBtoriBtoreyB	torentialBtorconB	torchwoodBtoqetherBtopsBtoppingBtopnotchBtopmanBtopifyBtopendBtoozBtooyoullBtoowerdphubbysB
toothpicksBtooprobBtoooothBtoooooomBtooooooBtoolkitBtoolbarBtooieBtoodleBtoodaayyBtoocantBtoobastardsBtooamBtonytBtonsillitisBtonoghtBtonkedB	toniteoneBtonitehappyB	toniiiiteBtoniightBtonihtBtonightthanksB	tonightnoBtonightmaybeBtonightjustinB
tonightandB	tonightamBtoniBtongitsBtonesB
tonematrixBtomsBtomrrowBtomosBtomorrowwimBtomorrowwannaB	tomorrowwBtomorrownewBtomorrowneedBtomorrowlolBtomorrowlandB
tomorrowisBtomorrowhappyBtomorrowgottaBtomorooBtomoroBtomorahBtomoraBtomooBtomoiveBtomoBtommrowB	tommorrowBtommBtomarrowbecauseBtollBtoledoBtoldddBtolBtokioBtokiBtokensBtokeBtoinksBtogglingBtogethaBtogetBtoeatBtodayyyyyyyyyB
todayyyyyyB	todayyyyyBtodayyyyBtodayyouBtodayughBtodaytryoutsBtodaytottalyB	todaythisBtodaysonB	todaysomeBtodaysniffleBtodaysadB
todayreadyB	todaynolaBtodaynoBtodaymyBtodayitsBtodayinBtodayimBtodayhoweverB	todayhopeBtodayhmmphhB
todayhappyB	todaycoldBtodaybutB
todaybeingB	todaybeenBtodayagitatedBtoday1BtodatB	todaaaaayBtocarBtobuttBtoastyBtoastersB
toadtasticBtniteBtnaBtmwrBtmrohowBtmrBtmorrowBtmoroBtmobilesBtmoBtmhBtmailBtmBtlc2BtksBtixsBtitosBtitlewhoopsBtitaniumBtitaBtishaBtishB	tiringitsBtirednotB	tirednessBtirediBtiredhadBtireddddBtiredddBtiredcoffeeBtiramisuBtiptopB	tipsywellBtipsyBtippingBtippersBtippedBtinyï¿½sBtinytwitterB	tinternetBtintedBtinknB
tinkerbellBtinkBtiniestBtinglingBtinfoilBtinedBtimthumbBtimothyBtimidBtimezzzB	timestampB	timeshahaB	timesgoodB	timesbackBtimerBtimenowBtimenoBtimelyBtimeifB
timefrenchB	timeframeBtimeevenBtimeeBtimeandBtimeaB
timberfakeBtilliesBtilesBtileBtikkaBtikiBtiimeBtiiiiiimmmmmmeeewhateverBtiiiiiiiredBtightenBtigersB	tigerheatBtifannyBtiesBtierdiBtierdaB	tiehahahaBtiedBtidyingBtidiedBtidayBticonBticksBticklingBtickledBtickleBtickingBticketttttssB
ticketttttB
ticketlessBtickerBtickedBtiberiuBtiashaBthyBthxxBthurstagB
thursdayyyBthunderstormsperfectBthunderstormsBthunderstormingBthundershowersB
thunderrrrB
thunderingB	thunderedBthumpingB	thumbnailBthughBthruiBthrsBthrowsBthrowingkeepsBthrowinBthrowbieB
throughsheBthroughiBthroatsBthroBthristyBthrillseekersBthrillingandB	thrillingBthriftyB	thresholdB
threenightBthreeleggedBthreedayB	threatensBthreateningB
threatenedBthrdBthqBthowingBthoughtwhatBthoughtfuluB	thoughlolBthoughimBthoughiBthoughheB
thoughgoodBthoughfeelingB
thoughbbqsB	thoughanyB	thoughandBthosBthorsBthorpeB
thoroughlyBthoroughBthornyBthornberrysBthongBthomsonBthompsonBthomasiBtholololBthoesBthoeBthodontB	thocaughtBthnknBthnkBthmBthiswashBthissBthislolBthisitsBthisidBthisfunB
thisbrandiBthisareBthirtyshhhyoureBthirteenBthirstyBthirstBthirdsBthirdchapterBthinksmB
thinkinwowB	thinkingiB	thinkhopeBthinkerBthingysBthingoBthingnotBthingandBthimkBthiisBthiingBthieBthickeBtheysBtheyrBtheviewBthessalonikiBthesisBthesBthersBthermometerBthermalBthereweBthereveBthereoyyBtherelolBthereiveB	thereforeBthereeeeeeeeeeeBtherebyBtherapueticB therainbowholicmeeeriesilencenetBtherafluBtherBtheorysBtheofficenbcBthenyouB	thenpsychBthennnnnnnnBthennnBtheniBthenhowsBthemworkBthemthenBthemsoBthemoonBthemloveB
themegivesBthemedBthembutBthematicBthelovelybonesBthelmaBthekasBthehodgecoukBtheheckBthehannabethBthegameBtheeseBtheeeeBthedailyshowBthebearBthebcBtheatresBtheaterahahBtheaaBthazBthayB	thatyoureBthatyoBthatyBthatwouldmake1ofBthatvBthatsï¿½meeBthatssB	thatlaterB	thatgonnaB
thatburgerBthatbothBthatbesidesBthatandBthatamBthassaBthashBtharBthanxsBthankyooooouBthankuB	thankssssBthanksssBthankssB
thanksmineBthanksiBthanksdoBthankgodBthabksBthaanksBthaankBtgthrBtgifiBtgiBtgcBtfarpBtfaBtextilesBtextedcalledB	textbooksB	texangirlBteusBtetepBtetensBtetBtestersBtessyBtessBteslaBterrorizingB	territoryBterriBterraceBterraBterminologyB	terminalsBterenceBteratomaBterasseBtequilaBtentsBtenthBtensionBtennerBtenieceBtenhoBtengoBtengBtenerifeBtenenenBtenenB
tenderloinB
temptationB	temporaryBtempleBtempeBtempatBtemmeBtellinBtellersB
televisionB
televisingBteletubbiesB
telescopicB	telegraphBteleBtekzillaB
teignmouthBteganBtegBteflonBteeveeBteetsB
teetotalerB
teethmouthBteethedBteesBteenyBteensthanksBteensBteenagerBteenBteekayBteeheeiBtedxBtedtalksBtediousBteddychuckingB
techyuppieBtechyBtechnologicallyB
technicianBtechieBtecasBtecBteaserBteasBtearyBtearsitsBtearrrrrrrrBtearingBteamiB	teamgreenBteacupB	teacherimBtdwpBtdukesBtdubBtdlBtdaynothingBtcuBtbonesBtboneBtbagBtbBtayoBtaylaBtaxmanBtaxesBtavaresBtaurenBtauraBtauntingBtattoedBtatteredB
tattedddddBtatlerBtatiBtateBtataskyBtataindicomBtassiBtasmaniaB	taskbasedBtaskbarBtaserBtartBtarsierBtarrantBtarotBtargetsBtargetedBtardeBtarblackBtaraBtaquitoBtaqa3odBtapsBtapingBtapesBtapatBtapBtantrumBtantraBtantalizinglyBtannaBtanksBtangledBtangibleB
tanghalingBtammyBtamlynBtameraBtameBtamBtallyBtallcreeB
tallblondeBtalktalkBtalkshowBtalkkkBtalkingvoiceBtalkedaboutBtalindaBtalentsBtaleBtaknBtakerBtakeawayBtakB	taiwaneseBtaipeiBtaintedBtailsBtahongBtahoeBtahBtaggingBtagersBtagalogBtaffysB	taffjonesB	taekwandoBtaeBtadpoleBtadiBtadaBtacticalBtacosoneBtacomaBtackyBtacklingBtabzBtabooBtabloidsBtabloidBtablespottingBtablesBtablejukeboxBtabbyBtabBta3yeemBt9r8amBt9Bt71Bt400Bt20Bt1iBt11Bsï¿½oB
systemwideBsystemsBsysBsyrupB	syntheticBsynologyBsynnBsymptonsB	symphonicB
sympathizeB
sympathiseB
sympathiesBsympahtyBsymondsB	sylvesterBsyapaB	syamptomsBsyaBsyBsxswBswwwaaaagggBswornBswordsBswordBswoobsBswolleneeksB	switchingB
switchfootBswitchesBswipedB
swingstillBswinedBswindon2BswimsuitBswifferBswelterBswellingBsweetyeBsweetpotatoeBsweetiesBsweetheartsB
sweetgrassBsweeterBsweetdreamsBsweepstakesBsweeetBsweeeetBsweeeeetB
sweeeeeeetBswedesB	swedenbutB	sweatshopBswearingBswaysBswayingBswassBswarmBswareBswapimB	swampedsoBswallowBsvcBsuziBsuzakuBsuxsB
suwweeeeetBsuuuuckBsuuuksB	sutzkeverB	sustituteBsustainabilityB	suspicionBsuspenseB	suspectedBsushichineseBsuseBsusansBsusBsurvivorBsurveysBsurveyBsurveillanceBsurrrrrouslyBsurroundingBsurreyB	surrenderBsurguryBsurfsBsurfersBsureiBsuprnaturalBsuprisinglyBsuprisesBsupriseB
supremistsBsupprtinB	supposeddB
supposeandB
supportiveB
supportersB	supportedBsuppoortBsupplysBsuppliesBsupperBsuppBsupervisionB	superviseBsupervilliansBsupertargetBsuperseededB
supermodelB	superglueB
superfreshBsuperexcitedBsuperbadBsuperawesomeBsupastitionBsupaBsunthursbutBsuntB	sunstrokeBsunshinetheBsunshinenothingB
sunshineatB
sunshiinesBsunshadeBsunsetBsunraysBsunrashB	sunnybankBsunnnBsunlightBsungsBsunfayBsunehreBsundressB	sundayyyyBsundayvisitinBsundaygonnaB	sundaybutBsundaesBsunbutBsunburnsB	sunburnnnBsunblockB
sunbathingB	sunbathinBsunbatheBsunbaeBsumwareBsumtimesB	sumthinnnBsumoneBsummyBsummmmmerrrrrBsummeryB	summervacB
summertimeBsummersBsummerrB
summerjustB
summerballBsummatBsummaryB	summarizeB	summariesBsummaasBsumiuBsuminBsumfinkBsulumitsBsuluBsullivanBsukksBsukanyaBsuizasBsuivezBsuitsBsuitesBsuitedBsuitableBsuhanaB
suggestingBsugaryBsugarsB	sugarlandBsugarchocolatecaffeineBsufkaB
sufficientBsuffersBsufferinBsuetBsueBsudetenlandBsudafedBsudBsuckitsBsuckiestBsuckespeciallyBsuckdB
suchateaseBsuccumbBsuccubusB
successnowB
successionBsuccessfullyB	succesfulBsucceedBsuburbsBsubtlyB	subsidingBsubsideB
subscribedBsubponeaB
submittingBsubhanaBsubformsBsubethaB	subcribedBsubconscienceBsubbedBstyoopidBstylishB	stuttgartBsturdayBstuporBstupidstupidBstupidoBstupidlyB
stunninglyB
stunneditsBstunnedBstunknoBstumpyB	stumblingBstuffyBstufftedBstuffitBstudyyyyyyyyyyyyyyyyyyyyyyyyyBstudyingwhewBstudyingnowB	studyhallB	studyexamBstudlifeB
studiomadeB
studieslawBstudiesBstudBstubbleBstubbedBstuartBstrutfluffyBstrungBstrugglingselfishnessB	strugglesB	strudlespBstrudelB
structuresB	structureBstruckthoughtBstrollBstrokingBstripedBstringerBstrikerB
strikegoodB
strightersBstreuselB	stretchesBstressorscomeB	stressingBstressfulbeenBstressdBstrekB
streetviewB	streetcarB	strechingBstreamsB
streamkeysB	streamingBstreakBstraycatBstrayBstraussBstratusBstrategyBstrategicclockBstrappedBstrapBstrangleBstrangerBstraitsBstraightjustBstraightenersBstraightenedB
stragglersB
stracchinoBstr8BstoveB	storyyyyyB	storywiseBstorytotallyBstorytellerB	storysizeBstorysBstoryallBstormsooBstoreseeBstoreiBstopselfridgesBstopppedBstopedBstoopidBstooopitB	stoooopitBstonesB
stonehengeBstonedBstompedBstomatchBstomacheB
stomachaceB	stokednotB
stocktwitsB	stockingsBstockingB	stitchesiBstitchedBstisBstintBstinkyBstinkinB
stingcrunkBstingBstinaBstimulusB	stimulateB	stillthisBstillllBstilllBstillerB	stillbornBstiffBsticklerB
stickersssBstichesBstewartBsteviewonderBsteveoBsterlingBstereosoundBstereosBstereoBstepsBsteppinBsteppedB	stephmustBstephensBstephenB
stephaniesBstephaneB
stepbystepBstemBstelleBstellasBstellarBsteffBstefanBsteetBsteemerBsteelsBsteamedBstealsBstealingBsteadBstdinpdfBstaynBstavrosBstatusesBstatkB	statisticB	stationedBstasticsBstarwarswithaddedpantsBstarupsBstartupBstartledBstartillBstarssBstars11BstarrersBstarrBstarlaBstarhopeBstareBstarbuxB	starburstBstarbuksB	starbucczBstar95BstandinBstandardsthereB
stancethisBstampsBstaminaBstalkersaturdayBstalkerishlyBstalinBstakeBstainedBstagingBstagBstaffersBstadenBstackingBstack8BstacieBstaceysBstaceyBstaackBstaBssugBssssssssssmackB	sssnoringBssshhBssooBssoBssbbB	srtartingBsquooshBsquishyBsquishedBsquirtedBsquirrellistB	squirellsBsquiggyB	squidswhoBsqueekyBsqueegeeBsqueeBsqueakB	squattingBsquatsBsquashesBsquashedBsquarethatsBsqeakyB	spymasterBspyedBspurtedBspurBspsongsBsprungBsprintsBsprintBsprinkleB
springleafBspringfieldBspringboardBspriggeBspreeiBspreeBsprawledBspoutBspottyBsportvB
sportsmensBsportingBsportdayB	spooohortBspookyBspontaneouslyBspontaneityB
spongebobsBspok5BspoilersBspnBsplurgeBsplodgeB	splittingBsplitsBsplintsB	splintersB
splashtownBsplashBspittinBspitsBspiteBspiritualityB	spiritualB	spinelessBspiltBspikecarBspideyBspiderwomanBspidersBspicedBsphexBsphereBsphBspeshB	spertinyaBspermBspellinBspellerBspellcheckerBspeedwayBspeedracherBspeedoBspectorB	specifiedBspecialistpoorBspecialiBspeciaalBspecBspeakerphoneB
speakernyaBspcnBspazzBspazBspayBspawningB	spatteredBspatBspasyB	spartacusBsparringBsparksB	sparklingB	sparklersBsparkleBsparkBsparesBsparedBspankingB
spanishanyBspanielsBspanielBspanBspamspamspamBspamsBspainyouBspaiBspahklyBspaghettistrapB	spaghettiBspadesB	spaceshipB
spaceportsBspaBsozBsowyBsowwwyBsowwwwyyBsowwieeeBsowburBsouvlakiBsouthwesternB
southridgeB	southparkBsouthkoreanBsouthernBsournessBsourishBsourcingB	soupysoupBsoundersB	soundbiteBsoulmateBsouljaaBsoulfullB	soulchildBsoufflï¿½BsouffleB	sotomayorBsosososoBsososoBsosoBsosadBsosaB
sorryyyyyyBsorryyyBsorryillB	sorrydeepBsorrryyBsorrryBsorrrryBsorrowBsororsBsoreheadBsorceBsorbetBsopranoB	sophomoreBsophmoreBsophiesBsophieBsophBsoothingBsoothesBsooperB
soooughhhhBsooooryB%sooooooooooooooooooooooooooooooooooooBsoooooooooooooooooB
soooooooonBsooooocalllllB	sooooletsBsoonweBsoontheB	soonnnnnnBsoonmustBsoonimBsooniBsoonhaveBsonoBsonnnnyB	soninlawsBsonicswhichBsonicBsoniaBsongsiBsongplottingB	songpeterB	songmakesB	songhelloBsonggoeswrongsBsongggBsongdBsonetimeBsondaughterBsomthingBsometimessomtimesBsometimesdidBsomethngBsomethingillB	somethignB
somervilleBsomersetB	someplaceBsomeoneeBsomelolBsomeifBsomeiB
somebodiesBsombodysBsom1B	solutionsBsoloistBsolitudeB	solitaireBsoleaB	solderingBsolangeBsolBsokayBsoimBsoilBsoichiBsoiB	sohcahtoaBsoftyiB	softshockBsoftlyBsofterBsofteesBsofieBsoetimesBsodaheadBsocoBsocksysBsocksooBsockedBsocieteBsocialmediatvBsocialisingB	socialilyBsochBsocBsobreB	soberdangBsoarinBsoapBsoakingBsnugglinBsnugglesBsnuggiedBsnuffBsntBsnsdBsnsBsnowyB
snowdaysssBsnowballBsnottyBsnotsBsnotBsnoreBsnoozingBsnoopyBsnoopsBsnoodBsnobBsnlyouveB	snlkimyouBsnitchsneekerBsnifflyBsngsBsneezyBsneezesBsneersBsneakerzBsndBsnazzedBsnapshotBsnapsBsnappyBsnappppBsnappierBsnappedB	snakesandBsnaaaapBsmutsBsmuggleBsmugBsmudgingBsmudgeBsmtimesBsmthngBsmrBsmoothyBsmoothstreamingB
smoothnessBsmoochesBsmokyB	smokingggBsmokiBsmokerB	smokefreeB	smokefestBsmokedBsmoBsmlBsmittenBsmithamherstBsmith1BsmiteBsmirkerB	smilelifeBsmileitBsmiledBsmhyouBsmexyBsmellyBsmellingBsmelledBsmearedBsmashspaceningcomBsmashedbeinB
smartphoneBsmartpenBsmartestBsmarterBsmartedBsmartcarBsmartbarB
smallvilleBsmallifBsmalBsmackdownexceptB	smackdownBsluttinBslurpeesBslumBsluggishBslrBslpyBslowthenBslowtheB
slowmotionBslowingBslowernBslowedBsloveniaB	slovakianBslotsBsloppyBslopesBslopeBsloooooooooowlyyyyyyyyyyyyyBslobberB	sloansterBsloBsliverlightBsliverBslippyBslipperyBslipnowBslingB	slightestBslidesBslidersBslidebarBslideBsleevesB
sleevelessBsleeveB
sleepytownB
sleepytimeBsleepyiB
sleepyheadBsleepupB	sleeptimeB	sleepthenBsleepsoBsleeprestlessBsleeppppppppBsleeppB	sleeplessBsleepladiesBsleepitsBsleepingtimeB
sleepinessBsleepiB	sleepgladBsleepdeprivedBsleepcrazinessB	sleeeeepyBsleeeeeppyyyyyyBsleeeeepBsleeeeeeepzB
sleeeeeeepBsleeeeeeeepyBslaysBslavingBslateBslarmBslaptonBslapsBslantedBslammerBslammaBslackinBslackBslabB
skyrocketsB
skypeeeeeeBskylineBskyfireB	skydiversBskyandBskwlBskunksBskunkBskottBskooBskomerBskolaBskoBskittlesBskitsBskitBskirtsBskirtBskiptonBskipsBskippinBskinsBskinnedBskinanotherBskimmedB	skimchampB	skillslolBskiingBskidBskewlBsketchesB	skepticalBskatingBskatersBskaterB
skateboardBskankinwhatBskankingBskandarBskaBsjBsizesBsixtyBsixthB	sixteenthBsituationalBsittnBsiteitsBsitedBsitarB
sisterbabyBsistasBsisiBsisaBsiriBsippinnBsippingBsipBsiouxsinnerBsinseBsinonBsinnerBsinnedBsinksBsingzBsingtelBsinglesB	singleourBsingerguitaristBsincBsims2BsimpsonB
simplifiedB	simonidolBsimileyB
similarityBsilverstoneBsilversteinBsilverlightB	sillynessBsillBsiliconeBsilencedoesntBsikyBsiitterBsiiiickBsihBsigurBsiguesBsignupBsigningsBsignificantlyBsignificantB	signalingBsigmaBsightseeingBsightsBsightingB	sighthankBsighsadfaceBsighlolBsighhhBsighhBsigBsierraBsientoBsidewaysBsideofB
sidemyselfBsideitsBsiddyBsicpBsicksomeBsickoBsicknotBsicklyBsicklikeBsickkkkkBsickkkkBsickkkBsickkBsickheB	sickeningBsickenBsickeeBsickcancelledBsickandBsickallBsiberiaBshyB	shweeeeetBshwastyBshwaBshuuutBshutupandsmileBshutupBshuttingBshuttersBshutingBshutdownBshushBshuresBshureBshuntBshulBshufflesBshudveBshudntBshtBshrunkBshriyasBshritsB	shreddingB	shreddiesBshredBshowwwwwBshowwwBshowsyouBshowstoppersBshowssBshowroomBshowrBshowifBshowiBshowfinallyBshowersworkBshowershaveB	showeringB	showerandBshovingBshoutzBshoutinBshoutboxB
shouldhaveB	shouldersBshottieBshotgunBshortyurBshortyB
shortstackBshortsleevedBshortieBshortestBshorterB	shortenedBshortenBshortcutB	shortagesB	shorelineBshoreeeB	shopstillB	shopppingBshoppinghmmmBshoppingfantasticB	shopping3BshoppinBshoppersBshopperBshoplolBshopliftingBshopingB
shopdoesntBshoottB	shoothopeBshooouldBshoooowB
shooeessssB	shontelleBsholdersBsholderB;shoesshoesshoesyayyayyayloliwouldpostatwitpicbutidntknohow2B	shoeslessBshoesiBshockingBshockersBshoBshmolanBshloshedBshldaBshizzleBshivashankarBshivBshitshowB
shitethankBshishB	shirtttttBshirazBshirBshipwreckedBshipsBshipmentBshipleyBshinsBshinjukuB
shiningnewBshinesB	shineeeeeBshikariBshiiiterhymingB!shiiiiiiiiiiiiiiiiiiiiiiiiiiiiiitB&shiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiitBshiggityBshiftyB
shiftswillBshifterBshiftedB	shields06BshidduchBshibuyaBshiaBshhhweeeetjayzBshezzaBshezzBsheyagain3rdBsherrieshepherdBsherriB	sherratonBshermanBsheriffBsherBshepBshenanigansBshemmsBshemarBsheltersB	shelteredBshellsBsheliBshelbyBsheerBsheenaBsheeeepB
sheeeeitttBsheeeeitBshediddyBshecky95B	sheboyganBsheathBsheatB	shaycarlsBshayBshawneeiBshawnBshawdowsBshavingBshavenBshatterBshatranjanpoliBsharsiesBsharpiedBsharpieB	sharpenedBsharonBsharnBsharkeezBsharffenbergerBshareeeeBshardupBshapeshifterBshanwestBshantzBshantellBshanteBshanntBshannenBshannanBshaneBshamwowB	shamelessBshamanB	shalondasBshallownessBshakyBshakingBshakespeareBshakenB	shakedownBshakasBshahBshagBshadowB	shaddupppBshabuBshBsgbBsfoBsexxxyB
sexxxxxxxyBsexualmaternalBsexayBsewedBsewageBsewBseveringBseventhB	seventeenBsevensBseussBsettlingBsettlesB
settleneedBsettingsdesignBsetsBsessionstillBsesionBseshionBsesameBservingsBservicewillBservicesBservicedB
serverniceBseruB	seriuoslyBseriousslyyyBseriouslythisBseriouslyitB
seriouslyiB
seriousitsBseriouseBserioBseriaBsergiB	sergeantsBserendipityB
serenadingBserenadeBserenaBseraniBserBsequesterhopeB	sequencesBsequelsBsequelB
separatelyBseosB
sentimentsBsensorsB
sensomaticBsensitivityB	sensitiveBsensingBsensibleB	sensexbutB	sensationB
sennheiserB
senioritisBsenderBsendaiBsenceBsenBsemisB	semiflakyBsemiBselvesBselloutB
selfupdateBselfrighteousBselfimposedB
selfdenialB
selfchangeBselfawarenessBselenasBselenagomezlastB	selectiveB	selectionBselaluBseizuresBseizureBsehatBsegmentBseeyuhhhBseenprecededB	seeminglyBseekingBseekerBseeitBseeinBseeiBseeeBseductivelyBseducedB	sederhanaBsedarisBsecuredBsectionsBsecretlyBsecondstar05B	secondaryBseckB	sebastianBseatbeltBseastarBseason2BseasideBseasaltBsearsBsearchedBseannBseamsBsealersBsealBsdpsBsdkBscurredBscumB	sculptingBsctrahcB	scrubbingBscriptsB
scriptgirlBscribkinBscribeBscrewsBscreenshotsBscreensB
screeningsB	screeningBscreengrab09BscreenedBscreencastsonlineBscreamsBscreamoBscreaminBscreamerBscratchingsBscrapeB	scrapbookBscrabbleBscoutBscousersB
scoundrelsBscottishtryingtobeirishBscotterBscorpianB	scorelessBscoredBscoopBscoobyBsconesBscofiledBsciifiBschuhzBschuhmacherB	schooooolB
schoolworkBschoolmaybeBschoolmatesB
schoolmateB	schoollolB	schooljoyBschoolimBschooliB
schoolhopeB
schoolgawdBschollsB
scholfieldBscholarBscholBschmooB
schindlersB	scheuringBschemeBschemaB	schedulerBschedBschadeBsccr18BscattergoodsBscarredBscarletBscarfedBscarfBscaredededededBscanlonBscampiBscamerasBscalaBscabsBsbs2008Bsb6BsaythinkB
sayperfectBsaymyBsayitsBsayingsBsaygetBsayedBsaybitchBsayamBsavvyBsavvvBsavingsBsavesBsaverB	savechuckBsauteedBsausagesBsaurusBsaunaspaBsatzBsaturnBsatrtedB
satisfyingBsatisfyBsatisfactionBsatiBsathBsatdeeBsastchB	saskatoonBsashasBsashBsasBsarrahBsarmsBsardonicBsardinesBsarcyBsarcasmBsarasBsaranBsarahsBsappyBsapinsidetrackBsapBsaoBsanzzBsantinoBsantiagoBsantiBsantanaBsankqBsankB	sanitizedBsanibelBsanfranBsandwichesssBsandownBsandiegoB	sandersonBsandboxBsandalBsanctityBsanchaBsamuriBsamsungBsamsonBsamplesBsamewayBsameeeBsambaBsamanthadeniseBsaltvinegartheyBsalsaBsalmonBsallyBsalivaryBsalesmanBsalariedBsaladsBsakitBsakatasBsaisBsaimeeBsailorBsailinBsailedBsaigonB
saidpleaseBsahabatBsaginakiBsagetBsafewayBsafetyBsafesexBsafarisB	sadtheresBsadthenB	sadsvilleBsadsorryBsadsBsadpandaBsadimBsadieBsadfoundBsadfacedBsadeBsaddleBsaddiBsaddensBsadddimBsadddBsactoBsacrificingB
sacrificesB	sackirothBsackedBsabrinaBsabipBsabiBsabbyBsabBsaadiqBsaabBsaaadBsaaaaafeB	saaaaaaidBs4Bs20e19Bs2Bs12Bs0uljaBs05e04BrzBrytBrymedBryggenB
rygegrejdkBrygbyBryehappyBryeBryannBryallBryaaaaaaaaaaaaanBrwhatsBruxburyBrutledgeBrutgerBrustyBrussiansBrusselBrussBrusksBrusakBruralBrunwayB
runthroughBruntBrunsexcursionsBrunseeBrunnerBrunmomsBrungBrundownBrundayBrunbutBrunawayBrumorBrulingBrulesmyBruledBrukhBruineddeathBruilenBrugsBrugratsBrughtBruffhopeBrubysBrubbishhhhhhBrubberBrubadeauBruangBruBrtwestcoastgal88B	rsvpsorryBrsvpingBrsvpedBrsvpBrssBrspicBrsiB	rrtheatreBrrodedBrrodBrrobertsBrrBrpgBroyalsBroyalBroyBroxyBroxieB
rowwishingBrowrowBrowingBrovinBroverB	roundtripB
roundtableBroundnroundBroundingBroundaboutsBroughlyBrottonBrottingBrothlisbergerBrotateBrossiBrosemaryBroseburgandBrosaryBrosalieBrosaBropesBropeBrootBroooopBroomyB	roommatesBroomiBroomhoweverBrooftopBronnieBronin121BroniBronaldoBromulinBromoBrominaBromeB	romanticiBromansBromancescomediesBrolloBrollinBrollerskateBrollerBrollandB	rolemodelBrohanBroflmfaoBroflmaoBrofBrodrï¿½guezsBrodeBrocoB	rockstarsBrocksnothingBrocks19B	rockpoolsBrockettBrocketslakersB	rockedoneBrocioB	rochesterBrochelleBrocBrobsBrobotsBrobotBrobinsonBrobinsBrobinaB	robertsonBrobeBrobbieBrobartsBroastingBroastersBroarBroamingB	roadtripsBroadtripBroadstheBroadsBroBrnyBrnsBrllyBrlBrjwtfBrivetingB	riversideBriversBrivercenterBrivalsBritualisticB
ritasbadlyBritasBriskingBrisingBriqhtBripstickBrippleBripleysBripedB	ripbatmanBrip3BriotnowBrinseBringtoneBrileyBrikBrijaBrihannaBrihBrightsB	rightrealBrightlolBrightimB
rightgottaB	rightardsBrigbyBrigBrifleBridinBrideyesBriddingBriddenBricottaBricoBricksB	rickrolldBrickbaker24BrichterBrichgirlBrichelleBribbonsBribbonBribBrianBriahBrhythmsBrhythmBrhymesBrhondaBrhodesBrhinitisBrhinestonesBrhiannonBrheumyBrhel5BrhcpBrfidedBrfidBreytBreynoldsBreyesBreyahBrex513BrewordedBrewatchBrewardsB	rewardingB
revolutionBreviveB
revitalizeBrevitB	revisionnBrevisionbiologyBreviewwhileB	reviewingBreviewedBreviensB	revertingBrevenB
revelationBrevelBrevealedB	reutimannBreusedBreuploadBreuniteB
retweetingB	retsambewBretryB
retrogradeBretrinaBretractB	retortingB	retirmentB
retirementBretiredB
rethinkingB	retellingBretellBretakeB	retainersBretainerBretainedBretailerBretailB	resurrectBresultedB
resturantsB	resturantB
restuarantBrestrictionB
restrictedBrestossoBrestorationBrestoBrestgetBrestfulB
resterauntBrestaurantwhereBrestaurantoneB
restartingBrestartB
restarauntB
responsiveBresponsibleBresponsabilitiesB	respondedBrespiteB	resourcesBresortedBresonateB	reskinnedB	resistingB
resistanceB	resigningBresignationBresignBresetB	reservesiBreserveBreservationBresembleB
researchedBrescuingBrescuedBrescoBresaaaaBrerippedBrerecordingsfansB	rereadingBrereadBrequiredBrequireB	requesterB	requestedB	republishB
republicanBreptileB
reprobatesBreprezentzentBrepresentingBrepresentativesBrepresentativeBreprehensiblesB	reportingBreporterB
reportdoneBrepopsBreplyyBreplyedBreplybutB
replieslolBrepliesfollowB
replicantsBreplenishedBreplacementsBrepentB	repeatingBrepairsB	repairingBrepairedBrepBreopensBreopenBrentalBrentaBrenownedB
renouncingBrennisonBrenewalBrenewBreneeBreneB	renditionBrenderedBrenderBrenameBrenaBremsBremovingBremovalBremouldB
remorseuveB
remmeberedB
reminisingBreminiseBreminderthxB	remindersB	remembersBrematchB	remainingBremainB	reluctantBrelizedBreliveBreliseB	religiousBreligionBrelightBrelieveBrelientBreleasesBreleasdBreleBrelaysBrelaxxxxBrelaxfulBrelaxantB
relativelyBrelasieBrelBrejoiceBrejectBreislingBreinstallingB	reinstallB
reinforcedBreimerBreikiBreidB	rehnawillB
rehearsingBrehearsestarvingB
rehearsalsBrehearsalgonnaBreheadachesB	regrettinBregretsBregistryB	registrarBregisteringBregionsB	regionalsBregionalBregionBreginaBregimeBrefusingBrefusalBrefundsBrefundedBrefreshBreformBrefollowBreflectionemitB
reflectionB
reflectingBreflectiB	reflectedBrefittedB
refirmwareB	refindingBrefillsB
referencedBrefactorBreesesB
reenactingB	reeheallyBreefriedBreeeseeBreeeejuvinatedBreeeaaaallyBreecesBreeceBreeboksBredwoodB
reduculousBredtapeBredsBredneckBredmangololB	redirectsB
rediculousBrediBredgiesBredeemsBredeemBreddBredboneBrecyleB	recyclingBrecyclerBrecycleBrectorBrecruitsBrecoversBrecourseBrecouperatingBrecosBrecoryBrecordsB
recontinueB	reconnectBreconizeBrecommendingBrecolouringBrecollectingBrecognsB
recognizesBrecognitionB
recognisedBreclinerBreclaimBrecklessBreciteB	recievingBrecieveB	rechargerB	rechargedBrechargeBreceptionscantBreceiptB	recappingBrecalledBrecallBrecBrebornBrebootinessBrebondedB
reblippingB"rebellioustwitwhoknowsacoolcatcookB	rebellionBrebecaBreassuranceBreassembledBreasonmaybeB
reasonablyB	reason346BrearrangingBreapedBreaonsBrealzBrealxBrealtimeBrealsBrealnotBrealnashB
reallyyyyyBreallyreallyBrealllyB
reallllyyyBreallllllllyBreallllllllllyB
reallizingBrealliBreallB	realisingBrealisationBrealignBrealiBrealaleBreaganBreadyshoppingB
readysetgoBready2startB
readmittedBreactorB	reactionsBreactinBreactB	reachfindBreachesB
reaaaalllyBrdyBrdjB
rda2009claBrdaBrcbBrc234B
rbrubygemsBrblpnqteBrblpnBrazrBrayneBraymondBrawrrrBrawksBrawknrollnetBrawkBravitB	ravishingBravingB	ravenclawBraulBrattyBrattB	rationaleBrathboneBratedBratatatBraspberrylacedBraraBraquelBrappnBrappBrapidsBraphaelBrapfunBrapesBrapedBrantingBrankingsBranjanBraningBrangeBrangaBrandom1BrampagesBramblyBralyBrakeBrajBraisingB	rainstormB
rainlalalaBraininyBrainingseatbeltBrainhumidityBraingingBraindropsthatsBraimisBraimiBrailsgitBrailsbridgeBraidingBraidersBrahulBrahsBrahalBrahaBragoonsBrageBragazziBragBraftingBraffertyBrafaBrafBraeraeBraeBradishesBradioactiveB
radio23orgBradio1BradiatorBradeBradarBracoonsBracingBracinBrachmaninoffBrachineaBrachaelBracersBraccoonBraarBr6Br2imtBr20Br18BqwBquotingBquotessB	quotationBquizonBquitwellBquittingBquitsBquiteheavenlyBquirkyBquirksBquieroB	quidditchBquidBquickestBquestionsrevisionBquestionningBquestioningBquestiondomesticBquestionableBquesterBquestBquessBquesadillasB
quesadillaB
quesadiaasB
queenslandBquebecBquaverBquasisequelBquartersB	quarteredBquarryBquarkBquarantinedB
quarantineBquantumB	qualifiesBqualifierokB	qualifiedBquakesB
quadricepsBquadcoreBquaBqtipBqtBqreatBqqBqiuqiusBqirlsniqhtoutBqikBqfcBqetBqavBqantasBqaBq13Bq100BpyrBpyoBpygmyBpyeeBpy31BpxyBpwnsBpwnedBpwndBpwn3dBpuzzlesBpuzzledBpuzzleBputzBputtBputetBputerBpussycatBpusrseBpushitBpurtyBpurrttyBpurrrtyBpurrrrsBpurposesBpurifierBpuricelB	purchasesBpuravumBpuppyyBpuppetBpupilsBpuntersBpunlkB	punkrobotBpunkinBpunkdBpungBpunditsBpunctureBpunchyBpunBpumpinBpumkpinBpumaBpulpBpullsB
pulledrootBpulaskiBpuhleeezeeeBpugslyBpughugBpuggyBpuggedBpuffynBpuffffyBpuffBpuesBpuertoBpuddlesBpuceBpubquizzingBptour2BptfeBpt12amBptB	psyilliumB
psychopathBpsychoBpsychiatricBpsychBpsy101BpsyBpsstBpssBpspsBpsprintBpspdsBpspBpsnBpshdidntBpshBpseudoBpsalmBps2BprydzBprupleBprsBproximatelyBprowseB	provoloneB	provokingBprovingBproviderBprovidedBprovideBprovesBprovenceBprovenBprototype09B	prototypeBprotoolsBprotofurriesB	protesterB
protectionB	protectedBprotectB
prospectusBproppedBproppaBproposesBproposedwereBproposalBpropertyBproofingB	promptingB
promotionsB	promotionBpromotedBpromissBpromiscuousBpromifB	promenadeBprolyB	projectorB	projectedBprogressiveB
programmedB
programingBprogBprofsBprofoundB
proflowersB
profitableBprofitBprofiledBprofielBprofessionalsBprofessionallyBprofBproductsBproductnamingrulezB	producingBproducedirectfilmeditBprodigyBprocutsBproctorsBprocrastinatorBprocrastinatingBprocrastinateBproclamationB	processorB
processingB	processesBproboblyBproblyBproblemfreeBproblematicBproblemagainBprobbyBprobablywhyBprobabilityBprobabilBprnBprizeandBpriximBpriviledgesBprisnorB	priscillaBprioritizingB
prioritizeBprintingshippingBprinterafterB
printchickBpringlesB	principleB	princessiB
princess69BprincesBprincelplesBprincecharmingBprimerB	primatechBprimarkfeelBprilBpriestB
pridelinesBpricyBprickedBprickBpriceyBprezB
preweddingBpreviewsB
preventingB
pretwitterB
prettymessB
pretendersBprestonBprestenB	pressentsBpresidentesBpreshowBpreshBpresentaB	preseasonBpreschoolwaitingBpresaleBprerequisitesBprerecordedB
prepresaleBprepreB	preparingBpreparationsBpreparationB
preorderedBpreoccupiedBpremireBpremiersBpremierBprehistoricB	preheatinBpregoBpreggoBpreformB
preferablyBpreepBpredictBpredepartureB	precoffeeB	preciselyBpreciseB
precious06B	precedentB
precautionBprecariouslyBpreapplicationB	preacheryB	preachersBprdBpraysBprayinBpraticeBpraticalB	pratchettBpranksBpraiseBpragueBpradasBpractitionerspentBpractisetheproposalBpracticeallBpracticallyeverythingBpqueBpptBppleBppictureBpoynterBpoxsyphilisB	powershotBpowersBpowerpointsB
powerpointBpowermacBpowerfulB	powerballBpowerandBpowderBpovertyBpoundBpouncesBpouncedBpoughkeepsieBpouchBpottyBpottedBpotraitBpotentiallyBpostureB	postsdaysBpostr01BpostponeBpostingsBpostinB	postieeeeB	postexamsBpostcardB
possibleimB	possibleiBpossibeB
possessionBposseBpossB	positivlyB
positivityB
positionedBpositedBpositBposeBposadaB
portugueseBporterBportableappsBporscheBporqueBporBpopupB	populatedB
popularityBpoppyBpopperBpopingBpopeyeBpopedavebenB	popcornssB
popcornnowBpoovumBpoorestBpooorrBpooooorB
poooooooorBpoolsideBpoolsBpoolonBpoolingBpoohBpoofBpoochBponyingB	ponderosaB
ponderlandBpondBpomonaBpolyvoreBpolyBpoltergeistBpollsterBpollBpolkaBpoliteBpoliciesB	policemenBpolesBpolaroidBpolandBpolBpokemonBpokedBpokeB	poisonousBpointyB	pointsanaB
pointlesssB	pointlessBpointedBpohakuBpogsBpoetizeBpoeticBpoemB
podunktownB
podcastersB	pocketwitBpocketsB
pocketkeepBpockededBpoBpnsBpnarBpmgBplzzzzzBplzzzzBplywoodBplussBplurkingBplumbersBplumberBpluginBpluckyBplopsBploppedBplnsBplmBpllleeeaaassseeeeeeBpllleeeaaasseBpliersBplezBplexBplethoraBpleessB	pleeezzzeBpleeezBpleeeeeeeassseeeeeeeBpleeeeeeaseB
pleeeeeaseB	pleeeeaseBpleeeaseBpledgeBplebsBplebBpleazBpleassseBpleasingBpleaserBpleasenoBpleaseeeeeelolBpleaseeeeeeeeeeeeeeBpleaseeeeeeeeeeeBpleaseeeeeeB
pleaseeeeeB	pleaseeeeBpleasedoB
pleasantlyBpleaaseBplcBplaystationBplaysetBplaymateBplayingforchangecomB
playerwellBplayerstationitBplayersBplaydateB
playbyplayBplaybackBplayahBplayableB
platypusesBplatterBplatoBplatiumBplanyeaBplantinB	planthaveBplantersBplanterBplanssBplanranBplannerBplaningB
plagiarismB	placestheBplaceimaBplaceboBpkuersBpkiaB	pizzatimeBpizzahutBpixabtBpiusBpitwasBpitmansBpitifulB	pitchforkBpitchersBpitcherBpistonsBpistolsBpissyBpissssssingBpisssingBpismoB	pirouetteBpiritonBpiratingBpiratedBpirateBpipeBpipBpinwheelBpinsBpinpointBpinotB
pinocchiosBpinnedB	pinkyponkBpinkyBpinksBpinkishB	pinkgreenBpinkeyeB	pinkberryBpinicBpingpoopingBpingpongBpingingBpingaB
pineforestB
pineapplesBpincodeBpinasBpimpleBpimpinBpimpBpimmsBpillsareBpillowsBpilliBpilingBpilatesB	pikanichiBpikachuBpikB
pigsswinesBpigmentBpigletsBpigglsBpiggingBpiggedBpigeonsBpigeonBpiersBpierreBpierdutB	piercingsBpiercingBpierceBpiecingBpiderBpiddledBpictursBpicturisationBpicturedarnBpicnikBpickupBpicksBpicklesBpicklerB	pickkshaaBpickingsBpickerBpichaveBpiccoloBpicciesBpianistBpiBphysiqueBphyllisB
phplurkcomBphpB
photowalksBphotowalkingutahBphotoviaB
photoscapeB
photolooksBphotographersBphotofiltreBphotobucketB	photobookB	photoblogBphoto3180758jpgBphothosB
phonographBphoningBphonedBphogsB	phoenixfmBphoebesBphoebeBphobiasBphoBphneBphnB	phlegmilyBphilsBphillllBphilliesBphillBphiladelphiaBphenomenonallB
phenomenonB
phenomenalBpheasantBphdsBphatassBphaseBpharosBphantomBphaketBpgceBpg340itsBpftBpffttBpfffttBpffffffffffffffffffffffttttttttBpffffBpettyB	pettigrewBpetrolBpetiteBpeteyBpetalsBpesterBpesteBpeskyBpervertBperuvianBperusedBperspectiveBpersonsBpersonifiedBpersoniBpersonermdifficultBpersonasBpersonalizeB
persistentBpersianBpersiaB
persepolisB	persaudedBpernahB	permanentBperistalsisBperilsBperfumeBperfsBperformancepartyBperfectionistB	perdonadaB
percentageBpeppersBpepoBpeperoniB	peoplenewBpeopleiBpeopleeB
peopledontBpeolpleBpeoleB	pentecostBpentagonBpenssteigynoB
pensionersBpennyBpenjiiiiBpenisBpenguinsBpenguinBpencilsBpencilBpenanceBpenaltyBpelzerBpelotaBpelletsBpelangiBpeicingBpeiBpeeweeBpeetBpeersBpeepscorsenBpeepinBpeelBpeeksBpeekBpedroBpedalsBpedBpeasyBpeasBpearsonBpearlynsBpearcyBpearBpeanutsBpeaksBpeacinBpeaceoutBpeacelovejonasBpeacBpeabodyBpdhpeBpdggBpdfBpcsBpcolaBpcfopcBpazikBpazBpaysiteBpayrollBpayneBpaymentsBpaymentB	paychecksBpawnshopBpawingBpavingBpavementBpavedBpavBpauwillBpausedB	paulevansBpaulaBpauB	pattinsonBpatsyBpatsBpatronumBpatronsBpatronisingBpatricksB	patriciasB	patientsiB	patientlyBpathBpatentBpatelBpatataBpasyBpasturesBpastriesBpastranaBpastelBpasstimeBpassiveBpaseBpasadenaBpartyyouBpartytiiimeBpartysuprisinglyBpartypicnicBpartypeopleBpartyoooBpartyitBparty40B	partridgeBpartnersB	partlolokB
partiesiveBparticipateBparticipantsBpartialBparsleyBparrrttyplayingBparrotBparrentsBparnoidBparmageddonBparlourBparlorBparkgoodBparkerBpariBparentsthatsB	parentalsBparellaBpareceBpardonBpardeeBparcelB	parasitesB	paranthasBparanoifBparallelBparaguayBparadiseBparadiceBparadedBparacetamolBparabensBpapiBpapersourceBpapercanB
paperboundBpaperbackimB	paperbackBpapayaorBpapayaBpapawBpapasBpaoBpanwaBpantsnotBpantoneBpantienBpanthersBpantechBpaniniiiBpanicawayitBpanhandlersBpangeBpangangBpangaeaBpaneraBpaneBpandiBpancrasBpancitB
pancakesorBpancakeB	panasonicBpanahraB	pamperingBpamperedBpamelaBpalsB	palominosBpaloBpalmpreBpalmadeB	palisadesBpalingBpalinBpaleBpalanteB
palahniuksBpalaBpakBpajamasiBpajamaBpaisleyalisonBpaisehBpairungBpaionksBpaintnetBpaintballingBpaintballinB	painfullyB
painfulbutBpaiB
paginatingBpagerBpagepromBpagedBpagB
padestrianBpadeB
paddingtonBpadawanBpadangB	packsonlyBpackinBpacketsBpackerBpackedthinkingBpackagesBpacingBpacificBpachadBpablosBp4Bp3fesBp3Bp250Bp2B	ozbargainBoystsersBoxteachBoxoxoteambreezyBoxoxBoxmBoxBowwwwwwwwwwwwwBowwwwwwwBowwwwwwBowwieeB
ownflitterBowmBowlsBowensBowenBovieBovidBoverwheolmingBoverwhelmingBoverwhelmedBoververyB	overtweetBoverturnBovertureBoverthoughtB
overthetopBoverstuffedBoverstressedB	oversleptBoversleepingBoverrrBoverreactionBoverrB
overpricedB	overpowerBoverlolthanksB
overloadedBoverloadBoverlapBoverhereBoverheatingBoverheatB	overheardB	overgrownBoverdueBoverdoseBoverdoBoverdidBovercompetitiveB
overactiveBovechkinBovationBouuuuuuuuuchhhhhhhhBouuhhBouuchhBoutzBoutyouBoutvotedBouttyBouttttBouttooooBouttiesBouttieBoutthereBouttamyleagueBouttBoutsieBoutsidewowwasBoutsidewishBoutsidewellBoutsidethankB	outsidersBoutsiderB	outsidenoBoutsidenBoutsideeBoutroBoutrightBoutputBoutofmycontrolBoutnowBoutmyBoutmoodyBoutlineBoutletsBoutletBoutjustB	outjokingBoutitsBoutiBouthahaBoutfieldBouterBoutdoorsBoutdoorB
outagecoldBoutageBoutaBout2B	ourbetterBouldBoughtB
ouchwaitedBouchthatBouchnoBouchiesBouchiB	ouchhhhhhBotuBottersBotripBothmanBotherssoBotherlolB
otherinboxBotherdadBothaaBothaBotayBotaraBotaliaBosxBosterBosocuteBosnBosccBosbourneBosapBorwellBorthadontistBorreplyBorralleBorrB	orphanageBorleansBoripeiBorioleBorignalBoriginalohshitBorientationitsBorientationBorgasmicB	organizedBorganizeB	organiserB	organisedBoreganBorderdBordealBorchestraandB	orchestraBorcBorbitronBorangesBorangepineapplebananaBoralsBoralBopusB
optimizingB	optimizedB
optimisticBoptimistBoptimismB
optimisingBoprahsBoppsB	oppositesBoppositeBopportinistsBoppasBopiBophBopffBoperabilityB	openshutsB
openhousesBopenhacklondonBopendnsBopdaB
opaquenessBopacityBoozeBoowwwwwBoowweeeB
oouuchgoodBoouchhhhBoopstooBoopsieBooowBoooppsB	oooowwwchBooooverBoooooverB
ooooooooooBoooooooooldBooooooohBooooooBoooonnnnBoooohhhBooommmmgggggBoooiifullmp4BooohhhhhBoompaBoohsBoohoohBoohhhhBoohhBoohbellBooafBonwardsBontologyBontherBontdstartrekBontdBontarioBonstageBonpeakBonoffBonoBonnnnnnnnnnnnBonnnnBonimBoniBongeeezBonfireBonewithBonewillBonethoseBoneslookBonesiesBonelettererBoneandBoncebyBoncallBon30BomrBomqBomnomnomB
omnomletteBomniaBommgBomigoodnessBomgzBomgtheBomgthatB
omgoodnessBomgogmgoBomgnessBomglisteningBomgimpatientBomggggggggggBomggggBomgggBomggBomgeeeBomgdidBomgaahBomg5BomfggggB	omelettesBomeletteBomeletsBomegleBomedetouBomdsBombraBomarBomahaBolympiouBolympicsBolliesBolinaBoliBoldveryBoldsBoldestBoldaBokwereBokweBokurB	oktwitterBokthanksdontBoksoBoklahomaaaaaBokimBokieeBokieBokeyBokeefeBokcBokayybutBokayyBokaysoBokayokayBokayjustBokashleyBokasanBokamiBokaiBokaaaayBok2BojBoistBoiksBoiBohyeahhhBohwwwwBohwellBohsosexyB
ohshnapsssBohrwurmB	ohokdidntBohohBohnoyoudidntBohnoesBohmygoshBohlalaBohkeepBohiBohhhhnowBohhhhhhBohbtwiB
ohbabayy33BohayBogberryBoftwtrB	ofthedeadBoftheBofozBofmaxBofimBofhotB
ofhorribleBofhayleyBofftopicB	offstreetBoffshoreBoffsetBoffropeB	officialsB	officejetBofficeespeciallyB	offiacialBoffhandBoffgetBofferredB	offensiveBoffagainBofcooourseeBofchasBofcBoepnBoeirasBodysseyBodourBodesseyBodeeeeBodeeBoddsBoddosBoctupiBoctopusBoctopiBoctoBocracokeBochoasB	ocharleysBoceanupmileyBocdBoccuringB	occupantsB
occasionalBoccasionBocampoBobvBobservedBobservationallyB	obscurityBobsBobrianBobnoxiouslyB	obnoxiousBoblyBobligationsBobjectsBobjectBobesedB
oberhausenB	obbsessedBobamasBobBoatsBoatmealBoashBoarBoaklandBo2Bnï¿½yB
nï¿½mmeBnzntmBnzBnythenBnytBnyokapBnymphBnyehBnyeBnyayhahahahBnyappyB	nyahahahaBnx01BnxBnwilsonBnweekBnvidiaBnvdBnuuuuuBnutzBnuttsB
nutritiousB	nutritionBnutinBnurofenBnurburgringBnungguinBnumeroBnumbertopicalBnullificationBnulisBnuhBnugentBnuffinBnuevaBnudgedBnuBntsBntoBntnBntahBntaBnswBnstyBnriBnoyBnowwwwwBnowtoBnowthisBnowtheBnowthatsBnowtBnowsheBnowsendBnowrightB	nowprettyBnoworBnownowBnownopeB	nownobodyBnowmyB
nowmissingBnowmineBnowitsBnowillBnowhmmBnowhateBnowgreatBnowgoodB	nowgnightBnowboutBnowamBnow997BnovyBnovusnovendoBnovosBnoviB	novemeberBnovelB	novacaineBnotttBnottinghamiBnottingB
notthebestBnotthatBnotsoscenicBnotoriouslyBnotmuchBnotlmaoBnotingBnotificationnyaBnoticingB	noticableBnothinbgB	notebooksBnotebookBnotchesBnotchBnotaryB	nostalgicB	nostalgiaBnoshowBnoselyB
nosebleedsB	nosebleedBnorwoodBnorwichBnorwayBnortonB	northviewBnorthumberlandB	northparkB
northlandsB	northlandB
northboundB
northangerBnorth27BnorskartB	normaltwoB	normalandBnoriegasBnorfolkBnorfBnooseBnoooowwwB
nooooowwwwBnooooothingBnooooooooooooooooooBnoooooooooooooooBnooooooooooooBnoooooooooooBnooooooooooBnoooiBnooobodyBnoobBnonyahooBnonwwwBnontweetinggirlfriendBnontouchBnonsunnyB
nonstarterBnonresidentB
nonpaymentB
nonmothersB
nonmommiesBnonjudgmentalBnonintrusiveBnonhitchikersBnonfunctionalproductiveB
nonfictionBnonexistentBnondriedBnonbelieversBnonalcoholicBnomsgotBnomoreB
nomintatedB
nominationBnokiasBnoisBnoimB	noiiiiiceBnoiceBnoiBnoghtyBnogginBnogardBnofakeryBnoesssBnodsBnodoBnoddingB
noctweetupB
nocturnalsB	nocturnalBnobodiesBnoboddddyyyyBnobobysBnoblesBnobleBnobelB	noarchiveBnoahBno1ifBnnoB
nnnnooooooBnnnaaaBnncBnlBnkoreaB
nkkairplayBnjalmostBnitesBniterzzzBniteoutBnitentdoBniteniteBnitedaBnitecanBnitealsoBnitaBnitBnishikiBnirvanaBniqhtyBnippyB	nipissingBninthB
nintendogsBninjaB
nineteenthBninBnimsBnimoyB
nimbupaaniBnilaBnikonBnikkieBnikesBnikepluscomBniiiiiiiightsB	niiiighhtBniiickBnihBnightynightB
nighttriedB	nighttheyBnighttBnightssB	nightsighB
nightshiftBnightohhB	nightneedBnightmorninB	nightlastB	nightlameB	nighthaveBnightfriBnightfinallyBnightersB	nightclubBnightallBnight3BnighBnigguhsBnigguhBnigglingBnigeriaBnigelBnigeBniftyBnieceï¿½sBniecesBnicotineBnicolesBnicolaBnicknameBnickj07B
nickelbackB	nickchienBnicholeBnichoBnicheB
niceratherBniceidBnicehopeBniceeeeeBniceeeBnicecooperatingBnicciBniccBniaBni99asBnhnBnhB	ngobrolinBnghBngayonBngaBnflBneyoBnexusB
nextmmmmmmBnewwwBnewtownBnewthopeBnewssBnewsroomBnewsfireB
newscenterBnewsboysB	newsbitesBnewnewBnewmanB	newlywedsBnewlywedBnewlyBnewjabbakidzBnewbrunswickBnewbornsBnewbBnewaysBnewamerykahBneverrrBneverendingBnevahBneuesB	netplayerBnetballBnestedBnessiahBnesscafï¿½BnessaBnesmithBnesbittBnervvoouussBnervousnessB	nerrrvousBnerdpromBnerdingBnerdimBnerdiestBnerdfriendsB	nerddreamBnepalBneomoniaBnemonemesisBnemecekBnekoB
neitherrrrBneithB	neightingBneighbourssBneighbourhoodB	neighbourB	neighboorBneiceBnehiBnegotiationBnegishisBneggheadB
negativityBneewwwwBneemahB
neeeeeeeedBneeeeedBneeedBneedyBneedlessB
need2learnBneckshoulderbackBneballBnebBneaaarrBndsBndcBncisBnccB	nbooklifeBnbcBnazisBnazBnayBnawwwwwBnawillB
navigationBnavBnauseasBnaughtyBnauB
naturally7B	naturallyB
natsmith88BnationsB	nationalsBnationBnatieB	nathansonBnathanfillionBnateBnataliesB	nastinessB
nashtmusikBnashBnasBnarniaBnarnBnareBnarcoticBnaptimeBnappysBnappyB
napppingggBnaplanBnapkinBnapiB
napervilleBnapaBnaoB	nanowrimoB
nanosecondBnannyBnandosBnanayBnanawishBnanaimoBnamerebeccaBnamenB
namelolallBnamelessBnalangBnakuhBnakoBnakakahyperBnaivetyBnaivBnaiseeBnainiBnainaB
nailpolishBnailingBnahhB
nagrerehabB	naglilihiBnagBnae1BnaeBnadineBnacklacematchingBnabbedBnabBnaaaaaBn97Bn96Bn95BmyyyyyeBmyyyB
myyearbookB
mywirelessBmyweawknessBmythicB
mysteriousBmysterioBmystB	myspacingBmyspacetheyBmyspacesBmysoreBmysolesBmyslefBmyseflBmyohBmyneBmymathsBmylanBmykasBmyhouseB
myhorribleB	mygrilledB	myfriendsBmyersBmwanBmwahsBmwahaBmwahBmvpBmvccsBmuuchB	mutteringBmutitaskingBmuthaBmuteBmutantBmustardBmustangsBmustangBmustacheB
mussooooooBmusselsBmuslimBmusiqBmusingsB	musicwhatBmusictraumaBmusictestingBmusiciansartistsB	musiciansBmusicianBmusicfeelingBmusicansB
mushymushyB	mushroomsBmushkilaBmushBmuseumsBmusesB
musclestheBmusashisBmurkedB	murderousBmurdereBmurderBmunsayBmunichBmundoB	munderdayBmunchkinBmunchingBmunchinBmumzysBmummyyyyyyyyBmummBmuminlawBmumblingBmultitaskinB	multitaskBmultiplayerB
multimediaBmuleBmujiBmuhahahaaaaBmuhahahaBmuhahaBmuhBmuggyBmugBmufflerBmuffledB	muffinsssBmufasaBmuckyBmuckingBmuchiBmuchhhhhBmuchdeservedBmuchbutBmuchachomaloBmuaxxxB#muahhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhBmuahhBmuahahahaohBmuaBmtwittercomBmtmlBmtlBmtbBmtabyBmtBmssqlBmspacersBmsningBmslaBmshsBmsgomezBmsgnowBmsftB
mrskutcherBmrsal65BmrbBmrazlookingBmqmBmpsh1aBmpsBmpreBmppBmplsBmphBmpaaBmp3sBmozycomBmozillaB
mozconceptBmoylesBmoyBmowgliBmowerBmowedBmovingcariphoneBmovinBmovietwoBmovietoBmoviesssB
movielovedBmovielolwhatBmoveoutB	movementsBmoveableB
moustachioBmournersB
mountainorBmountainjamBmountBmounceBmottoB	motorwaysB
motorsportBmotorolaB
motorcadesB
motorbikesBmotorB
motivatingBmotivateBmothrsBmotherstobeBmotherssB
mothersgetBmothersdayyyyyyyyyBmothersdaymotherB
motherlandBmotherinlawBmotherdaughtersBmotBmostleyB
mosquitoesBmosquitoBmosqueBmoshingBmortgageBmorseBmorrrrrrrrningBmorrowBmorrisonBmorreeeBmorongoBmoroccoBmoroBmornwhenBmorninï¿½everybodyBmorninughewwyBmorninsBmorninqB	morniningBmorningwonderingBmorningtiredBmorningsometimesB	morningotBmorningjustB
morningishB	morningisB	morninginB	morningheBmorninggB
morningdidBmorningblahhhB
morninganyBmorningafternoonnightB
morning230BmornigBmorgenBmoreworkBmoresBmoreoverBmoreeeBmoranBmoralesBmoralBmoraccaB	moovieandBmootBmoosBmoorBmooorrreeeeB	mooorningBmoooooorningBmooooooooorninBmooooooooooooooooBmooodBmoonsBmooneysBmoonedBmoondogBmoondayBmooksBmoocowBmooBmonwedB
monumentalBmontsB	monthwowiB	monthsnotB	monthsishBmonthsdefinitelyBmonthlyB
monthhappyBmontepulcianoBmontelBmonteBmontdaysBmontanaiB	montaguesBmonstrBmonstersBmonsterpaloozasBmonroeBmonopolyBmononokeBmonoculturalistBmonoBmonkeysBmonicaBmongBmoneyzBmoneyitsBmoneyhowB	mondaynotBmondaygreatB
mondaygoodB
mondaycantB
mondaybackBmondaaaaaayBmonasBmonarchyBmonaghanBmomzBmomtheBmomthatBmomstobeBmomsenBmomotlvBmomolBmomoBmomnotBmommmBmommiiesBmommazBmommasssBmomentxBmomentumBmomaBmolyneuxBmoltonBmolotovBmollieB	moleskineBmoleculeBmoldyBmoldedBmolarsBmojokinsBmojitosBmoivesBmoisturiserBmoistBmoinesBmohoBmohawkBmogulBmoffBmoesBmoeBmodsB
moderatelyBmodelingBmodeamBmockingBmochiBmochasBmochaBmobilesBmobileformsBmoanwhingemoanBmoabBmnthBmnetBmmotBmmmmmmmmmmmmB	mmmmmmmmmBmmmmmmmBmlbnBmktingBmktgBmjnameBmjaBmizmindBmizBmixupBmixerofBmixerBmitzyBmitoBmithruBmitgleeB	mitchellsBmistressingBmistedBmistakenB
mistakeillB	misssesssBmisssB
missrachelBmissionsBmissinmydgbigtymeBmisshuBmisshimalreadyB	missendonBmissdBmisscbwBmisoricesushimochiBmishaneedschapstickBmishaaaaaaaaBmishaBmisfitBmisconnectedBmischiefBmischeviousBmiscarriageB
misbehavedBmisanthropeBmisadventuresBmiroticBmiriamBmiriBmirandasBmiracleBmirBmioBminutesï¿½BminuteiBminuteeBminuetB
mintyfreshBmintyBmintsBmintbubblegumcookieflakenerdsB	minstrickB	minstrelsB	minsthinkBminorityBminnishBminniapolisB	minnesotaBminnesooooooootaB	minnebronBminneapolisstBminneBminivanBminivacationBminitsB	ministersBministerBminishBminireunionBminimizeBminiitxB
minifridgeBminibusBminibarBminhBmingingBminginBminewhispersBminethatbirdBmindyBmindlessBmindfulBmindblowingBmindayBmimpiBmimmizBmimingBmimiBmimcyB	milwaukeeBmilowsBmilonzziBmillsyBmillsBmillionsBmilleniaBmilkyB	milkskakeBmilkshakeshakeshakeshakeBmilkkkBmilitaryBmilitantB
mileyyyyyyBmileysoB
milestonesB	milestoneBmilerzBmilegiBmilduraBmildBmilansBmilageBmikeywaydayBmikeysBmikeshBmikesBmikeeBmike0hhsBmikadosBmikaBmiinnnesotaBmiineB	migrationB	migratingB
mightmightBmigawdBmiffedBmieBmidwestBmidstBmidsongBmidolBmidniteBmidiBmidgetsBmidgetBmidgeBmiddleschoolBmiddlesbroughBmiddleclickBmicsterB	microwaveB
microsoftiB	microsizeB
microplazaB
microhavinBmicroeconomicsBmickeydsBmichiBmichellsBmichellethisB+michelleeeeeeeeeeeemybelleeeeeeeeeeeeeeeeeeBmichelesBmicheleBmichaelsBmichaelblessingsBmiceBmicahBmiamiadcB	miacherryBmhsBmhmBmhhhwhateverB	mhcsmoochBmhBmfsBmfrBmfBmeyrueisBmeyaBmewellBmeuBmettingdontBmetsiesBmetresBmetreonBmetreBmethodologyBmethodBmethBmetersBmeteorBmetaphorBmetallicB
metabolismBmessgaeBmessesBmessagedBmesmerizingBmeselfBmesajBmesaBmerrierBmercyBmercuryBmercenariesB	mercedezsBmercedesBmerBmeowmiesBmeowingBmeorBmeoneBmenudoBmentionsBmentalyB
mentalityiB	mentalityBmentalitiesthereBmenowBmenormalBmennotBmennoBmenloBmenfolkBmendingBmendeedBmenarikB	menagerieBmemphisBmemorysB
memorizingBmemorizeBmemorialBmemoirBmemeberBmemeB
membershipBmeltingawayBmeltdownBmelsBmelrosecashierBmeloveB	melolmineBmeloBmellowBmelissaleahBmelikaBmelbsBmelbourneforBmelbB	melatoninBmelancholyyetcheeryBmelaBmekaBmejerBmeirizkaBmeillBmegotBmegeeziBmegaredpacketBmegansBmeetinglunchBmeetinBmeespeciallyBmeeeeeeB
meeeaaannnBmeeboBmee8BmediterraneanBmeditereneanB
meditatingBmedisoftBmediocreB	mediationBmedanBmedamBmedalBmechanicBmecaBmebutB	mebfaloneBmebcBmeawayBmeaselsBmeanyB	meanwhileBmeanwB	meanstillBmeannB
meaningfulBmeanestBmeanerB	mealtimesBmealsBmeal4wasB
meadowhallBmeadBmeaBme3BmdwBmcyumBmcsupergirlB	mcskilletBmcrgladBmcnuggetBmcmuffinBmcmanusBmclifeBmckinneyB	mckay2009BmcgregorBmcfoxB	mcfonaldsB
mcflyandjbBmcflurryBmcdsBmcdoBmccoyBmcconaugheyB	mccartneyBmccafetastesBmccBmcbabyBmcastBmbBmaï¿½BmazieBmayyyybeBmayorBmayoBmaylolimBmayfieldBmayerhesBmaybeeBmayaBmay1stBmaxxieBmaxwellBmaxiumBmaximumBmaximBmaxiBmaxedBmavensBmauroBmaudioBmatureBmatthewsBmatthesBmattewBmatteBmattcuttscomBmatineeBmathsteacherBmath11BmaternalhealthBmaterialisticB
matchmakerB	matanggapBmatanaB
matalatineBmatB	masthanksBmastBmassonB	massivelyB	masseusseBmasseuseBmassagesB	massacredBmassachusettsBmasochisticBmasksiBmasekelaBmascaraBmasBmarytyphoidBmarykayBmarwellBmaruchanBmartyBmartwoBmartinsBmarthaBmartabakBmartaBmarryingBmarrrrrrrrrryBmarriesB
marriedandBmaroonBmarnierBmarleesBmarkingBmarketplaceB	marketersBmarkersBmarjorieB
marjoleineBmarisaB
mariqueensBmarinersBmarilynB	marijuanaBmarie1BmaricarBmariahsBmariahneverBmariageBmariB
margueriteBmargsBmargreteBmargBmardiBmarcosBmarciaBmarchitBmarbledBmapsBmappedBmapetBmapBmanweBmanuallyBmantaBmannyBmanningBmannessBmannedBmanmyB	manlovelyBmanimBmanilaB
manicuristBmanicBmaniacsBmaniacB
mangosteenBmangoesBmangedB
mangaanimeBmangaBmangBmanfordBmaneBmandrivaBmandmBmandingoBmanderinBmanderBmandarinB	mandarichBmancatBmanagingBmanagement75cB
manageableBmanagaedBmanaBmammyyBmammasBmammaryBmamiyaBmamisBmamiBmamamamaBmamagraBmamabearB	mamaagainBmamBmaltaBmaloBmallsBmallorcaBmalliB	maliciousBmalepatternBmalenaBmalamangBmalakasBmakinoBmakersBmakerBmakeiBmakatiBmajorspoilerscomBmajorsBmajorlyhhhmmmnnnimBmaitreyaBmaintananceB
mainstreamBmainlandBmaillotBmaikosBmaidsBmaidBmahnBmahaloBmahalBmagsuperviseBmagsBmagoutB	magnoliasBmagnoliaBmagnificentBmagkakasamaBmagixBmagicmomentBmagicianB	magicallyBmaggotsBmaggieBmagentoBmadyBmadryBmadnotBmadinaBmadersBmaddestBmaddenBmadayaBmadameBmacvimBmacrisBmacrinaBmacmazeB	mackillopB	mackenzieBmackBmachingBmachinesBmachineeeeeB	macedoniaB
macdonaldsBmaccymBmaccyBmacciesBmacbooksB	macaroonsBmacaronsBmacaroniBmacaronB
macaramberB	macadamiaBmaattBmaatBmaarBmaanBmaamwowBmaaddictBmaaategrooovinBmaaadBmaaaannnnnnnnnBmaaaanBmaaaamB
maaaaannnnBmaaaaaanBmaaB
lï¿½sstBlï¿½rdagsBlyxxxBlynnBlyndonBlyndiBlymzBlykeBlyckaBlyBlvttbtBlvoeBlveBlvB	luxuriousBluvwillBluvvBluvdBlutzBlutonBlutoB	lutheransBlustingBlustigBlushhB
lurveeeeeeBlurveeBlurkBlurgyBluredBlupusBluposBlupitaBlunesBlunchsubwayBlunchnowBlunchnBlunchingB	lunchhmphBlunchhhhhhhhBlunchesBluncheon100Blunch85BlunBlumpyBlumpiaBlumpaBlumpB
lumberjackBlulzBlulusB	lullabysoBlullabyBluksBluketicBlukasBluisBluigisBluhBlugosiBluffBlufBludiBludditeBluckyyyyyyyBluckyyyBlucky7BluckkyyBluckkkkBluckiestBluck13BlucianoBluciaBluchBlucaBlucBlubbockBluauBluBltjBltBlsuBlsatsBlsatBlpzBlpiBlpBloyBlowsBlowhopeB	lowerleftBloweBlowcostBlovveBlovliestBlovleyBlovinheadedBloveyoufletchBloveyouB
lovesnkotbBlovesickBloveringBloverboyBlovelovelove3BloveloveloveB	loveliestBloveliesBloveitBloveiBlovehuntingBlovehesBlovehateBloveeyaBloveeeeeeeeeeeeeeeeeeeeeeBloveeeBlovecraftianB	lovecouldBlovebugBlovebankBlovatobehindB
lovatobackBlovahBlovageBlovableBlovaBlouisaBlouisBlouieBloughBloudquietloudBlouderBlou27BlotttBlottsaBlotrrotkBlotpayedBlotionBlotchecktesterBlotbyBlostthegameB	lostfoundBlossingBlossesBlosesB
loservilleBlorryB	lorrainesBloriBlorettaBlorenzoBloreB	lopatcongBlooveBlootwiseBloosenBloopyBloopsBloopjazzB	looooooveB
loooooooveBloooooooovesBloooooooooooooolBloooooooooongB	loooooongBlooooooldingBloooonnngggBlooolBloookBloomingBlookoutBlooknB
lookingbutBlooking4himBlookdBloocieBlooBlonqBlonovalaBlonnieBlonleyBlongweekendBlongtermBlongoriaBlonghaulBlongggggggggBlonggggBlonggBloneyBlonestarBlonesomeB	lonelyyyyBlonelydhB
lonelinessBlondonsBlolzzBlolzorB	lolwellnoBlolwellhopeBlolwatBlolwasBloltweetBlolthxsBloltheirBlolthatsBlolthatBlolszBlolsBlolololBlololBlolohBlollyBlollllllBlollipopBlolipopB
lolheeeyyyB	lolfrenchBloldonBloldBlolbutBlokBloiusasBlohangBlogsBlogosBloginsB	logicallyBloggadeBlogansBloftBlofnotcBlofBlodgingB	lodgethisBlococrime1stcomBlocksBlocalsBlocallyBlocalgovcampBlocaB	lobbyistsBloanerBloanedBloanBloaderBlo0lBlngerBlndBlnBlmoaBlmhrB	lmfaaooooBlmaozBlmaoiBlmaohaBlmaobutBlluuvvBlllooovvveeeBllikeBllamaBlkBlizziBlizardBliviBlivewritersB
livestreamBlivesiB
livescribeB
liverpoolsB
livenationBlivelovesingBlivejournalBlivechatBliveboxB
littttttleBlittleeerrrrBlitteratureBlitterBliterBlistviewBlistpermanentBlistningBlistfindB	listentedBlistenheBlisteneningBlistbutBlisetteBlisBliquourBliquidBlipsticBlionsB
lionkickedBlionBlinzBlinuxoutlawsBlinoleumBlinkyBlinkveryBlinkingBlinkinBlinkedB	lingeringBlingerieBlinerBlindyBlindtBlindsayBlindosB
lincolnillBlinaB	limpingsoBlimpingBlimpBlimitsB
limitationBlimbsBlillysanBlillestrï¿½mBliljessxBlilimeBliliBlilashBlikeslolBlikerioBlikelyyBlikelikeBlikeeBlikB	lightmareBlightlyB
lighteningBlightenB	ligamentsBligamentBliftsBliftedBliftBlifeughgoodnightsoBlifespanB	lifesaverBliferuinBlifelovestressBlifelolB	lifehouseBlifecamBlifeballBliesliesliesyouBlieinBlieeBliddleBlidBlicnseBlicksBlickingBlickedBlickB	lichfieldBlicensedBlicenceBliceBlibrefmBlibrayBlibrarykeychainssystemkeychainBlibertyB	libertineB
liberalismBliarsBliarBliaoBlianaBliBlhrBlhBlfpaBleytonBleyrockBlexusBlexisBlexiBlex3BlewisB	lewingtonBlewdBlevyBleviBleungBleukemiaBleukB
letï¿½sBlettuceBlettinBletterswhatB	lettermanBletitiaBletinBlesterpitcherBlestBlessonguessBleopoldBleonardBlennonBlengthBlenderBlenasBleleBleiiinBleiBleglolBleglessB
legitimateBlegionBlegendsB
legarmfootBlegallyBlegalisationBlegacyBleftwithoutBleftoverBleffB
leeuwardenBledgeBlecturesdefinitelyBlecturesBlecturerBlecBleavinimBleavingggggggBleavinggBleaversBleavepricinessB	leaveeeeeBleaveeeeB	leavealecBleavBleathersBleannBleaningBleakyconBleakingBleakBleafsBleacingBldbfBldapBldBlcdBlbsBlaysBlaynBlayinBlayersBlayerBlayedBlaydownBlawyerBlawwasBlawnsB	lawnmowerBlawlBlavishBlaverneBlautnerdailyBlautnerBlaurynBlaurenimBlaurasBlaundryneverB
launderingBlaunchyerboatB	laughtnerBlaughtheBlaughsoBlaughinBlaudBlatvianBlatrineBlatonyaBlatinB
latewakingBlaterntB	laterhopeBlatagoodBlataBlastnighttheyBlastingBlassiBlasertagBlasercutBlarinBlargoBlargerBlarffingBlarenzBlaraBlappieBlapaBlantosBlannenBlankyBlankaBlanhamBlanguishingBlanguishB	languageiBlanguagebutBlanguageawwwBlanetBlandworkB	landscapeBlandonBlandlordsewBlandlordB	landlinesBlandgBlandfillBlandcruiserBlancsBlanceyBlanBlamsBlampsBlampionsBlammyB	laminatorBlamentablementeBlamenessBlameeB	lambastesBlamaniaBlalalandB
lalalalandBlalalaBlakasBlaiterBlaineyBlainBlahoreBlagsBlagerBlaffyBlaffBladyokBladyillBladyiB
ladyfriendB
ladybug602BladsBladkiBladiezBladedBladdiesBladderBladagesapplejackspancakesBladBlactoseintolerantBlacrimalBlacksB	labyrinthBlabsBlaboBlabeledBlaavlyBlaaazyBlaaandanBlaaameBlaaaaaaaaaveBl8terBl8erBl8Bl4dB
kï¿½lleBkï¿½BkynetonBkymonkeyBkylesBkyaBkwodBkwlBkwijtBkuyaBkuwaitBkut3BkurumiBkurtBkurangBkungumaBkungBkunalBkumBkudaiBkubuntuBkrystlesBkrystleBkrystalBkrysBkrnBkrittBkristineBkristinaBkristinBkristieBkristiBkristenBkristaBkreneeB	krautrockBkrautBkrausseyBkraussBkrathongBkoxpersBkostetBkosongBkosmoBkosBkornBkoretBkoreansBkooolBkookieBkontaktBkonjumaBkonaBkojikunBkoibitoBkodumaiBkodomoBkodiakBkobeBkoalaBknwnBknuckleB	knoxvilleB
knowï¿½BknowwwBknowunfortunatelyBknowtoBknowngBknowlolBknowledgableBknowbutBknottsBknottieB	knockoffsBknockingBknockinBknightsweetBknightsBkneelingBkndaBknackersBknackBkmvBkmrnBkmfBkmartBklondikeBkleinsBkleineB	klaudinesBkksBkknowBkittysBkittykissesB	kittyboysBkittehBkitschBkitsB
kitchenandBkitaroB
kisskass19BkissaBkirstysBkirstenBkirklandBkirkiBkirbyBkiranB
kinokuniyaBkinkBkingstonBkinfBkinduhhBkindofBkindnessBkindestBkindergardenBkindaguyB	kimberleeB
kimbeommieBkimbaliciousB
kilometresBkiloBkilloranBkillmeBkillenBkilleenBkillboyBkillahBkikBkiisfmBkiisBkidzBkidsllBkidsdependableBkidnapBkidiB	kiddyoullBkiddshowBkiddosgottaBkiddosBkiddoeBkickoffBkickitmrBkickbuttBkickassBkibbelBkhushBkhonBkhemuBkhcBkhayyamBkhakiBkhBkgwBkeypadBkeynoteBkeylaBkeyholeBkeygensBkeycardsBkevinsBkeveBketboardBkeswickBkesianBkerryBkeriBkerbearBkentuckyBkennysB
kenickiesoBkendraBkenanBkelvinB
kelsenatorBkellzB	kellyshesB	kelliehowBkelliBkelleyBkellanBkeliBkelBkeithsBkeironBkeggersBkeepsitrealBkeepinBkeeperBkeemieBkeeganBkeedBkebabBkearleyBkeanuBkeaneBkeanBkealieBkeBkdgBkdeBkdBkccomBkc910BkboomBkbangunBkbal24BkayyyBkayyBkayoBkaylenBkayleesBkaylaleeBkay2BkawawasBkawaiiBkavaBkaustBkaushikBkaulBkauferBkauaiBkatnipBkatieawesomeBkathyBkathrynBkathleenshesBkathleenBkateyBkateageBkashtamBkashmirBkashiBkartzB	karnatakaB	karlsruheBkarlaB
karishmaa1BkariBkardashiansBkarateBkaranBkarachiBkapselBkapowskiBkapagBkapBkaoticB	kaohsiungBkansasBkanoaBkaninaBkaninBkangarooBkamustaBkamuBkamisBkamikazeBkamBkaliesB
kaliaaannnBkaleidoscopeBkalaharinetBkakiB	kakatweakBkaitlynBkairosBkailaBkahunaBkahkisBkaggraBkadiBkacieBkachingBkaareBk4geBjï¿½BjzBjvB	justsayinBjustjustBjustitsBjustinhmmmimB	justcauseBjustaBjusawwwwwdidBjurongBjuriesBjurassicBjupiterBjupaaBjuntBjuneoctBjuneimBjunctionBjunBjumpyB	jumpstartBjummyBjumboBjulywhatBjulyishBjuliusBjulioBjulianB
juliamarieBjulesBjuhsBjugglerBjudoBjudithBjudicialBjudgingBjudgesB	judgementBjudeBjuddBjubeyB	juansimonBjuanBjtvBjtsBjstuartBjscssBjrztwitterlunchBjrlolBjpegBjoyrideB
joyologistBjoynerBjoyhappyBjourneysB
journalismB
journalingBjottoniaBjossdBjoshuaB
joshthomasB	joshstoreB
joshmobileBjoseyBjosettewhereBjosephBjoseBjosaBjorgeBjordiesBjordansBjorBjoplinBjontBjonsameBjonesyBjones20BjonathonBjonasnewsongsB
jon4lakersBjoltedBjollyBjoleneBjoleBjojoBjoinsBjoingBjohnsonsBjohnsBjohnoBjohnnBjohnbackBjoharBjogsBjoggedBjoeysBjoemoitBjoemanBjoeltedBjodiesBjodieBjodiBjocoBjocantBjoburgBjobrosBjobosBjobiBjobfieldBjobapplyingB	jmichelleB
jmccartneyBjlsBjloBjljfBjlenoBjkwishBjkinBjkiddingBjitsuBjiskeBjippedBjinxedBjimmysBjimmingBjimmieB	jimmaaayyBjimiBjillianBjigBjiberishB	jibberishBjiahBjiBjewsBjewishBjewelryBjewellryBjeweleryBjeunoBjetwayBjetsonsB
jetsetteriBjetsBjesusimBjesssBjessicabB
jessicaaaaBjessicaBjerseyzBjerryyummmmyBjermBjeredBjerBjensonBjensenBjenniferBjennahBjennaBjemimahBjemiBjelzBjellybeaniesssBjeffsBjefferyBjeevesBjeeeezBjeebusBjediBjeanstheadingB	jealousurB
jealousseeBjealousmuchiBjealousiBjdubbBjdaveyBjcdecauxBjcB
jbobsessedBjb3dBjazzyB
jazzerciseBjayyBjayrBjayemBjayelBjayeB
jaydioheadBjayceeBjaxxsBjawsB
javascriptBjavaoneBjauntyBjassB
jasperhaleBjasonsBjasBjarvisBjarsBjarnBjaritaB	japsicansBjapeneseBjapeBjaooBjanisBjaniceBjaneyBjaneweBjanewayBjanetBjanessaBjanelleBjane14BjanBjammingBjamminBjammiesB	jamlegendBjamesonB
jamaiiicahBjamaicaBjalapenoBjakkiBjakBjajuBjainBjailbreakingBjaidenBjahBjagkBjagexBjagBjaeBjadoreB
jacquelineBjacobsBjacksonvilleBjackpotBjackmansBjacketsuncomfortablenotBjacketsBjackesB	jackalopeBjabBjaaoBj9Bj4550Biï¿½ï¿½mB	iï¿½llBiÂ´veBizzayyyBizzardsBiyupBiyaaBixigocomBiwishBiwebBiwasBiwaitingBivyBivsBiva09BivaBiusedtobescaredofBitzBitxBitwhatBitveryBitusBituBitttttBittttBittsB
ittomorrowBittoBitthenBittheBitthatsBitsurelyBitsooooBitsmBitsjeffBitnotBitmyBitmayBitmattBitmargieBitlooksBitlogBitlessonBitlBitjustBitjoinBitiveBititsBititBithttptwurlnljaq5j4BithowBitgottaBitgoodBitfckasBitexaBiterBitemsbutBitdoBitcuteBitchBit6Bit1stBit1BiswasBistsBistoreBistBissueï¿½B	issueslolBisssBissorryBissayinBissBisradBispoorBisone84BisolatedB
isnï¿½tB	isnï¿½BislipBisletBisleBishraBishiBishereBisayB	isawesomeB
isafailureBisabelaBirvineB
irritationB
irritatingB
irrelevantB	irratatedB
ironpythonBirlandaBirkedBircBirateBiraqBirahetaBiraBiqbalBiqBiptvBiptBipswitchbestBipsBiprocrastinateBipohBipodsadiB
ipodiphoneBipodingBipodiBinxsB	involvingBinvolveBinvitwB
invisalignB	investorsBinvestorBinvestmenttheBinvestigationBinvestigatingBinvestigateBinvertB	inventoryBinventorBinventedBinventBinvalidBinvadersBinuteroBintxBintruderBintroooBintroducingB
introducedBintroBintrepidBinthebattleBintheB	interwebzB	interwebsB
interviewsBinterventionB	intervalsBinteruptionsBintersubjectivelyBinterruptingBinterracialBinterpreterB
internshipB	internetzBinterminableB	interlockB	interivewB	interiorsB	interfereB	interestsBinterestBinteressanterBinteractB
intentarloB
intentandoBintentB	intensityBintelligenceBintellectuallyBintelBintegralBintBinsurersBinsuranBinsultsBinsulinBinsufficientBinstrumentalsBinstructorsB	instituteB	instinctsBinsteadiB
insteadandBinsteadaBinstantmessagingB	instantlyB	instancesBinstallsBinstallmentsB
installingB
installersBinstallationBinspironBinspirativeBinspectionsBinsorryB
insightfulBinsightB	inshallahBinshallaBinshaaallahBinsertsBinsertedBinsanelyBinsanedefaultsBinrBinquisitionB	inputtingBinoveraBinotiaBinooBinolvingBinoBinnnBinnitBinningsswearedBinningBinnhBinlawBinkheartBinjuryBinjuriesBinixBinitialsBinitialBinillBiniBinherentBinhaledBinhabitBinfrontBinforksBinfomercialsBinfluxB	influenceB	inflictedB	inflatingB	inflammedBinflamedBinfectionmanBinfectectionBinfectBinfantBinexplicablyB
inevitableBinetBinertialBinerneBindysB
indulgenceBinducingBindoorBindiesB	indiagovtBindiaandBindexedBindentationBindeedyB
indeciciveB	incredilyB
increasingB	increasesB	increasedBinconvenientBinconvenienceBinconsiderateB	inclusionBincludesBinclinedBinclientBinclB	incidentsBinchB
incestuousB	incentiveBincarnatedsoB	incapableBincBinbrugesBinboxesBinboundBinavBinappropriateBinanityBinadequateineedhelpBin2BimyB	imworkingB7imwatchingthehannahmoviewithmomshesaidthisfilmverygreatB
imtetstingBims09BimsBimpulseBimptB	improvingBimprovesBimprovedB
improperlyB	impromptuB
imprisonedBimpostorBimposterB	imposibleBimportexportBimplyingBimplodeBimplementingBimplementationB
impersonalBimperialistB	impecibleBimpatientlyBimpaledBimpairedBimpactsBimovieBimmuneBimmobilizerB	immigrantB	immenselyBimmenseBimmediatelyoffBimmatureBimitateBimissuBimissBimintheroomBimhoBimbeciliB	imaginingBimagingBimaginealthoughBilysB	ilycecilyBily333Bily3BiloveyoutwooooBiloveyoutooBiloveyoumoreeeeB	iloveyopuBilovemymommyBilostBilookBilongBilolBilocosBillysBillustratedB
illustrateB	illogicalBillinoisBilliBilikeBilhBiletsBiknowwwBiknowBikeasBiisBiiiiBiiightBihtBihopBihaventBigotBignorentB	ignoranceBignmentpleaseBightBigbarasBifyouBifsBiflowersBifeBieitsBie6Bie30sBidyllicB	idpreliefBidpB"idontknowwhatdamnbrandcoffeethisisBidmfinalBidkkkkBidkkBidkimBidiotattux11BidiotattovelidenBidiotatmilanqBidhuBidgafBidentityBidentificationBideiaBideapadBidea3Bidance19BidaBiconsBichibanBichatBichBicewaterBicecoldBiceboxBiccvbBicantsleepnessBicalBiboodBibmBiblueBibexBibBiatBiappreciateBiansBiamBiainBiaaaaaaaaaaaaanBi95Bi94Bi900dBi733Bhï¿½rlichBhï¿½ndelBhï¿½ltermandB	hypnotystBhypnoticBhypnosisBhypervenilatingB
hyperlinksBhypergoodnessBhyperbirdiesBhymanBhyhttBhydroBhydraBhydingB	hyderabadBhydeBhydBhwyBhwsBhwiBhvngBhvingBhuwwtsBhutsBhustBhuskerBhuskBhusbandsBhusbBhurtsreallyB
hurtsagainBhurtlingBhurtigBhurtfinallyBhurryupBhurrrBhurleyBhurghadaBhurdleBhurBhuqeBhupB
huntingtonBhuntheBhunnieBhungryyyyyyBhungryifBhungryiBhungrygettingB	hungrydueBhungarywhatBhundrethB	hunchbackBhumunsBhumpBhumousBhummmmmBhummerBhummBhumiraBhumilityBhumblingBhumanityBhumaneBhuhuhuBhuhuBhugzxxxxxxxxxxBhugsjoyBhugsbutBhughesyBhuggersBhuggableBhugelyBhugcuzBhuffyBhuffBhudsonBhuckabeeBhubsterB	hubbytobeB
hubbyeagleBhubbiesBhubbB
huaaahhhhhBhuaaaaaBhttpznlmeoswghBhttpykyatcom37nndBhttpyfrogcomehhmyjBhttpyfrogcom8c36ejBhttpyfrogcom6pwwljBhttpyfrogcom3o3zxojBhttpyfrogcom17zw1jBhttpyfrogcom13pdrmjBhttpyfrogcom10jsepjBhttpyfrogcom104m6wjBhttpyfrogcom0zywwjBhttpyfrogcom0xhu5jBhttpyfrogcom0l2tsjBhttpyfrogcom0guyojBhttpyfrogcom0a7v3jBhttpyfrogcom05ixbjBhttpyfrogcom02mxjjBhttpximeemcomkpeqpg7vuyB"httpwwwyoutubecomwatchvexpmtevsfqgB httpwwwyoutubecomuserjessinoel29BhttpwwwyoutubecomlillysanB.httpwwwwwecominsideindustrynewskennedyreleasedB"httpwwwwmyspacecomfiftyfivethreadsBhttpwwwwealthwithsoulcomBhttpwwwtwitpiccom4jhn7BhttpwwwtweepularcomBhttpwwwtrustyfotografiecomB&httpwwwthinkgeekcombooksnonfictionb322BhttpwwwtheskinsocietycomBhttpwwwthesixthaxiscomstaffBhttpwwwtheimpossibleprojectcomB(httpwwwtheatlanticcomafacebookhumormhtmlBhttpwwwtedmeBhttpwwwstickamcomvalentinerockB%httpwwwspeedtestnetresult483892161pngB#httpwwwsodaheadcommychemicalromanceBKhttpwwwselfhelpmagazinecompsychtoonsglasbergenstressmanagementstresstestgifBhttpwwwpoliticocompolitico44BhttpwwwphoenixfmcomlistennowphpBhttpwwwpennyblossomscomBhttpwwwofficecoukbrandbabycham8BhttpwwwofffwsB*httpwwwnewscientistcomarticlemg20227065900BhttpwwwmyspacecomtannajoyBhttpwwwmyspacecomlcdsoundsystemBhttpwwwmyspacecomjanedurkinBhttpwwwmyspacecombigcitymonkeyBhttpwwwmymunchiesnetBhttpwwwmommacherricoukBhttpwwwmisshudgenscomp28BhttpwwwmaxiinnetBhttpwwwluigisorgukB httpwwwlinkedincomindarrenmonroeBhttpwwwkrisisdnbcomlistenasxBhttpwwwkpfaorgBhttpwwwkeygenmusicnetBhttpwwwimtiredonlinecomsmileBhttpwwwharneycomBhttpwwwflipfoldcomBhttpwwwfarbsorgmessagehtmlB&httpwwwempireonlinecom100greatestgamesBhttpwwwempireonlinecomBhttpwwweabeautynetBhttpwwwdothebouncycomsmfB$httpwwwdistrictlinescomrevertfashionBhttpwwwdennisgomezcomBhttpwwwdaytrottercomBhttpwwwcultureshockmagcomB/httpwwwcontrolyourrankingscomlaunch1ustreamhtmlBhttpwwwbrentozarcomtwitterB'httpwwwbodybuildingcomfunrichardchanhtmBhttpwwwartofphotographyshowcomBhttpwwwaporgB'httpworldsbestpornmoviescomfaithmov3htmBhttpweaselbeeblogspotcomBhttpvzerohostcominfoB(httpvurmemegainternetwealthmegaredpacketBhttpviigoimsxbBhttpustream2vkoBhttpustream2toaBhttpustream2nlcBhttpustream2njvBhttpustream2j3lBhttpustream1ntpBhttptwurlnlueivwiBhttptwurlnlogzbdlBhttptwurlnlnz8f4yBhttptwurlnlltlny8BhttptwurlnljnizbwBhttptwurlnlgoljwpBhttptwurlnlfdgmyoBhttptwurlnl8q6cjcBhttptwurlccxd1Bhttptwtvitecom3koyqoBhttptwtfm91610BhttptwittersuckscomBhttptwitterpbworkscomhashtagsBhttptwittercompublictimelineBhttptwittercompaynetsystemsB$httptwittercomkaraswstatus1695368792BhttptwittercomdjcyanaBhttptwitpiccom6814wBhttptwitpiccom67zgzBhttptwitpiccom67z2qBhttptwitpiccom67yklBhttptwitpiccom67xv3Bhttptwitpiccom67xs0Bhttptwitpiccom67x74Bhttptwitpiccom67wb4Bhttptwitpiccom67wa0Bhttptwitpiccom67w20Bhttptwitpiccom67uc7Bhttptwitpiccom67twhBhttptwitpiccom67to5Bhttptwitpiccom67tcrBhttptwitpiccom67rt8Bhttptwitpiccom67rcpBhttptwitpiccom67qv3Bhttptwitpiccom67qhzBhttptwitpiccom67owuBhttptwitpiccom67ot5Bhttptwitpiccom67nxeBhttptwitpiccom67nhtBhttptwitpiccom67mj4Bhttptwitpiccom67ljjBhttptwitpiccom67l90Bhttptwitpiccom67kvtBhttptwitpiccom67kb6Bhttptwitpiccom67k9wBhttptwitpiccom67jzpBhttptwitpiccom67jq9Bhttptwitpiccom67iabBhttptwitpiccom67hw5Bhttptwitpiccom67hvrBhttptwitpiccom67gwhBhttptwitpiccom67fcjBhttptwitpiccom67f8qBhttptwitpiccom67f8oBhttptwitpiccom67ebaBhttptwitpiccom67bpdBhttptwitpiccom67azlBhttptwitpiccom67aimBhttptwitpiccom677xtBhttptwitpiccom677biBhttptwitpiccom676tnBhttptwitpiccom676hzBhttptwitpiccom676hvBhttptwitpiccom675twBhttptwitpiccom673vtBhttptwitpiccom67318Bhttptwitpiccom670tpBhttptwitpiccom670rwBhttptwitpiccom66zfdBhttptwitpiccom66ydbBhttptwitpiccom66yb9Bhttptwitpiccom66y00Bhttptwitpiccom66wxkBhttptwitpiccom66vlwBhttptwitpiccom66vdnBhttptwitpiccom66ustBhttptwitpiccom66uorBhttptwitpiccom66u67Bhttptwitpiccom66tybBhttptwitpiccom66sbzBhttptwitpiccom66roiBhttptwitpiccom66r0uBhttptwitpiccom66q88Bhttptwitpiccom66pn1Bhttptwitpiccom66of2Bhttptwitpiccom66m7fBhttptwitpiccom66ltbBhttptwitpiccom66l83Bhttptwitpiccom669nmBhttptwitpiccom669l2Bhttptwitpiccom6698bBhttptwitpiccom6695kBhttptwitpiccom667a4Bhttptwitpiccom666gyBhttptwitpiccom665w2Bhttptwitpiccom665toBhttptwitpiccom665n7Bhttptwitpiccom665a2Bhttptwitpiccom664uzBhttptwitpiccom664b7Bhttptwitpiccom662vkBhttptwitpiccom660vvBhttptwitpiccom64mdcBhttptwitpiccom64g3bBhttptwitpiccom624qoBhttptwitpiccom61ov1Bhttptwitpiccom61oj0Bhttptwitpiccom5h3adBhttptwitpiccom54khnBhttptwitpiccom4wuktBhttptwitpiccom4wua7Bhttptwitpiccom4wtzjBhttptwitpiccom4wtyjBhttptwitpiccom4wtomBhttptwitpiccom4wt8kBhttptwitpiccom4wsy6Bhttptwitpiccom4wsxiBhttptwitpiccom4wsueBhttptwitpiccom4wsstBhttptwitpiccom4wsscfullBhttptwitpiccom4wsk3Bhttptwitpiccom4ws8wBhttptwitpiccom4wrxqBhttptwitpiccom4wrrpBhttptwitpiccom4wr8kBhttptwitpiccom4wqfvBhttptwitpiccom4wqe8Bhttptwitpiccom4wp8lBhttptwitpiccom4woxiBhttptwitpiccom4wn9qBhttptwitpiccom4wmawBhttptwitpiccom4wlpfBhttptwitpiccom4wkziBhttptwitpiccom4wkymBhttptwitpiccom4wkplBhttptwitpiccom4wjaiBhttptwitpiccom4wi78Bhttptwitpiccom4wh0lBhttptwitpiccom4wg12Bhttptwitpiccom4wfs8Bhttptwitpiccom4wfqnBhttptwitpiccom4wfeoBhttptwitpiccom4wf30Bhttptwitpiccom4wehlBhttptwitpiccom4wegxBhttptwitpiccom4we5wBhttptwitpiccom4we51Bhttptwitpiccom4we4jBhttptwitpiccom4wduiBhttptwitpiccom4wdgrBhttptwitpiccom4wcqaBhttptwitpiccom4wcptBhttptwitpiccom4wc1kBhttptwitpiccom4wbn6Bhttptwitpiccom4wb42Bhttptwitpiccom4waukBhttptwitpiccom4wah5Bhttptwitpiccom4w9zbBhttptwitpiccom4w9peBhttptwitpiccom4w8l1Bhttptwitpiccom4w8jaBhttptwitpiccom4w8cwBhttptwitpiccom4w70jBhttptwitpiccom4w6lfBhttptwitpiccom4w67lBhttptwitpiccom4w5syBhttptwitpiccom4w52zBhttptwitpiccom4w483Bhttptwitpiccom4w3fiBhttptwitpiccom4w2lsBhttptwitpiccom4w269Bhttptwitpiccom4w22uBhttptwitpiccom4w1s0Bhttptwitpiccom4w1rrBhttptwitpiccom4w0yjBhttptwitpiccom4w06lBhttptwitpiccom4vw9aBhttptwitpiccom4vvouBhttptwitpiccom4vgzyBhttptwitpiccom4ve84Bhttptwitpiccom4v0vrBhttptwitpiccom4uy8lBhttptwitpiccom4t6qxBhttptwitpiccom4t4jvBhttptwitpiccom4qpzxBhttptwitpiccom4qfl3Bhttptwitpiccom4phzeBhttptwitpiccom4m9upBhttptwitpiccom4jlojBhttptwitpiccom4jkvlBhttptwitpiccom4jkvhBhttptwitpiccom4jkesBhttptwitpiccom4jkenBhttptwitpiccom4jkeaBhttptwitpiccom4jk6bBhttptwitpiccom4jk42Bhttptwitpiccom4jjy9Bhttptwitpiccom4jjlcBhttptwitpiccom4jjdxBhttptwitpiccom4jj4jBhttptwitpiccom4jj43Bhttptwitpiccom4jip9Bhttptwitpiccom4jhp8Bhttptwitpiccom4jgroBhttptwitpiccom4jfkwBhttptwitpiccom4jfg4Bhttptwitpiccom4jf4mBhttptwitpiccom4jf4kBhttptwitpiccom4jewcBhttptwitpiccom4jercBhttptwitpiccom4jeijBhttptwitpiccom4jdrgBhttptwitpiccom4jcxrBhttptwitpiccom4jcwmBhttptwitpiccom4jcjrBhttptwitpiccom4jcjjBhttptwitpiccom4jcfgBhttptwitpiccom4jcf1Bhttptwitpiccom4jccdBhttptwitpiccom4jbzvBhttptwitpiccom4jbsqBhttptwitpiccom4jbbaBhttptwitpiccom4jb4oBhttptwitpiccom4jb0qBhttptwitpiccom4jazsBhttptwitpiccom4jaz5Bhttptwitpiccom4jax3Bhttptwitpiccom4jaw9Bhttptwitpiccom4jas7Bhttptwitpiccom4jam0Bhttptwitpiccom4jaljBhttptwitpiccom4ja93Bhttptwitpiccom4ja4bBhttptwitpiccom4ja12Bhttptwitpiccom4j9fbBhttptwitpiccom4j99zBhttptwitpiccom4j95zBhttptwitpiccom4j92oBhttptwitpiccom4j91rBhttptwitpiccom4j8ykBhttptwitpiccom4j8usBhttptwitpiccom4j6kcBhttptwitpiccom4iw0xBhttptwitpiccom4iq19Bhttptwitpiccom4i3g6Bhttptwitpiccom4i2zuBhttptwitpiccom4hsd2Bhttptwitpiccom4hbs5Bhttptwitpiccom4gnlpBhttptwitpiccom4gemfBhttptwitpiccom4fzo7Bhttptwitpiccom4fnaaBhttptwitpiccom4bckpBhttptwitpiccom48gy0Bhttptwitpiccom45r61Bhttptwitpiccom449yjBhttptwitpiccom41dbnBhttptwitpiccom416b7Bhttptwitpiccom3mdceBhttptwitpiccom3bnasBhttptwitpiccom336u5Bhttptwitpiccom2zemtBhttptwitpiccom2xjocBhttptwitpiccom2uzx4Bhttptwitpiccom2dmtnBhttptwitpiccom2aa0mBhttptwitpiccom24merBhttptwitgoocom28hhBhttptwibescpfBhttptwibescomgrouppictBhttptweetphotocomBhttptweefightcomopphangyBhttptumblrcomxz31werchBhttptumblrcomxyt1qynyaBhttptumblrcomxyb1qw8cbBhttptumblrcomxvd1wanktBhttptumblrcomxnx1qyn0jBhttptumblrcomxmo1pgymjBhttptumblrcomxkx1wgl8rBhttptumblrcomxht1phgl3Bhttptumblrcomxeh1wetiqBhttptumblrcomxd51qx88bBhttptumblrcomxbb1qyx0eBhttptumblrcomx9i1qwu42Bhttptumblrcomx2k1wga72Bhttptrimmq39BhttptrimmoniBhttptrimmlouBhttptrimkxclBhttptrimkwodBhttptrimkwnxBhttptrimkq95Bhttptrimkpk8BhttptrimkpggBhttptrimkpdxBhttptrimkpdwBhttptrimkpc1BhttptrimkmvlBhttptrimgwpxBhttptrimgwoyBhttptinyurlcomygcp3fBhttptinyurlcomreiki88Bhttptinyurlcomre74xcBhttptinyurlcomre5s5hBhttptinyurlcomr65c68Bhttptinyurlcomr5o3zjBhttptinyurlcomqxyc2nBhttptinyurlcomqu62blBhttptinyurlcomqsw9vqBhttptinyurlcomqnh5oyBhttptinyurlcomqlrcecBhttptinyurlcomqkxh7qBhttptinyurlcomqcy8d4Bhttptinyurlcomq7eax7Bhttptinyurlcomq63obqBhttptinyurlcompvajlmBhttptinyurlcomp6lfchBhttptinyurlcomp2l88xBhttptinyurlcomoto5szBhttptinyurlcomotjttuBhttptinyurlcomoqsqz6Bhttptinyurlcomoow6mkBhttptinyurlcomonogerBhttptinyurlcomojugsbBhttptinyurlcomojcf5lBhttptinyurlcomoasxx2Bhttptinyurlcomns2l55BhttptinyurlcomnqudrtBhttptinyurlcomnmr7pcBhttptinyurlcomnl6pctBhttptinyurlcomnjubclBhttptinyurlcomne6twcBhttptinyurlcomnccqyaBhttptinyurlcomn28lr3BhttptinyurlcommxlcuvBhttptinyurlcommtfye3Bhttptinyurlcommt4opcBhttptinyurlcommpoghcBhttptinyurlcommnrezcBhttptinyurlcommnf4kwBhttptinyurlcommgcotdBhttptinyurlcommfm7tlBhttptinyurlcommf88dzBhttptinyurlcommdr7b4Bhttptinyurlcommdm5tpBhttptinyurlcommdewfkBhttptinyurlcomm77gp7Bhttptinyurlcomm6sru3Bhttptinyurlcomm5y2mwBhttptinyurlcomlxjdjcBhttptinyurlcomlvsn76Bhttptinyurlcomlr22djBhttptinyurlcomlpmvtkBhttptinyurlcomlk9ag8Bhttptinyurlcomlhq8gsBhttptinyurlcoml8pde3Bhttptinyurlcoml7zt72Bhttptinyurlcomkv653jBhttptinyurlcomkq47ahBhttptinyurlcomkm235xBhttptinyurlcomeqbweBhttptinyurlcomdzzaf5Bhttptinyurlcomdzcpg3Bhttptinyurlcomdl2upxBhttptinyurlcomdhlq5tBhttptinyurlcomdhc4hgBhttptinyurlcomdgtcj2Bhttptinyurlcomdfs7fyBhttptinyurlcomde8y47Bhttptinyurlcomddyyd6BhttptinyurlcomddqpoaBhttptinyurlcomdcxotyBhttptinyurlcomdbm4n6BhttptinyurlcomdagmoqBhttptinyurlcomd9g8sjBhttptinyurlcomd8fgxrBhttptinyurlcomd7tb38Bhttptinyurlcomd7jvopBhttptinyurlcomd5oyflBhttptinyurlcomd5mjyjBhttptinyurlcomd56mqfBhttptinyurlcomd53dmnBhttptinyurlcomd4l3oeBhttptinyurlcomd4hgojBhttptinyurlcomd4cxzeBhttptinyurlcomd3qwarBhttptinyurlcomczhzb3Bhttptinyurlcomcyd3ppBhttptinyurlcomcw8wp2Bhttptinyurlcomcv5nw8Bhttptinyurlcomcuy43tBhttptinyurlcomcuwj2bBhttptinyurlcomcumqmvBhttptinyurlcomcudamoBhttptinyurlcomct83ubBhttptinyurlcomcsdhw9Bhttptinyurlcomcsbo8sBhttptinyurlcomcrm4c2Bhttptinyurlcomcr8hjsBhttptinyurlcomcoypslBhttptinyurlcomcodla7BhttptinyurlcomcoboyfBhttptinyurlcomcnkhevBhttptinyurlcomclxl4lBhttptinyurlcomcltln9BhttptinyurlcomclrbauBhttptinyurlcomclfzdxBhttptinyurlcomckdwaoBhttptinyurlcomcjtqafBhttptinyurlcomcjs668BhttptinyurlcomcjamjtBhttptinyurlcomcf63udBhttptinyurlcomcf2yujBhttptinyurlcomcdue53BhttptinyurlcomcaotkuBhttptinyurlcomcao6tuBhttptinyurlcomc9ryqcBhttptinyurlcomc8uj28Bhttptinyurlcomc8fr3eBhttptinyurlcomc7yojgBhttptinyurlcomc73ehqBhttptinyurlcomc6tvz5Bhttptinyurlcomc5ljwmBhttptinyurlcomc4z6gnBhttptinyurlcomc48m6rBhttptinyurlcomc4237jBhttptinyurlcomc33ffvBhttptinyurlcomaxsujxBhttptinyurlcom6nkpuzBhttptinyurlcom6jwjmyBhttptinyurlcom67sk5rBhttptinyurlcom64ozr7Bhttptinyurlcom55hq2oBhttptinyurlcom37wt5fBhttptinyurlcom30toolsBhttptinysongcom36pzBhttptinyccvynk5BhttptinyccpavyiBhttptinyccoikbkBhttptinyccgnyq7Bhttptiny12tvi3ks8BhttptiB#httpsurvivingtheworldnetlesson5htmlBhttpsnipurlcomhq0n1Bhttpsnipurlcomhkuj9Bhttpsnipurlcomhbp3gBhttpslingalinkcomevice1BhttpsimoneserhantumblrcomBhttpshzme5keBhttpshrtst4ceBhttpshortto511rBhttpshortto511qBhttpsBhttpruwikipediaorgwikiwatirBhttprlyccjnfwnBhttpredirecif2bBhttprailsbridgeorgBhttprachellovespeaceblogspotcomBhttpquizfarmcomrunphpquizrunnerBhttpqikcomvideo1638824BhttppruneitweatB+httpprofilesfriendstercomamericanidolisloveBhttpprismmozillacomBhttppostlyhebBhttpplurkcompx34apBhttpplurkcompx332rBhttpplurkcompx32rzBhttpplurkcompx2zp6Bhttpplurkcompx2wswBhttpplurkcompx2vyiBhttpplurkcompx2rglBhttpplurkcompx2qkbBhttpplurkcompx2k1zBhttpplurkcompx2jc9Bhttpplurkcompx2eb3Bhttpplurkcompx2dvjBhttpplurkcompx2bp2Bhttpplurkcompx2bnlBhttpplurkcompx2bm1Bhttpplurkcompx2bhaBhttpplurkcompx2avnBhttpplurkcompx29ssBhttpplurkcompx285tBhttpplurkcompx25jwBhttpplurkcompx24keBhttpplurkcompx1ytsBhttpplurkcompx1pxhBhttpplurkcompx15fhBhttpplurkcompx12gfBhttpplurkcompwyqowBhttpplurkcompwydafBhttpplurkcompwyb4hBhttpplurkcompwy9wiBhttpplurkcompwy2ygBhttpplurkcompwxz12BhttpplurkcompwxsgyBhttpplurkcompwxqwaBhttpplurkcompwxnwaBhttpplurkcompwxlxsBhttpplurkcompwxluuBhttpplurkcompwxji3BhttpplurkcompwxizoBhttpplurkcompwxiuxBhttpplurkcompwxionBhttpplurkcompwxidkBhttpplurkcompsw4yqBhttpplurkcompsvxe1Bhttpplurkcompsvs4cBhttpplurkcompsvs0yBhttpplurkcompsvm3rBhttpplurkcompsvm0wBhttpplurkcompsvkchBhttpplurkcompsvhvhBhttpplurkcompsvg9dBhttpplurkcompsveoiBhttpplurkcompsvdshBhttpplurkcompsvdpuBhttpplurkcompsuyevBhttpplurkcompsupwpBhttpplurkcompsun82BhttpplurkcompsujthBhttpplurkcompsu3eqBhttpplurkcompsu3dgBhttpplurkcompsu0yrBhttpplurkcompstq3fBhttpplurkcompstnt0Bhttpplurkcompstns9Bhttpplurkcompstkr2Bhttpplurkcomprrj4eBhttpplurkcomprrg18BhttpplurkcomprremlBhttpplurkcomprr5idBhttpplurkcomprr121Bhttpplurkcomprqpl7Bhttpplurkcomprqo8qBhttpplurkcomprqo76Bhttpplurkcomprqk2zBhttpplurkcomprqaoeBhttpplurkcomprq9c7Bhttpplurkcomprq5ruBhttpplurkcomprpzmxBhttpplurkcomprprmrBhttpplurkcomprprl0Bhttpplurkcomprpp57BhttpplurkcomprplprBhttpplurkcomprplkrBhttpplurkcomprpgyyBhttpplurkcomprpb7tBhttpplurkcomprpaagBhttpplurkcomprp5poBhttpplurkcomprp5npBhttpplurkcomprp3k7Bhttpplurkcomprp3irBhttpplurkcomprozczBhttpplurkcomproxarBhttpplurkcomprou4vBhttpplurkcompros47Bhttpplurkcompror5dBhttpplurkcomproo6cBhttppinkpawsforlifeorgBhttppingfm2urgpBhttppicim4d8Bhttppicgdfad84cBhttppicgd63efBhttppengpengsplaceblogspotcomBhttpowly9uinBhttpowly52awBhttpoproercomtwwwitterBhttponoircomBhttpnewyorkseriouseatscomB#httpnewmusicyahoocomvideospremieresB2httpnaturalismofileswordpresscom200801elliott10jpgBhttpmypictme1zpfBhttpmylocmethqBhttpmylocmetctBhttpmylocmeg3oBhttpmylocmefryBhttpmylocmefebBhttpmylocme2215Bhttpmylocme21cuBhttpmylocme2144Bhttpmylocme20gfBhttpmylocme20ddBhttpmylocme1zygBhttpmylocme1xizBhttpmscaseycarterblogspotcomBhttpmobypicturecomuqi0h2Bhttpmobypicturecomee2ij3BhttpmigremesieBhttpmigremesfnBhttpmegaredpacketcomaffid7891BhttpmegaredpacketcomBhttplooptusiarprgtBhttplooptusf8jqgtBhttplooptus2sljbwtBhttplastfmuseran0keyBhttplalacomzadBhttpjijrcomhulzBhttpisgdysahBhttpisgdyjpqBhttpisgdygt5Bhttpisgdybd0BhttpisgdwyypBhttpisgdwyabBhttpisgdwxmtBhttpisgdwbt6BhttpisgdufigBhttpisgds9b1BhttpisgdjslbBhttpisgdjsglBhttpisgdjmjbBhttpisgdjkvfBhttpisgdjg3iBhttpisgdj6zyBhttpisgdiq03BhttpisgdejeBhttpisB2httpimgsuicidegirlscommediaalbums65713576658166jpgBhttpilikeucozcomm1123Bhttpi41tinypiccom2hi2t4yjpgBhttpi36tinypiccommwz6uojpgBhttpgykdnetBhttpgoingtoraincomBhttpghurmtumblrcomBhttpgetskyfirecomBhttpgBhttpfuzzballcomtwitterBhttpfreecdbackseatgoodbyecomBhttpfotologcomsokristenBhttpffim3nzthBhttpffim3nid8Bhttpffim3lquxBhttpffim2zgfkBhttpffim2l63lBhttpestrella05azulwordpresscomBhttpdisqus11wBhttpdiggcomd1spp7Bhttpdiggcomd1qeuaBhttpcladaluBhttpchelseavantoletsycomBhttpcheaptweetcomtsyopvdB#httpcharlenedianetravelsblogspotcomBhttpbudurlcomf9p5Bhttpbudurlcom9muaBhttpboofmb25651Bhttpbmapus2134B"httpblogspiritualsmartscom20091560Bhttpblipfm7aigmBhttpblipfm7af72Bhttpblipfm7a10aBhttpblipfm79fcrBhttpblipfm78qvzBhttpblipfm5z7zvBhttpblipfm5z7zsBhttpblipfm5z7v3Bhttpblipfm5z7cgBhttpblipfm5z6y6Bhttpblipfm5z5uwBhttpblipfm5z5kzBhttpblipfm5z50gBhttpblipfm5z4uqBhttpblipfm5z4p7Bhttpblipfm5z3ijBhttpblipfm5z36jBhttpblipfm5z2zoBhttpblipfm5z2svBhttpblipfm5z2g9Bhttpblipfm5z10dBhttpblipfm5z05gBhttpblipfm5yzb6Bhttpblipfm5yyudBhttpblipfm5yvndBhttpblipfm5ytkeBhttpblipfm5yomtBhttpblipfm5ynxoBhttpblipfm5jv7jBhttpblipfm5jq9oBhttpblipfm5jq91Bhttpblipfm5joo9Bhttpblipfm5jjccBhttpblipfm5jimjBhttpblipfm5jib6Bhttpblipfm5jhtvBhttpblipfm5jhimBhttpblipfm5jgj3Bhttpblipfm5jg6fBhttpblipfm5jg16Bhttpblipfm5jg0uBhttpblipfm5jfu9Bhttpblipfm5jehrBhttpblipfm5jd4bBhttpblipfm5jckpBhttpblipfm5jbvoBhttpblipfm5jbp3Bhttpblackird72etsycomBhttpbkitecom07xoiBhttpbkitecom07xohBhttpbkitecom07xfsBhttpbkitecom07kjrBhttpbkitecom07kbqBhttpbkitecom07k6xBhttpbitlyzpsqoBhttpbitlyzguqpBhttpbitlyyly0iBhttpbitlyxpvt7BhttpbitlywnmscBhttpbitlywl9ylBhttpbitlywjg5aBhttpbitlywhbuvBhttpbitlywcr3aBhttpbitlyvdtvfBhttpbitlyuxofoBhttpbitlyuwl7mBhttpbitlyunryfBhttpbitlyujua3BhttpbitlytzxqnBhttpbitlytnshfBhttpbitlytgxzuBhttpbitlytgvr7Bhttpbitlyss6ypBhttpbitlyspw5sBhttpbitlyskqliBhttpbitlysjdlpBhttpbitlys7hqeBhttpbitlys48d0BhttpbitlyrlqguBhttpbitlyrd31fBhttpbitlyqxxhiBhttpbitlyqqe7bBhttpbitlyqlzp2BhttpbitlyqljybBhttpbitlyqipuuBhttpbitlyqfsagBhttpbitlypvyyhBhttpbitlyps7y2Bhttpbitlypp1wzBhttpbitlyplnm4BhttpbitlyphjurBhttpbitlypenqlBhttpbitlyp274bBhttpbitlynyhmzBhttpbitlyngnarBhttpbitlyn9tsmBhttpbitlymymeaBhttpbitlymsizeBhttpbitlymo0qnBhttpbitlymco5vBhttpbitlylrsngBhttpbitlylroljBhttpbitlylhgz2Bhttpbitlylb9snBhttpbitlykn3mpBhttpbitlykmxhkBhttpbitlyk6iovBhttpbitlyjrm6vBhttpbitlyjpe9cBhttpbitlyizkabBhttpbitlyizhdyBhttpbitlyinfoqljybBhttpbitlyhxlfmBhttpbitlyhhigdBhttpbitlyhclxpBhttpbitlyhadfrBhttpbitlyh14twBhttpbitlyh09phBhttpbitlygwuhxBhttpbitlygrrdaBhttpbitlygqdbdBhttpbitlygjqshBhttpbitlygihacBhttpbitlyfxs3lBhttpbitlyfle9jBhttpbitlyfjeamBhttpbitlyexjcnBhttpbitlyevluwBhttpbitlyetb8hBhttpbitlyeovvnBhttpbitlyehcfpBhttpbitlyegvw3Bhttpbitlye0zfzBhttpbitlydvscaBhttpbitlydp2uhBhttpbitlydiqf3Bhttpbitlydec64butBhttpbitlycujxgBhttpbitlycnyhpBhttpbitlycet0sBhttpbitlycdrbtBhttpbitlybpekkBhttpbitlybgcnwBhttpbitlybf5shBhttpbitlyba3nfBhttpbitlyb8jthBhttpbitlyayvioBhttpbitlyawwznBhttpbitlyauuacBhttpbitlyaf8jtBhttpbitlyaesnkBhttpbitlyabrjpBhttpbitlya4fdbBhttpbitlya0nwBhttpbitly9ydhuBhttpbitly8w7iqBhttpbitly8qaghBhttpbitly7vikcBhttpbitly6jo0vBhttpbitly61aamBhttpbitly5ofzjBhttpbitly5e7drBhttpbitly3ysavBhttpbitly3xm7dBhttpbitly3pjncBhttpbitly3pj876Bhttpbitly2xdpfBhttpbitly2hpbg4Bhttpbitly2agcthBhttpbitly253ceBhttpbitly1doeejBhttpbitly199zwdBhttpbitly18kwzhBhttpbitly18aeg8Bhttpbitly1864mlBhttpbitly17cy61Bhttpbitly16w6zvBhttpbitly15yyidBhttpbitly15fo4xBhttpbitly147heuBhttpbitly13f5m0Bhttpbitly137ctyBhttpbitly12r3c3Bhttpbitly12f0yBhttpbctinycompo4meBhttpbbltwtcomsciifBhttpbbltwtcomnqgp3BhttpaudioboofmB#httpappsfacebookcomselectivetwitterB,httpappsfacebookcomdogbookprofileview6891977B,httpappsfacebookcomdogbookprofileview6878284B,httpappsfacebookcomdogbookprofileview6877293B,httpappsfacebookcomdogbookprofileview6386106B+httpappsfacebookcomdogbookprofileview616974B,httpappsfacebookcomdogbookprofileview5608012B,httpappsfacebookcomdogbookprofileview5163602B+httpappsfacebookcomdogbookprofileview182397B,httpappsfacebookcomcatbookprofileview6831309B,httpappsfacebookcomcatbookprofileview5626035Bhttpanimeexpoorgp2396B*httpandshehopesblogspotcom200905kewpiehtmlBhttpamandallynnblogspotcomBhttp2veorgxpg0Bhttp13tolifeusBhttpBhteBhtbBhtBhsgBhseBhsbcBhruBhrlikeBhowzBhowtoBhowserBhowmanyB
howevernowBhowdyyyBhowardBhoveringBhoveredBhoveBhoustonsBhoustatlantavegasB	housewifeBhousetakingB
housematesB	housemateBhousefinallyBhouseeeBhouseandB	hourswillBhourssssBhoursoB	hoursboooBhoursandBhouriBhounslowBhoundingBhoundBhoudinBhouBhottieBhottestBhotspotsBhotshotBhotsawceBhotohBhotelsBhotdogsBhotdogBhotcoldBhotandBhot30BhospitolBhospitalyetB	hospitalsBhoseBhosannaBhortenBhorsingBhorsiesB	horseshoeB
horseforthB	horsebackBhorrorhopingB
horrifyingBhorrificB	horriblelB
horrendousB
horoscopesBhornBhormoneBhordiesBhoratioBhorBhoppingBhoppedB
hopnoxiousBhopinBhopfullyBhopelolB
hopelesslyBhopefulyBhopefullBhopefllyB	hooveringBhooveredBhootBhoorahBhoopingBhooorayBhooorahBhooooBhooomeBhoooBhookupsBhooksBhookingBhonzaBhonoursB	honouraryBhonoraryBhongkongBhoneyyyyBhoneypotBhoneybutBhonestyBhondaBhomskisB	hommmmmmeBhomiesB	homieliliBhomieactuallyBhomeworkboringBhomewatchingBhometownBhomethenBhomesssssskoooolerBhomeschoolingBhomeroastedBhomerefreshedBhomepageBhomeonB	homenightBhomeneedBhomelyBhomelandBhomeiï¿½mB	homehappyBhomegirlBhomeeeeBhomeeeBhomeeboringBhomebrewBhomeboyB	homeboundB	homebirthBhome11B
holyyyyyyyBholydaysBholmesBholmburyBhollyoakspoorBhollowbabeshereBholllaaaB
holliejustBholleredBholidayzzzzzBholidaythenBholidayssadBholgaBholesBholeintheheartBholedBholdinBholderBholdenBholdemBholbyBholBhokeypokeybandraBhokeyBhoisinBhoildayBhoggingBhoffentlichBhoesBhoepfnerBhoeishB	hobotrampBhobosBhoboB	hobnobbedBhoarseBhmzBhmtmBhmmyourBhmmwhatBhmmthatBhmmpphBhmmpBhmmokBhmmneedBhmmmtheBhmmmstrainedBhmmmmmmmBhmmmchineseBhmmhaiaaBhmletB	hiyaaaaaaBhiyaaBhiwannaBhivisBhiveBhitttB	hitrecordBhitmanBhitchedBhistorysB
historicalBhispanicBhiphiphorayB	hipfabricBhintsBhinkB	hindustanBhindinotBhinderBhinckleyBhimokokBhimohBhimmBhimhesBhimheBhimeBhimcantBhimbutBhilsonBhilowBhillyBhillsdoctorsBhillimB
hillariousB
hilarioussBhilariouslyBhilaaaaariousBhijackedBhiiiiiiBhihihiBhihiBhighwaysB'highnesscrystalmariedontluvspiteanymoreBhighmissingB
highlightsBhighlandBhigginsBhifiBhidesBhideousB
hiddenfileBhicupsBhickupsBhicksBhickBhiceBhi5BhhhhhhaaaaaaaaaaaaaBheyyyyyyyyyyyyyyaBheyyyyyBheyyyyBheyyhooheyheyBheyloBheyimB
heyheyheyyB heyheyheyheyehyeyyyyyyyyyyyyyyyyBheygotBhertsBhersheysBhershesBherrrrrBherpesBheroswichitaBheroismBheroicB	herniatedB	hernandezBhermitsBhermioneBhermineBhermanBheritsBheriBherhseysBherhisBherewishBherewazBherewBheretillBheresoB	hereneverB
heremakingBhereiBherefinallyBheredontB
hereditaryBherdmanBherculesBherbsBhenryB
henpeckingBhenningsBhennaBhenceBhempBhemorrhoidsBhemmatBhelpinBheloooBhellyeahBhelloooooooBhelloimBhelllllppppBhellllllooooooooooooBhelllBhellerrrBhelioBhelicoptersB
helicopterBhelensBhelenasBheldenBhelaasBhelBhejBheinzBheidivBheidiB	heheuntilB	hehesorryBheheniceBhehehBheheeBhehaheahaaaaBhefferBheffasBheeyBheerlenBheepBheelllllBheeelsBheeelllpppppBheeeeeyBheeeeereBheeeeeBheeeBhedgeBhedbergBhedacheBhectivBheckittyBheavyweightBheavilyBheavennnBheavBheatishBheatingBheathfoxcomBheathBheartyBheartwhoevaBheartstringsB	heartlessB	heartbeatB	heartacheBhearinB	hearandimBheapBhealthylivingBhealthifiedBhealingBheahhhBheadzupBheadwayBheadrushBheadmayBheadlongB	headlinesB
headlightsBheadlessBheadhopeBheadbuttBheadahceBheadacheallBheadachBheadaaaaaaaaaaaacheBheaBhddiBhddBhcoreBhccBhcBhbBhazzuntBhazinBhazeB	hazardousBhaywireBhayleeB	hayfeveryBhayessBhayesBhax0r1B	hawthorneBhawthornB
hawkesburyBhawkBhawainBhawaiianBhavsBhavnï¿½tBhavnetBhavneBhavetoBhavenB	havelunchB	havaianasBhauntingxealotBhauledBhaulBhauerBhatikuBhatheBhaterjusBhaterBhateeeeBhateeeBhassntBhassansBhashimBhasdeBhasaBharrymcflytosingBharrykimBharrumpBharrisBharrassmentB	harrassedBharpmanhatterBharneyBharmlessBharmfulBharmedBharmBharletonBharibosBhardwoodBhardingBhardiBhardgoodnightB	hardgoingBharddiskBharddBhardcoremetalcoreB	hardcodedBharborB	harassingBhapyB
happyskoolBhappymothersdayB	happyemoxB
happydanceBhappyandBhapppyBhapppppyBhappppppyyyyBhappilyBhappiletterB	happenediBhappehB	happeenedBhapenBhapeeBhaoxBhansonsBhansonBhansenBhansBhanoiBhannaBhanksBhangupBhangtimeB	hangoversBhangersBhandsiB
handshakesB	handleingBhandiBhandheldBhandfulBhandballBhandbagsBhandandBhanafiahBhamsterBhamptonsB	hampsteadBhampaBhammymyBhammondB	hammocknoBhammeredBhammerBhamishBhamdemicB	hamburgerBhalvedBhaluBhalsBhaloomBhallucinationB	hallscaryBhallsB	halloweenBhalloB
hallelujahBhallaBhalfwayB	halfsweetBhalfheartedlyBhaleBhakunaB	hajjisyeaBhaizB	hairstypeBhairstylerealB	hairstyleB
hairstupidB	hairsprayBhairdyeBhairdressersB	hairdoingBhairdoBhaircutsBhaircutmightBhairballBhailingBhaileysBhaiiiiBhaiiBhaihBhahhhBhahhahahBhahhaaBhahayeah10thBhahaoohBhahaliveBhahahaiBhahahahhahahaBhahahahayeahBhahahahahahahahahahahahahaBhahahahahahahahahahahahaBhahahahahahahahahahBhahahahahahahaaBhahahahahahaBhahahaguttedBhahaaahaBhahaaaaBhaggisBhaggBhagenBhaftaBhafizBhadveBhaderBhadaBhackyBhacksBhackneysBhackdayBhaciendoBhaciendaBhabitsBhabitatBhabboBhaayyBhaaventBhaahahaBhaahaaaBhaahaBhaahB
haaawaaaahBhaaaaaaaaateBhaaaaaaBhaaaBhaaBh8sBh786Bh1B
gymtanningB
gymnasticsBgymmingBgyahBgxxBgwtBgwegBgweetinBguyzBguyunfortunatlyBguybutBguyandBguuudBguussBgutteredBguttahBgutenBgusyingBgushBgurrrrrlBgurrlBgurllBgurlceceB	guranteeeBgunnerBgunnBgunieaBgumpBgumowwBguitartodayBguinessBguiltedBguilityBguidoB	guidelessBguidanceBguestingBguesssBgudluckBguavaBguardingBguardBguapoB	guapisimoB	guadalupeBgttaBgtgsBgtfoBgtalkBgsonBgsBgrï¿½ï¿½enB
gryffindorBgrungyB
grumpinessBgrumpiesB	grumblingBgrumbleweatherBgruelingBgrubbyBgrubbBgru3someB
grrrstupidBgrrrrrrrrrrrrrrrB	grrrrrrrrBgrrrrrrBgrrrrriBgrrrriBgrrrlB	grrfatboyBgrreverytimeBgrowlsB	grovelledBgroupingBgroupiesBgroupieBgroundsBgroundimB	groundhogBgroundbreakingBgroulingBgrouchyBgrouchBgrossesBgrossedBgrossblaaaqhhhBgroovyBgroovesharkBgrooveBgromitBgroceriespricesBgrlBgritingBgrippedBgrindingBgrindBgrimmyBgrimestopperBgrilBgrigioBgriffinsBgriefBgriecoBgridironBgridBgricesBgretsBgretelBgretaBgreshamblakeBgrenchBgrenadeBgremlinsBgremlinBgregshowingBgregorBgreggBgreetsBgreenwizardBgreenteaBgreensboroloveBgreensB	greenlakeB
greenhillsBgreeeeenBgreeeeeeeeeeeatB	greeeeeatBgreciaB	greatttttBgreattB	greatnessB	greatingsBgreatifBgreatgrandmotherBgreatgotBgreatfulBgreasyB	greastestBgreaaatB	greaaaaatBgraysBgrayishB	graveyardBgraveBgratsB	gratitudeBgratissBgratificationBgratesBgraphsBgraphBgrapeBgranulationBgrantedluckilyBgrantedBgrantBgransB	grannytheBgrannysBgrandrapidsBgrandpasBgrandmothermissB	grandkidsBgrandfatherBgrandesBgrandbabiesBgrandasB	grandaddyBgrammaticalBgrainBgrahmcrackerBgraduationtheyBgraduationiB	graduallyBgradsBgradesoutsideB	grademockBgracinBgracieBgraciasBgracesBgrabsBgrabehB	graandmasBgqmfBgqBgptBgprsBgprofBgpBgoyBgovernorBgovernmentalBgoutBgourmetcookBgourmetBgoulburnBgotttaBgottoBgotooBgothatsBgothBgotdamnBgossipyB	gossipingB
gossipgirlBgosshhhBgoslingsBgoshyBgoshwhosBgoshhBgosforthBgorjuzBgorhamBgordosBgorB
goosebumpsB
gooseberryBgooooshBgooooooooooooooooooooooooodBgooooooooooooodBgoooooooooodB	gooooooooBgooooooodmorningB	gooooooodBgoooooodmorningBgoooooodmoringBgooooooBgooooonightBgooooodnightB	gooooodddBgooooodB
gooodnightBgooodmorningBgoonightBgooniesBgoonaBgoogsBgooglingB
googledocsB	googlecomBgoofinBgoofBgoodyBgoodwillB	goodtimesB
goodthanksBgoodsBgoodnoBgoodniteB	goodniqhtB
goodnightsBgoodnighthappyB
goodnight3BgoodmorningnightB	goodmaybeBgoodmanB
goodknightBgoodieBgoodiB	goodhappyBgoodhairBgoodgirlBgoodeBgoodbyezB
goodbyeeeeBgoodbeyBgoodbadBgonzalezB	gonethankBgonesoBgolferB	golfballsBgoldmineB	gokartingBgoitsBgoitnBgoingtoBgoinggB	goingawayBgoignBgohaveBgogolBgoersBgodzillaBgodtimeBgodownBgodnessBgodmyBgodlyBgodgivenBgoderichBgodeBgoddessBgoddddBgoddaughtersB	goddamnitBgoddamBgoddaBgoddBgocincinnatiBgochatBgobletBgobBgoaudioBgoatsBgoalsBgnytBgnrBgniteyB
gnimorningBgnightsBgniBgngBgnatcatcherBgmuBgmtvBgmtishBgmt8BgmorningBgmanBgluttonyBglowBgloveB
gloucesterBglossaryBglossBgloopyBglenelgB
gleneaglesBgleeBglauBglastonburyBglassezBglareBglandsBglandB	glamorousBglammyyyBglamBgladsadB
gladiatorsBgladeBglacierBgknightBgizmoBgivingcaringBgiversBgiverBgiveimBgiveeB	giveawaysBgitwarBgitsBgisBgirslBgirrrrrrrrlllBgirrrlfriendimBgirraffeBgiroBgirlysBgirlrainBgirlnowBgirllllBgirllBgirlieBgirlfriendimBgirlbahahahBgirlandBgirl5BgiraffeBgioB	ginormousBginoBginggBgingBgimpBgimmickBgimmehBgilletteBgilfBgiiggl3zBgiidBgiftinBgiftedBgiftcertBgiffordBgiddyB	gibraltarBgibbBgibBgiantsBghostwhispererBghmettallicaBghmBghicitBghhhBghdBghalibBgh5Bgh3BghBggsBgfailBgetttinBgetttBgettnB
getonu2comBgetherBgetchoBgetawaysBgetawayBgervaisBgeronimoBgermï¿½nBgermsBgerminationBgermaphobenessB
germanywowBgermanymexicoBgerbilB	geraniumsBgeraldBgeordiebirdB	geordanosBgeologyBgeograhyB	geogeektvBgeocachingcomB
geocachingBgeoB	genuinelyBgenuineB	gentlemenB	gentlemanBgenreBgenoeseB	geniusandBgenitalsBgenghisBgenerousBgenerationsB	generatesBgeneralisationsBgeneraleBgenBgemstarBgelopenBgelatoBgelBgejeBgehtsBgehtBgeetaBgeeshBgeelongBgeeksonaplaneBgeekshoppingBgeeksBgeeBgeasBgearwhosBgearedBgearboxBgeBgdnightBgditBgdgdBgdayBgdaskBgchBgbwB	gazillionBgazeBgavinBgavBgaussBgaugeBgatwickBgatoradeBgasxBgastronomicalBgastosBgastonBgastheBgaspingBgaskarthBgashesBgashBgas94BgarysBgarthB	garrulousBgarrosBgarritBgarnierBgarnerBgarleyBgarlandB	garfieldsBgarethsBgarethBgardensB
gardenhopeB	gardenersBgardenerBgarboBgarbageBgarantiefallB
garagebandBgara2BgarBgapBgannaBgangsterrrrB
gangsterrrB	gangstarrBganeshBgandangBgandaB
gametryingBgamestopBgamersBgameresearchingBgamerBgameplaystillBgamemothersB	gamegottaBgamefanBgameeBgame1BgamblingBgalwayB	galvestonB
gallstonesBgalloreBgaleB	galbladiaBgalaxyB	galacticaBgalaBgainsBgaimanBgailsBgaijinBgahdBgahanBgagingBgagglesBgaggingBgagasBgaffiganBgaetaB
gadgetopiaBgabrielBgableBgabeBgabbieBgabBgaahhhhBg5Bg4tvsBg2gBg1freaksBfï¿½BfyouB
fxxxmylifeBfxBfwiendsBfwendssoBfuzzyBfuzzballitsBfuzzBfuuuuuuuudgeeeB	fuuuuuuckBfuuudgeBfuunnBfuturshowhardBfutileBfussyBfusedgamingBfusedBfuseBfuschiaBfursB
furloughedBfurloughBfurbyBfunzenBfunwishBfunsadB	funpackedBfunnyyBfunnyuBfunnowBfunnotBfunnisetBfunnestBfunnelBfunnBfunlikeBfunkeyBfuniBfungusBfundsBfundamentalsBfundageBfundBfunctionsnahhB
functionalBfunchalBfunandBfunalthoughBfumingBfulltermB
fullscreenBfullpageB
fullestandBfullestB
fulfillingBfuknBfukknBfukinBfukaBfujiBfuckyoumondayB	fucktardsBfucktardBfucknB
fucckingggBfuccinBfuccBfubuBftrBftpBftlBfrustrationiBfrustratediBfruitbatBfrownsBfrostyBfrostiesBfrostedBfrostBfromhellBfromahemBfromaBfrolicBfroggyBfroggiesBfroBfrndBfrknBfrittersBfritterBfristyBfristBfrinedsBfrinedBfrikkenB
friiiiidayBfriidaysBfrightenB	friendyouBfriendtwitterB	friendsssBfriendssBfriendsiBfriendshipsB
friendshipBfriendshahamyBfriendlyandB	friendingBfriendbrotherBfriendboredB	friendandBfrienchBfridgethankB	fridgeandBfridaywhichBfridaystudyingB	fridaynotBfridaylookingBfridayiB
fridayevryB
fridayboooB	fridayandBfridaaaayyyyyBfriadBfreyBfreudeBfretfulBfresnoBfreshnowBfreshnerBfreshmenBfreshlyB
frequentlyBfrequentBfreoBfrensfrmBfrendB	frenchiesBfrenchieBfrenchfrycorndogB
freistundeBfreindshirleyBfreightBfrehleyBfreewaysB	freeuntilB	freethereBfreetdsBfreesatsBfreesB	freemusicB
freelessonB	freelanceBfreehugsBfreeeeeeeeeeeeeeeezingBfreeeB	freedomorBfreedB	freecycleBfreeballingBfreddiesBfreddieBfredBfreckleBfreaksBfreakishBfrdhowsBfrcB	fraudsterBfratBfraserBfrappuccinoBfrappachinosBfrappB
frankwhyteBfranklinBfrankiesBfrancezaBfrancescBfranB
frameworksBframedB
fragrancesB	fragranceBfragileB	fracturedBfractureBfrackedBfp09BfpBfoxyBfowardBfourthgradeBfounderBfoundbreakfastB
foundationBfouBfotosBfostBforzaBforwed
??	
Const_5Const*
_output_shapes

:??*
dtype0	*??	
value??	B??		??"??	                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '       '      !'      "'      #'      $'      %'      &'      ''      ('      )'      *'      +'      ,'      -'      .'      /'      0'      1'      2'      3'      4'      5'      6'      7'      8'      9'      :'      ;'      <'      ='      >'      ?'      @'      A'      B'      C'      D'      E'      F'      G'      H'      I'      J'      K'      L'      M'      N'      O'      P'      Q'      R'      S'      T'      U'      V'      W'      X'      Y'      Z'      ['      \'      ]'      ^'      _'      `'      a'      b'      c'      d'      e'      f'      g'      h'      i'      j'      k'      l'      m'      n'      o'      p'      q'      r'      s'      t'      u'      v'      w'      x'      y'      z'      {'      |'      }'      ~'      '      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'       (      (      (      (      (      (      (      (      (      	(      
(      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (       (      !(      "(      #(      $(      %(      &(      '(      ((      )(      *(      +(      ,(      -(      .(      /(      0(      1(      2(      3(      4(      5(      6(      7(      8(      9(      :(      ;(      <(      =(      >(      ?(      @(      A(      B(      C(      D(      E(      F(      G(      H(      I(      J(      K(      L(      M(      N(      O(      P(      Q(      R(      S(      T(      U(      V(      W(      X(      Y(      Z(      [(      \(      ](      ^(      _(      `(      a(      b(      c(      d(      e(      f(      g(      h(      i(      j(      k(      l(      m(      n(      o(      p(      q(      r(      s(      t(      u(      v(      w(      x(      y(      z(      {(      |(      }(      ~(      (      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(       )      )      )      )      )      )      )      )      )      	)      
)      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )       )      !)      ")      #)      $)      %)      &)      ')      ()      ))      *)      +)      ,)      -)      .)      /)      0)      1)      2)      3)      4)      5)      6)      7)      8)      9)      :)      ;)      <)      =)      >)      ?)      @)      A)      B)      C)      D)      E)      F)      G)      H)      I)      J)      K)      L)      M)      N)      O)      P)      Q)      R)      S)      T)      U)      V)      W)      X)      Y)      Z)      [)      \)      ])      ^)      _)      `)      a)      b)      c)      d)      e)      f)      g)      h)      i)      j)      k)      l)      m)      n)      o)      p)      q)      r)      s)      t)      u)      v)      w)      x)      y)      z)      {)      |)      })      ~)      )      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)       *      *      *      *      *      *      *      *      *      	*      
*      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *       *      !*      "*      #*      $*      %*      &*      '*      (*      )*      **      +*      ,*      -*      .*      /*      0*      1*      2*      3*      4*      5*      6*      7*      8*      9*      :*      ;*      <*      =*      >*      ?*      @*      A*      B*      C*      D*      E*      F*      G*      H*      I*      J*      K*      L*      M*      N*      O*      P*      Q*      R*      S*      T*      U*      V*      W*      X*      Y*      Z*      [*      \*      ]*      ^*      _*      `*      a*      b*      c*      d*      e*      f*      g*      h*      i*      j*      k*      l*      m*      n*      o*      p*      q*      r*      s*      t*      u*      v*      w*      x*      y*      z*      {*      |*      }*      ~*      *      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*       +      +      +      +      +      +      +      +      +      	+      
+      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +       +      !+      "+      #+      $+      %+      &+      '+      (+      )+      *+      ++      ,+      -+      .+      /+      0+      1+      2+      3+      4+      5+      6+      7+      8+      9+      :+      ;+      <+      =+      >+      ?+      @+      A+      B+      C+      D+      E+      F+      G+      H+      I+      J+      K+      L+      M+      N+      O+      P+      Q+      R+      S+      T+      U+      V+      W+      X+      Y+      Z+      [+      \+      ]+      ^+      _+      `+      a+      b+      c+      d+      e+      f+      g+      h+      i+      j+      k+      l+      m+      n+      o+      p+      q+      r+      s+      t+      u+      v+      w+      x+      y+      z+      {+      |+      }+      ~+      +      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+       ,      ,      ,      ,      ,      ,      ,      ,      ,      	,      
,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,       ,      !,      ",      #,      $,      %,      &,      ',      (,      ),      *,      +,      ,,      -,      .,      /,      0,      1,      2,      3,      4,      5,      6,      7,      8,      9,      :,      ;,      <,      =,      >,      ?,      @,      A,      B,      C,      D,      E,      F,      G,      H,      I,      J,      K,      L,      M,      N,      O,      P,      Q,      R,      S,      T,      U,      V,      W,      X,      Y,      Z,      [,      \,      ],      ^,      _,      `,      a,      b,      c,      d,      e,      f,      g,      h,      i,      j,      k,      l,      m,      n,      o,      p,      q,      r,      s,      t,      u,      v,      w,      x,      y,      z,      {,      |,      },      ~,      ,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,       -      -      -      -      -      -      -      -      -      	-      
-      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -       -      !-      "-      #-      $-      %-      &-      '-      (-      )-      *-      +-      ,-      --      .-      /-      0-      1-      2-      3-      4-      5-      6-      7-      8-      9-      :-      ;-      <-      =-      >-      ?-      @-      A-      B-      C-      D-      E-      F-      G-      H-      I-      J-      K-      L-      M-      N-      O-      P-      Q-      R-      S-      T-      U-      V-      W-      X-      Y-      Z-      [-      \-      ]-      ^-      _-      `-      a-      b-      c-      d-      e-      f-      g-      h-      i-      j-      k-      l-      m-      n-      o-      p-      q-      r-      s-      t-      u-      v-      w-      x-      y-      z-      {-      |-      }-      ~-      -      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-       .      .      .      .      .      .      .      .      .      	.      
.      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .       .      !.      ".      #.      $.      %.      &.      '.      (.      ).      *.      +.      ,.      -.      ..      /.      0.      1.      2.      3.      4.      5.      6.      7.      8.      9.      :.      ;.      <.      =.      >.      ?.      @.      A.      B.      C.      D.      E.      F.      G.      H.      I.      J.      K.      L.      M.      N.      O.      P.      Q.      R.      S.      T.      U.      V.      W.      X.      Y.      Z.      [.      \.      ].      ^.      _.      `.      a.      b.      c.      d.      e.      f.      g.      h.      i.      j.      k.      l.      m.      n.      o.      p.      q.      r.      s.      t.      u.      v.      w.      x.      y.      z.      {.      |.      }.      ~.      .      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.       /      /      /      /      /      /      /      /      /      	/      
/      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /       /      !/      "/      #/      $/      %/      &/      '/      (/      )/      */      +/      ,/      -/      ./      //      0/      1/      2/      3/      4/      5/      6/      7/      8/      9/      :/      ;/      </      =/      >/      ?/      @/      A/      B/      C/      D/      E/      F/      G/      H/      I/      J/      K/      L/      M/      N/      O/      P/      Q/      R/      S/      T/      U/      V/      W/      X/      Y/      Z/      [/      \/      ]/      ^/      _/      `/      a/      b/      c/      d/      e/      f/      g/      h/      i/      j/      k/      l/      m/      n/      o/      p/      q/      r/      s/      t/      u/      v/      w/      x/      y/      z/      {/      |/      }/      ~/      /      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/       0      0      0      0      0      0      0      0      0      	0      
0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0       0      !0      "0      #0      $0      %0      &0      '0      (0      )0      *0      +0      ,0      -0      .0      /0      00      10      20      30      40      50      60      70      80      90      :0      ;0      <0      =0      >0      ?0      @0      A0      B0      C0      D0      E0      F0      G0      H0      I0      J0      K0      L0      M0      N0      O0      P0      Q0      R0      S0      T0      U0      V0      W0      X0      Y0      Z0      [0      \0      ]0      ^0      _0      `0      a0      b0      c0      d0      e0      f0      g0      h0      i0      j0      k0      l0      m0      n0      o0      p0      q0      r0      s0      t0      u0      v0      w0      x0      y0      z0      {0      |0      }0      ~0      0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0       1      1      1      1      1      1      1      1      1      	1      
1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1       1      !1      "1      #1      $1      %1      &1      '1      (1      )1      *1      +1      ,1      -1      .1      /1      01      11      21      31      41      51      61      71      81      91      :1      ;1      <1      =1      >1      ?1      @1      A1      B1      C1      D1      E1      F1      G1      H1      I1      J1      K1      L1      M1      N1      O1      P1      Q1      R1      S1      T1      U1      V1      W1      X1      Y1      Z1      [1      \1      ]1      ^1      _1      `1      a1      b1      c1      d1      e1      f1      g1      h1      i1      j1      k1      l1      m1      n1      o1      p1      q1      r1      s1      t1      u1      v1      w1      x1      y1      z1      {1      |1      }1      ~1      1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1       2      2      2      2      2      2      2      2      2      	2      
2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2       2      !2      "2      #2      $2      %2      &2      '2      (2      )2      *2      +2      ,2      -2      .2      /2      02      12      22      32      42      52      62      72      82      92      :2      ;2      <2      =2      >2      ?2      @2      A2      B2      C2      D2      E2      F2      G2      H2      I2      J2      K2      L2      M2      N2      O2      P2      Q2      R2      S2      T2      U2      V2      W2      X2      Y2      Z2      [2      \2      ]2      ^2      _2      `2      a2      b2      c2      d2      e2      f2      g2      h2      i2      j2      k2      l2      m2      n2      o2      p2      q2      r2      s2      t2      u2      v2      w2      x2      y2      z2      {2      |2      }2      ~2      2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2       3      3      3      3      3      3      3      3      3      	3      
3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3       3      !3      "3      #3      $3      %3      &3      '3      (3      )3      *3      +3      ,3      -3      .3      /3      03      13      23      33      43      53      63      73      83      93      :3      ;3      <3      =3      >3      ?3      @3      A3      B3      C3      D3      E3      F3      G3      H3      I3      J3      K3      L3      M3      N3      O3      P3      Q3      R3      S3      T3      U3      V3      W3      X3      Y3      Z3      [3      \3      ]3      ^3      _3      `3      a3      b3      c3      d3      e3      f3      g3      h3      i3      j3      k3      l3      m3      n3      o3      p3      q3      r3      s3      t3      u3      v3      w3      x3      y3      z3      {3      |3      }3      ~3      3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3       4      4      4      4      4      4      4      4      4      	4      
4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4       4      !4      "4      #4      $4      %4      &4      '4      (4      )4      *4      +4      ,4      -4      .4      /4      04      14      24      34      44      54      64      74      84      94      :4      ;4      <4      =4      >4      ?4      @4      A4      B4      C4      D4      E4      F4      G4      H4      I4      J4      K4      L4      M4      N4      O4      P4      Q4      R4      S4      T4      U4      V4      W4      X4      Y4      Z4      [4      \4      ]4      ^4      _4      `4      a4      b4      c4      d4      e4      f4      g4      h4      i4      j4      k4      l4      m4      n4      o4      p4      q4      r4      s4      t4      u4      v4      w4      x4      y4      z4      {4      |4      }4      ~4      4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4       5      5      5      5      5      5      5      5      5      	5      
5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5       5      !5      "5      #5      $5      %5      &5      '5      (5      )5      *5      +5      ,5      -5      .5      /5      05      15      25      35      45      55      65      75      85      95      :5      ;5      <5      =5      >5      ?5      @5      A5      B5      C5      D5      E5      F5      G5      H5      I5      J5      K5      L5      M5      N5      O5      P5      Q5      R5      S5      T5      U5      V5      W5      X5      Y5      Z5      [5      \5      ]5      ^5      _5      `5      a5      b5      c5      d5      e5      f5      g5      h5      i5      j5      k5      l5      m5      n5      o5      p5      q5      r5      s5      t5      u5      v5      w5      x5      y5      z5      {5      |5      }5      ~5      5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5       6      6      6      6      6      6      6      6      6      	6      
6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6       6      !6      "6      #6      $6      %6      &6      '6      (6      )6      *6      +6      ,6      -6      .6      /6      06      16      26      36      46      56      66      76      86      96      :6      ;6      <6      =6      >6      ?6      @6      A6      B6      C6      D6      E6      F6      G6      H6      I6      J6      K6      L6      M6      N6      O6      P6      Q6      R6      S6      T6      U6      V6      W6      X6      Y6      Z6      [6      \6      ]6      ^6      _6      `6      a6      b6      c6      d6      e6      f6      g6      h6      i6      j6      k6      l6      m6      n6      o6      p6      q6      r6      s6      t6      u6      v6      w6      x6      y6      z6      {6      |6      }6      ~6      6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6       7      7      7      7      7      7      7      7      7      	7      
7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7       7      !7      "7      #7      $7      %7      &7      '7      (7      )7      *7      +7      ,7      -7      .7      /7      07      17      27      37      47      57      67      77      87      97      :7      ;7      <7      =7      >7      ?7      @7      A7      B7      C7      D7      E7      F7      G7      H7      I7      J7      K7      L7      M7      N7      O7      P7      Q7      R7      S7      T7      U7      V7      W7      X7      Y7      Z7      [7      \7      ]7      ^7      _7      `7      a7      b7      c7      d7      e7      f7      g7      h7      i7      j7      k7      l7      m7      n7      o7      p7      q7      r7      s7      t7      u7      v7      w7      x7      y7      z7      {7      |7      }7      ~7      7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7       8      8      8      8      8      8      8      8      8      	8      
8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8       8      !8      "8      #8      $8      %8      &8      '8      (8      )8      *8      +8      ,8      -8      .8      /8      08      18      28      38      48      58      68      78      88      98      :8      ;8      <8      =8      >8      ?8      @8      A8      B8      C8      D8      E8      F8      G8      H8      I8      J8      K8      L8      M8      N8      O8      P8      Q8      R8      S8      T8      U8      V8      W8      X8      Y8      Z8      [8      \8      ]8      ^8      _8      `8      a8      b8      c8      d8      e8      f8      g8      h8      i8      j8      k8      l8      m8      n8      o8      p8      q8      r8      s8      t8      u8      v8      w8      x8      y8      z8      {8      |8      }8      ~8      8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8       9      9      9      9      9      9      9      9      9      	9      
9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9       9      !9      "9      #9      $9      %9      &9      '9      (9      )9      *9      +9      ,9      -9      .9      /9      09      19      29      39      49      59      69      79      89      99      :9      ;9      <9      =9      >9      ?9      @9      A9      B9      C9      D9      E9      F9      G9      H9      I9      J9      K9      L9      M9      N9      O9      P9      Q9      R9      S9      T9      U9      V9      W9      X9      Y9      Z9      [9      \9      ]9      ^9      _9      `9      a9      b9      c9      d9      e9      f9      g9      h9      i9      j9      k9      l9      m9      n9      o9      p9      q9      r9      s9      t9      u9      v9      w9      x9      y9      z9      {9      |9      }9      ~9      9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9       :      :      :      :      :      :      :      :      :      	:      
:      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :       :      !:      ":      #:      $:      %:      &:      ':      (:      ):      *:      +:      ,:      -:      .:      /:      0:      1:      2:      3:      4:      5:      6:      7:      8:      9:      ::      ;:      <:      =:      >:      ?:      @:      A:      B:      C:      D:      E:      F:      G:      H:      I:      J:      K:      L:      M:      N:      O:      P:      Q:      R:      S:      T:      U:      V:      W:      X:      Y:      Z:      [:      \:      ]:      ^:      _:      `:      a:      b:      c:      d:      e:      f:      g:      h:      i:      j:      k:      l:      m:      n:      o:      p:      q:      r:      s:      t:      u:      v:      w:      x:      y:      z:      {:      |:      }:      ~:      :      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:       ;      ;      ;      ;      ;      ;      ;      ;      ;      	;      
;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;       ;      !;      ";      #;      $;      %;      &;      ';      (;      );      *;      +;      ,;      -;      .;      /;      0;      1;      2;      3;      4;      5;      6;      7;      8;      9;      :;      ;;      <;      =;      >;      ?;      @;      A;      B;      C;      D;      E;      F;      G;      H;      I;      J;      K;      L;      M;      N;      O;      P;      Q;      R;      S;      T;      U;      V;      W;      X;      Y;      Z;      [;      \;      ];      ^;      _;      `;      a;      b;      c;      d;      e;      f;      g;      h;      i;      j;      k;      l;      m;      n;      o;      p;      q;      r;      s;      t;      u;      v;      w;      x;      y;      z;      {;      |;      };      ~;      ;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;       <      <      <      <      <      <      <      <      <      	<      
<      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <       <      !<      "<      #<      $<      %<      &<      '<      (<      )<      *<      +<      ,<      -<      .<      /<      0<      1<      2<      3<      4<      5<      6<      7<      8<      9<      :<      ;<      <<      =<      ><      ?<      @<      A<      B<      C<      D<      E<      F<      G<      H<      I<      J<      K<      L<      M<      N<      O<      P<      Q<      R<      S<      T<      U<      V<      W<      X<      Y<      Z<      [<      \<      ]<      ^<      _<      `<      a<      b<      c<      d<      e<      f<      g<      h<      i<      j<      k<      l<      m<      n<      o<      p<      q<      r<      s<      t<      u<      v<      w<      x<      y<      z<      {<      |<      }<      ~<      <      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<       =      =      =      =      =      =      =      =      =      	=      
=      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =       =      !=      "=      #=      $=      %=      &=      '=      (=      )=      *=      +=      ,=      -=      .=      /=      0=      1=      2=      3=      4=      5=      6=      7=      8=      9=      :=      ;=      <=      ==      >=      ?=      @=      A=      B=      C=      D=      E=      F=      G=      H=      I=      J=      K=      L=      M=      N=      O=      P=      Q=      R=      S=      T=      U=      V=      W=      X=      Y=      Z=      [=      \=      ]=      ^=      _=      `=      a=      b=      c=      d=      e=      f=      g=      h=      i=      j=      k=      l=      m=      n=      o=      p=      q=      r=      s=      t=      u=      v=      w=      x=      y=      z=      {=      |=      }=      ~=      =      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=       >      >      >      >      >      >      >      >      >      	>      
>      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >       >      !>      ">      #>      $>      %>      &>      '>      (>      )>      *>      +>      ,>      ->      .>      />      0>      1>      2>      3>      4>      5>      6>      7>      8>      9>      :>      ;>      <>      =>      >>      ?>      @>      A>      B>      C>      D>      E>      F>      G>      H>      I>      J>      K>      L>      M>      N>      O>      P>      Q>      R>      S>      T>      U>      V>      W>      X>      Y>      Z>      [>      \>      ]>      ^>      _>      `>      a>      b>      c>      d>      e>      f>      g>      h>      i>      j>      k>      l>      m>      n>      o>      p>      q>      r>      s>      t>      u>      v>      w>      x>      y>      z>      {>      |>      }>      ~>      >      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>       ?      ?      ?      ?      ?      ?      ?      ?      ?      	?      
?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       ?      !?      "?      #?      $?      %?      &?      '?      (?      )?      *?      +?      ,?      -?      .?      /?      0?      1?      2?      3?      4?      5?      6?      7?      8?      9?      :?      ;?      <?      =?      >?      ??      @?      A?      B?      C?      D?      E?      F?      G?      H?      I?      J?      K?      L?      M?      N?      O?      P?      Q?      R?      S?      T?      U?      V?      W?      X?      Y?      Z?      [?      \?      ]?      ^?      _?      `?      a?      b?      c?      d?      e?      f?      g?      h?      i?      j?      k?      l?      m?      n?      o?      p?      q?      r?      s?      t?      u?      v?      w?      x?      y?      z?      {?      |?      }?      ~?      ?      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??       @      @      @      @      @      @      @      @      @      	@      
@      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      !@      "@      #@      $@      %@      &@      '@      (@      )@      *@      +@      ,@      -@      .@      /@      0@      1@      2@      3@      4@      5@      6@      7@      8@      9@      :@      ;@      <@      =@      >@      ?@      @@      A@      B@      C@      D@      E@      F@      G@      H@      I@      J@      K@      L@      M@      N@      O@      P@      Q@      R@      S@      T@      U@      V@      W@      X@      Y@      Z@      [@      \@      ]@      ^@      _@      `@      a@      b@      c@      d@      e@      f@      g@      h@      i@      j@      k@      l@      m@      n@      o@      p@      q@      r@      s@      t@      u@      v@      w@      x@      y@      z@      {@      |@      }@      ~@      @      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@       A      A      A      A      A      A      A      A      A      	A      
A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A       A      !A      "A      #A      $A      %A      &A      'A      (A      )A      *A      +A      ,A      -A      .A      /A      0A      1A      2A      3A      4A      5A      6A      7A      8A      9A      :A      ;A      <A      =A      >A      ?A      @A      AA      BA      CA      DA      EA      FA      GA      HA      IA      JA      KA      LA      MA      NA      OA      PA      QA      RA      SA      TA      UA      VA      WA      XA      YA      ZA      [A      \A      ]A      ^A      _A      `A      aA      bA      cA      dA      eA      fA      gA      hA      iA      jA      kA      lA      mA      nA      oA      pA      qA      rA      sA      tA      uA      vA      wA      xA      yA      zA      {A      |A      }A      ~A      A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A       B      B      B      B      B      B      B      B      B      	B      
B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B       B      !B      "B      #B      $B      %B      &B      'B      (B      )B      *B      +B      ,B      -B      .B      /B      0B      1B      2B      3B      4B      5B      6B      7B      8B      9B      :B      ;B      <B      =B      >B      ?B      @B      AB      BB      CB      DB      EB      FB      GB      HB      IB      JB      KB      LB      MB      NB      OB      PB      QB      RB      SB      TB      UB      VB      WB      XB      YB      ZB      [B      \B      ]B      ^B      _B      `B      aB      bB      cB      dB      eB      fB      gB      hB      iB      jB      kB      lB      mB      nB      oB      pB      qB      rB      sB      tB      uB      vB      wB      xB      yB      zB      {B      |B      }B      ~B      B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B       C      C      C      C      C      C      C      C      C      	C      
C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C       C      !C      "C      #C      $C      %C      &C      'C      (C      )C      *C      +C      ,C      -C      .C      /C      0C      1C      2C      3C      4C      5C      6C      7C      8C      9C      :C      ;C      <C      =C      >C      ?C      @C      AC      BC      CC      DC      EC      FC      GC      HC      IC      JC      KC      LC      MC      NC      OC      PC      QC      RC      SC      TC      UC      VC      WC      XC      YC      ZC      [C      \C      ]C      ^C      _C      `C      aC      bC      cC      dC      eC      fC      gC      hC      iC      jC      kC      lC      mC      nC      oC      pC      qC      rC      sC      tC      uC      vC      wC      xC      yC      zC      {C      |C      }C      ~C      C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C       D      D      D      D      D      D      D      D      D      	D      
D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D       D      !D      "D      #D      $D      %D      &D      'D      (D      )D      *D      +D      ,D      -D      .D      /D      0D      1D      2D      3D      4D      5D      6D      7D      8D      9D      :D      ;D      <D      =D      >D      ?D      @D      AD      BD      CD      DD      ED      FD      GD      HD      ID      JD      KD      LD      MD      ND      OD      PD      QD      RD      SD      TD      UD      VD      WD      XD      YD      ZD      [D      \D      ]D      ^D      _D      `D      aD      bD      cD      dD      eD      fD      gD      hD      iD      jD      kD      lD      mD      nD      oD      pD      qD      rD      sD      tD      uD      vD      wD      xD      yD      zD      {D      |D      }D      ~D      D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D       E      E      E      E      E      E      E      E      E      	E      
E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E       E      !E      "E      #E      $E      %E      &E      'E      (E      )E      *E      +E      ,E      -E      .E      /E      0E      1E      2E      3E      4E      5E      6E      7E      8E      9E      :E      ;E      <E      =E      >E      ?E      @E      AE      BE      CE      DE      EE      FE      GE      HE      IE      JE      KE      LE      ME      NE      OE      PE      QE      RE      SE      TE      UE      VE      WE      XE      YE      ZE      [E      \E      ]E      ^E      _E      `E      aE      bE      cE      dE      eE      fE      gE      hE      iE      jE      kE      lE      mE      nE      oE      pE      qE      rE      sE      tE      uE      vE      wE      xE      yE      zE      {E      |E      }E      ~E      E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E       F      F      F      F      F      F      F      F      F      	F      
F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F       F      !F      "F      #F      $F      %F      &F      'F      (F      )F      *F      +F      ,F      -F      .F      /F      0F      1F      2F      3F      4F      5F      6F      7F      8F      9F      :F      ;F      <F      =F      >F      ?F      @F      AF      BF      CF      DF      EF      FF      GF      HF      IF      JF      KF      LF      MF      NF      OF      PF      QF      RF      SF      TF      UF      VF      WF      XF      YF      ZF      [F      \F      ]F      ^F      _F      `F      aF      bF      cF      dF      eF      fF      gF      hF      iF      jF      kF      lF      mF      nF      oF      pF      qF      rF      sF      tF      uF      vF      wF      xF      yF      zF      {F      |F      }F      ~F      F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F       G      G      G      G      G      G      G      G      G      	G      
G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G       G      !G      "G      #G      $G      %G      &G      'G      (G      )G      *G      +G      ,G      -G      .G      /G      0G      1G      2G      3G      4G      5G      6G      7G      8G      9G      :G      ;G      <G      =G      >G      ?G      @G      AG      BG      CG      DG      EG      FG      GG      HG      IG      JG      KG      LG      MG      NG      OG      PG      QG      RG      SG      TG      UG      VG      WG      XG      YG      ZG      [G      \G      ]G      ^G      _G      `G      aG      bG      cG      dG      eG      fG      gG      hG      iG      jG      kG      lG      mG      nG      oG      pG      qG      rG      sG      tG      uG      vG      wG      xG      yG      zG      {G      |G      }G      ~G      G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G       H      H      H      H      H      H      H      H      H      	H      
H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H       H      !H      "H      #H      $H      %H      &H      'H      (H      )H      *H      +H      ,H      -H      .H      /H      0H      1H      2H      3H      4H      5H      6H      7H      8H      9H      :H      ;H      <H      =H      >H      ?H      @H      AH      BH      CH      DH      EH      FH      GH      HH      IH      JH      KH      LH      MH      NH      OH      PH      QH      RH      SH      TH      UH      VH      WH      XH      YH      ZH      [H      \H      ]H      ^H      _H      `H      aH      bH      cH      dH      eH      fH      gH      hH      iH      jH      kH      lH      mH      nH      oH      pH      qH      rH      sH      tH      uH      vH      wH      xH      yH      zH      {H      |H      }H      ~H      H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H       I      I      I      I      I      I      I      I      I      	I      
I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I       I      !I      "I      #I      $I      %I      &I      'I      (I      )I      *I      +I      ,I      -I      .I      /I      0I      1I      2I      3I      4I      5I      6I      7I      8I      9I      :I      ;I      <I      =I      >I      ?I      @I      AI      BI      CI      DI      EI      FI      GI      HI      II      JI      KI      LI      MI      NI      OI      PI      QI      RI      SI      TI      UI      VI      WI      XI      YI      ZI      [I      \I      ]I      ^I      _I      `I      aI      bI      cI      dI      eI      fI      gI      hI      iI      jI      kI      lI      mI      nI      oI      pI      qI      rI      sI      tI      uI      vI      wI      xI      yI      zI      {I      |I      }I      ~I      I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I       J      J      J      J      J      J      J      J      J      	J      
J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J       J      !J      "J      #J      $J      %J      &J      'J      (J      )J      *J      +J      ,J      -J      .J      /J      0J      1J      2J      3J      4J      5J      6J      7J      8J      9J      :J      ;J      <J      =J      >J      ?J      @J      AJ      BJ      CJ      DJ      EJ      FJ      GJ      HJ      IJ      JJ      KJ      LJ      MJ      NJ      OJ      PJ      QJ      RJ      SJ      TJ      UJ      VJ      WJ      XJ      YJ      ZJ      [J      \J      ]J      ^J      _J      `J      aJ      bJ      cJ      dJ      eJ      fJ      gJ      hJ      iJ      jJ      kJ      lJ      mJ      nJ      oJ      pJ      qJ      rJ      sJ      tJ      uJ      vJ      wJ      xJ      yJ      zJ      {J      |J      }J      ~J      J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J       K      K      K      K      K      K      K      K      K      	K      
K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K       K      !K      "K      #K      $K      %K      &K      'K      (K      )K      *K      +K      ,K      -K      .K      /K      0K      1K      2K      3K      4K      5K      6K      7K      8K      9K      :K      ;K      <K      =K      >K      ?K      @K      AK      BK      CK      DK      EK      FK      GK      HK      IK      JK      KK      LK      MK      NK      OK      PK      QK      RK      SK      TK      UK      VK      WK      XK      YK      ZK      [K      \K      ]K      ^K      _K      `K      aK      bK      cK      dK      eK      fK      gK      hK      iK      jK      kK      lK      mK      nK      oK      pK      qK      rK      sK      tK      uK      vK      wK      xK      yK      zK      {K      |K      }K      ~K      K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K       L      L      L      L      L      L      L      L      L      	L      
L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L       L      !L      "L      #L      $L      %L      &L      'L      (L      )L      *L      +L      ,L      -L      .L      /L      0L      1L      2L      3L      4L      5L      6L      7L      8L      9L      :L      ;L      <L      =L      >L      ?L      @L      AL      BL      CL      DL      EL      FL      GL      HL      IL      JL      KL      LL      ML      NL      OL      PL      QL      RL      SL      TL      UL      VL      WL      XL      YL      ZL      [L      \L      ]L      ^L      _L      `L      aL      bL      cL      dL      eL      fL      gL      hL      iL      jL      kL      lL      mL      nL      oL      pL      qL      rL      sL      tL      uL      vL      wL      xL      yL      zL      {L      |L      }L      ~L      L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L       M      M      M      M      M      M      M      M      M      	M      
M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M       M      !M      "M      #M      $M      %M      &M      'M      (M      )M      *M      +M      ,M      -M      .M      /M      0M      1M      2M      3M      4M      5M      6M      7M      8M      9M      :M      ;M      <M      =M      >M      ?M      @M      AM      BM      CM      DM      EM      FM      GM      HM      IM      JM      KM      LM      MM      NM      OM      PM      QM      RM      SM      TM      UM      VM      WM      XM      YM      ZM      [M      \M      ]M      ^M      _M      `M      aM      bM      cM      dM      eM      fM      gM      hM      iM      jM      kM      lM      mM      nM      oM      pM      qM      rM      sM      tM      uM      vM      wM      xM      yM      zM      {M      |M      }M      ~M      M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M       N      N      N      N      N      N      N      N      N      	N      
N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference_<lambda>_50085
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference_<lambda>_50090
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?]
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?]
value?]B?] B?\
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
;
_lookup_layer
	keras_api
_adapt_function*
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$_random_generator
%__call__
*&&call_and_return_all_conditional_losses* 
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses*
?
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses* 
?

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses*
?

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses*
?
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 
?
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O_random_generator
P__call__
*Q&call_and_return_all_conditional_losses* 
?

Rkernel
Sbias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses*
?

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses*
?
biter

cbeta_1

dbeta_2
	edecay
flearning_ratem?'m?(m?5m?6m?=m?>m?Rm?Sm?Zm?[m?v?'v?(v?5v?6v?=v?>v?Rv?Sv?Zv?[v?*
S
1
'2
(3
54
65
=6
>7
R8
S9
Z10
[11*
R
0
'1
(2
53
64
=5
>6
R7
S8
Z9
[10*
* 
?
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

lserving_default* 
7
mlookup_table
ntoken_counts
o	keras_api*
* 
* 
ke
VARIABLE_VALUEembedding_11/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
 	variables
!trainable_variables
"regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEconv1d_28/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_28/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

'0
(1*

'0
(1*
* 
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv1d_29/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_29/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

50
61*

50
61*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_22/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

=0
>1*

=0
>1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_23/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

R0
S1*

R0
S1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*
* 
* 
b\
VARIABLE_VALUEpredictions/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEpredictions/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

Z0
[1*

Z0
[1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
Z
0
1
2
3
4
5
6
7
	8

9
10
11*

?0
?1*
* 
* 
* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
?
?_create_resource
?_initialize
?_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

?total

?count
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
??
VARIABLE_VALUEAdam/embedding_11/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv1d_28/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv1d_28/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv1d_29/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv1d_29/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_22/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_22/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_23/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_23/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?
VARIABLE_VALUEAdam/predictions/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/predictions/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/embedding_11/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv1d_28/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv1d_28/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv1d_29/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv1d_29/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_22/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_22/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_23/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_23/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
VARIABLE_VALUEAdam/predictions/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/predictions/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
serving_default_input_13Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_13
hash_tableConstConst_1Const_2embedding_11/embeddingsconv1d_28/kernelconv1d_28/biasconv1d_29/kernelconv1d_29/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/biaspredictions/kernelpredictions/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_49745
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename+embedding_11/embeddings/Read/ReadVariableOp$conv1d_28/kernel/Read/ReadVariableOp"conv1d_28/bias/Read/ReadVariableOp$conv1d_29/kernel/Read/ReadVariableOp"conv1d_29/bias/Read/ReadVariableOp#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOp&predictions/kernel/Read/ReadVariableOp$predictions/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp2Adam/embedding_11/embeddings/m/Read/ReadVariableOp+Adam/conv1d_28/kernel/m/Read/ReadVariableOp)Adam/conv1d_28/bias/m/Read/ReadVariableOp+Adam/conv1d_29/kernel/m/Read/ReadVariableOp)Adam/conv1d_29/bias/m/Read/ReadVariableOp*Adam/dense_22/kernel/m/Read/ReadVariableOp(Adam/dense_22/bias/m/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOp-Adam/predictions/kernel/m/Read/ReadVariableOp+Adam/predictions/bias/m/Read/ReadVariableOp2Adam/embedding_11/embeddings/v/Read/ReadVariableOp+Adam/conv1d_28/kernel/v/Read/ReadVariableOp)Adam/conv1d_28/bias/v/Read/ReadVariableOp+Adam/conv1d_29/kernel/v/Read/ReadVariableOp)Adam/conv1d_29/bias/v/Read/ReadVariableOp*Adam/dense_22/kernel/v/Read/ReadVariableOp(Adam/dense_22/bias/v/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOp-Adam/predictions/kernel/v/Read/ReadVariableOp+Adam/predictions/bias/v/Read/ReadVariableOpConst_6*9
Tin2
02.		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_50253
?	
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding_11/embeddingsconv1d_28/kernelconv1d_28/biasconv1d_29/kernelconv1d_29/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/biaspredictions/kernelpredictions/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateMutableHashTabletotalcounttotal_1count_1Adam/embedding_11/embeddings/mAdam/conv1d_28/kernel/mAdam/conv1d_28/bias/mAdam/conv1d_29/kernel/mAdam/conv1d_29/bias/mAdam/dense_22/kernel/mAdam/dense_22/bias/mAdam/dense_23/kernel/mAdam/dense_23/bias/mAdam/predictions/kernel/mAdam/predictions/bias/mAdam/embedding_11/embeddings/vAdam/conv1d_28/kernel/vAdam/conv1d_28/bias/vAdam/conv1d_29/kernel/vAdam/conv1d_29/bias/vAdam/dense_22/kernel/vAdam/dense_22/bias/vAdam/dense_23/kernel/vAdam/dense_23/bias/vAdam/predictions/kernel/vAdam/predictions/bias/v*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_50392??
?
?
D__inference_conv1d_29_layer_call_and_return_conditional_losses_48778

inputsB
+conv1d_expanddims_1_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????b??
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?@?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????\@*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????\@*
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????\@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????\@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????\@?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????b?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????b?
 
_user_specified_nameinputs
?
,
__inference__destroyer_50035
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
(__inference_model_11_layer_call_fn_48897
input_13
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
??@ 
	unknown_4:@?
	unknown_5:	? 
	unknown_6:?@
	unknown_7:@
	unknown_8:@@
	unknown_9:@

unknown_10:@

unknown_11:

unknown_12:

unknown_13:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_11_layer_call_and_return_conditional_losses_48864o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_13:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
C__inference_dense_23_layer_call_and_return_conditional_losses_48840

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
F
*__inference_dropout_18_layer_call_fn_49814

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_48737e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?

d
E__inference_dropout_18_layer_call_and_return_conditional_losses_49836

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????@t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????@n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????@^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?

?
F__inference_predictions_layer_call_and_return_conditional_losses_48857

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_dense_22_layer_call_fn_49908

inputs
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????\@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_48815s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????\@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????\@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????\@
 
_user_specified_nameinputs
?
?
C__inference_dense_22_layer_call_and_return_conditional_losses_49939

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????\@?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????\@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????\@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????\@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????\@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????\@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????\@
 
_user_specified_nameinputs
?
?
D__inference_conv1d_28_layer_call_and_return_conditional_losses_48755

inputsB
+conv1d_expanddims_1_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:@?*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:@??
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
(__inference_model_11_layer_call_fn_49434

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
??@ 
	unknown_4:@?
	unknown_5:	? 
	unknown_6:?@
	unknown_7:@
	unknown_8:@@
	unknown_9:@

unknown_10:@

unknown_11:

unknown_12:

unknown_13:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_11_layer_call_and_return_conditional_losses_49122o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_conv1d_28_layer_call_fn_49845

inputs
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_28_layer_call_and_return_conditional_losses_48755u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
__inference_save_fn_50069
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
?
D__inference_conv1d_28_layer_call_and_return_conditional_losses_49861

inputsB
+conv1d_expanddims_1_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:@?*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:@??
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:????????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
c
*__inference_dropout_18_layer_call_fn_49819

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_48990t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????@22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
g
K__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_48648

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+????????????????????????????
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv1d_29_layer_call_and_return_conditional_losses_49899

inputsB
+conv1d_expanddims_1_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????b??
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?@?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????\@*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????\@*
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????\@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????\@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????\@?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????b?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????b?
 
_user_specified_nameinputs
?
c
E__inference_dropout_19_layer_call_and_return_conditional_losses_48827

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
C__inference_model_11_layer_call_and_return_conditional_losses_49274
input_13S
Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handleT
Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value	0
,text_vectorization_2_string_lookup_2_equal_y3
/text_vectorization_2_string_lookup_2_selectv2_t	&
embedding_11_49241:
??@&
conv1d_28_49245:@?
conv1d_28_49247:	?&
conv1d_29_49251:?@
conv1d_29_49253:@ 
dense_22_49256:@@
dense_22_49258:@ 
dense_23_49263:@
dense_23_49265:#
predictions_49268:
predictions_49270:
identity??!conv1d_28/StatefulPartitionedCall?!conv1d_29/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?$embedding_11/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2b
 text_vectorization_2/StringLowerStringLowerinput_13*'
_output_shapes
:??????????
'text_vectorization_2/StaticRegexReplaceStaticRegexReplace)text_vectorization_2/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_2/SqueezeSqueeze0text_vectorization_2/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_2/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_2/StringSplit/StringSplitV2StringSplitV2%text_vectorization_2/Squeeze:output:0/text_vectorization_2/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_2/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_2/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_2/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_2/StringSplit/strided_sliceStridedSlice8text_vectorization_2/StringSplit/StringSplitV2:indices:0=text_vectorization_2/StringSplit/strided_slice/stack:output:0?text_vectorization_2/StringSplit/strided_slice/stack_1:output:0?text_vectorization_2/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_2/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_2/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_2/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_2/StringSplit/strided_slice_1StridedSlice6text_vectorization_2/StringSplit/StringSplitV2:shape:0?text_vectorization_2/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_2/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_2/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handle7text_vectorization_2/StringSplit/StringSplitV2:values:0Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_2/string_lookup_2/EqualEqual7text_vectorization_2/StringSplit/StringSplitV2:values:0,text_vectorization_2_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_2/string_lookup_2/SelectV2SelectV2.text_vectorization_2/string_lookup_2/Equal:z:0/text_vectorization_2_string_lookup_2_selectv2_tKtext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_2/string_lookup_2/IdentityIdentity6text_vectorization_2/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_2/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_2/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
8text_vectorization_2/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_2/RaggedToTensor/Const:output:06text_vectorization_2/string_lookup_2/Identity:output:0:text_vectorization_2/RaggedToTensor/default_value:output:09text_vectorization_2/StringSplit/strided_slice_1:output:07text_vectorization_2/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_2/RaggedToTensor/RaggedTensorToTensor:result:0embedding_11_49241*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_11_layer_call_and_return_conditional_losses_48728?
dropout_18/PartitionedCallPartitionedCall-embedding_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_48737?
!conv1d_28/StatefulPartitionedCallStatefulPartitionedCall#dropout_18/PartitionedCall:output:0conv1d_28_49245conv1d_28_49247*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_28_layer_call_and_return_conditional_losses_48755?
 max_pooling1d_11/PartitionedCallPartitionedCall*conv1d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????b?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_48648?
!conv1d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_11/PartitionedCall:output:0conv1d_29_49251conv1d_29_49253*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????\@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_29_layer_call_and_return_conditional_losses_48778?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall*conv1d_29/StatefulPartitionedCall:output:0dense_22_49256dense_22_49258*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????\@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_48815?
'global_max_pooling1d_11/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_max_pooling1d_11_layer_call_and_return_conditional_losses_48661?
dropout_19/PartitionedCallPartitionedCall0global_max_pooling1d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_48827?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_23_49263dense_23_49265*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_48840?
#predictions/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0predictions_49268predictions_49270*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_predictions_layer_call_and_return_conditional_losses_48857{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv1d_28/StatefulPartitionedCall"^conv1d_29/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall%^embedding_11/StatefulPartitionedCall$^predictions/StatefulPartitionedCallC^text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : : : 2F
!conv1d_28/StatefulPartitionedCall!conv1d_28/StatefulPartitionedCall2F
!conv1d_29/StatefulPartitionedCall!conv1d_29/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall2?
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_13:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
*
__inference_<lambda>_50090
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
c
E__inference_dropout_18_layer_call_and_return_conditional_losses_49824

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????@`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
(__inference_model_11_layer_call_fn_49190
input_13
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
??@ 
	unknown_4:@?
	unknown_5:	? 
	unknown_6:?@
	unknown_7:@
	unknown_8:@@
	unknown_9:@

unknown_10:@

unknown_11:

unknown_12:

unknown_13:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_11_layer_call_and_return_conditional_losses_49122o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_13:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?C
?
__inference_adapt_step_49793
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:?????????*"
output_shapes
:?????????*
output_types
2]
StringLowerStringLowerIteratorGetNext:components:0*#
_output_shapes
:??????????
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
??
?
C__inference_model_11_layer_call_and_return_conditional_losses_48864

inputsS
Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handleT
Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value	0
,text_vectorization_2_string_lookup_2_equal_y3
/text_vectorization_2_string_lookup_2_selectv2_t	&
embedding_11_48729:
??@&
conv1d_28_48756:@?
conv1d_28_48758:	?&
conv1d_29_48779:?@
conv1d_29_48781:@ 
dense_22_48816:@@
dense_22_48818:@ 
dense_23_48841:@
dense_23_48843:#
predictions_48858:
predictions_48860:
identity??!conv1d_28/StatefulPartitionedCall?!conv1d_29/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?$embedding_11/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2`
 text_vectorization_2/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_2/StaticRegexReplaceStaticRegexReplace)text_vectorization_2/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_2/SqueezeSqueeze0text_vectorization_2/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_2/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_2/StringSplit/StringSplitV2StringSplitV2%text_vectorization_2/Squeeze:output:0/text_vectorization_2/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_2/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_2/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_2/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_2/StringSplit/strided_sliceStridedSlice8text_vectorization_2/StringSplit/StringSplitV2:indices:0=text_vectorization_2/StringSplit/strided_slice/stack:output:0?text_vectorization_2/StringSplit/strided_slice/stack_1:output:0?text_vectorization_2/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_2/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_2/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_2/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_2/StringSplit/strided_slice_1StridedSlice6text_vectorization_2/StringSplit/StringSplitV2:shape:0?text_vectorization_2/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_2/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_2/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handle7text_vectorization_2/StringSplit/StringSplitV2:values:0Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_2/string_lookup_2/EqualEqual7text_vectorization_2/StringSplit/StringSplitV2:values:0,text_vectorization_2_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_2/string_lookup_2/SelectV2SelectV2.text_vectorization_2/string_lookup_2/Equal:z:0/text_vectorization_2_string_lookup_2_selectv2_tKtext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_2/string_lookup_2/IdentityIdentity6text_vectorization_2/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_2/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_2/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
8text_vectorization_2/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_2/RaggedToTensor/Const:output:06text_vectorization_2/string_lookup_2/Identity:output:0:text_vectorization_2/RaggedToTensor/default_value:output:09text_vectorization_2/StringSplit/strided_slice_1:output:07text_vectorization_2/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_2/RaggedToTensor/RaggedTensorToTensor:result:0embedding_11_48729*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_11_layer_call_and_return_conditional_losses_48728?
dropout_18/PartitionedCallPartitionedCall-embedding_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_48737?
!conv1d_28/StatefulPartitionedCallStatefulPartitionedCall#dropout_18/PartitionedCall:output:0conv1d_28_48756conv1d_28_48758*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_28_layer_call_and_return_conditional_losses_48755?
 max_pooling1d_11/PartitionedCallPartitionedCall*conv1d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????b?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_48648?
!conv1d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_11/PartitionedCall:output:0conv1d_29_48779conv1d_29_48781*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????\@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_29_layer_call_and_return_conditional_losses_48778?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall*conv1d_29/StatefulPartitionedCall:output:0dense_22_48816dense_22_48818*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????\@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_48815?
'global_max_pooling1d_11/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_max_pooling1d_11_layer_call_and_return_conditional_losses_48661?
dropout_19/PartitionedCallPartitionedCall0global_max_pooling1d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_48827?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_23_48841dense_23_48843*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_48840?
#predictions/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0predictions_48858predictions_48860*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_predictions_layer_call_and_return_conditional_losses_48857{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv1d_28/StatefulPartitionedCall"^conv1d_29/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall%^embedding_11/StatefulPartitionedCall$^predictions/StatefulPartitionedCallC^text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : : : 2F
!conv1d_28/StatefulPartitionedCall!conv1d_28/StatefulPartitionedCall2F
!conv1d_29/StatefulPartitionedCall!conv1d_29/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall2?
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
S
7__inference_global_max_pooling1d_11_layer_call_fn_49944

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_max_pooling1d_11_layer_call_and_return_conditional_losses_48661i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
n
R__inference_global_max_pooling1d_11_layer_call_and_return_conditional_losses_49950

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_conv1d_29_layer_call_fn_49883

inputs
unknown:?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????\@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_29_layer_call_and_return_conditional_losses_48778s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????\@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????b?: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????b?
 
_user_specified_nameinputs
?
F
*__inference_dropout_19_layer_call_fn_49955

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_48827`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_48636
input_13\
Xmodel_11_text_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handle]
Ymodel_11_text_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value	9
5model_11_text_vectorization_2_string_lookup_2_equal_y<
8model_11_text_vectorization_2_string_lookup_2_selectv2_t	@
,model_11_embedding_11_embedding_lookup_48557:
??@U
>model_11_conv1d_28_conv1d_expanddims_1_readvariableop_resource:@?A
2model_11_conv1d_28_biasadd_readvariableop_resource:	?U
>model_11_conv1d_29_conv1d_expanddims_1_readvariableop_resource:?@@
2model_11_conv1d_29_biasadd_readvariableop_resource:@E
3model_11_dense_22_tensordot_readvariableop_resource:@@?
1model_11_dense_22_biasadd_readvariableop_resource:@B
0model_11_dense_23_matmul_readvariableop_resource:@?
1model_11_dense_23_biasadd_readvariableop_resource:E
3model_11_predictions_matmul_readvariableop_resource:B
4model_11_predictions_biasadd_readvariableop_resource:
identity??)model_11/conv1d_28/BiasAdd/ReadVariableOp?5model_11/conv1d_28/Conv1D/ExpandDims_1/ReadVariableOp?)model_11/conv1d_29/BiasAdd/ReadVariableOp?5model_11/conv1d_29/Conv1D/ExpandDims_1/ReadVariableOp?(model_11/dense_22/BiasAdd/ReadVariableOp?*model_11/dense_22/Tensordot/ReadVariableOp?(model_11/dense_23/BiasAdd/ReadVariableOp?'model_11/dense_23/MatMul/ReadVariableOp?&model_11/embedding_11/embedding_lookup?+model_11/predictions/BiasAdd/ReadVariableOp?*model_11/predictions/MatMul/ReadVariableOp?Kmodel_11/text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2k
)model_11/text_vectorization_2/StringLowerStringLowerinput_13*'
_output_shapes
:??????????
0model_11/text_vectorization_2/StaticRegexReplaceStaticRegexReplace2model_11/text_vectorization_2/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
%model_11/text_vectorization_2/SqueezeSqueeze9model_11/text_vectorization_2/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????p
/model_11/text_vectorization_2/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
7model_11/text_vectorization_2/StringSplit/StringSplitV2StringSplitV2.model_11/text_vectorization_2/Squeeze:output:08model_11/text_vectorization_2/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
=model_11/text_vectorization_2/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
?model_11/text_vectorization_2/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
?model_11/text_vectorization_2/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
7model_11/text_vectorization_2/StringSplit/strided_sliceStridedSliceAmodel_11/text_vectorization_2/StringSplit/StringSplitV2:indices:0Fmodel_11/text_vectorization_2/StringSplit/strided_slice/stack:output:0Hmodel_11/text_vectorization_2/StringSplit/strided_slice/stack_1:output:0Hmodel_11/text_vectorization_2/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
?model_11/text_vectorization_2/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Amodel_11/text_vectorization_2/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Amodel_11/text_vectorization_2/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9model_11/text_vectorization_2/StringSplit/strided_slice_1StridedSlice?model_11/text_vectorization_2/StringSplit/StringSplitV2:shape:0Hmodel_11/text_vectorization_2/StringSplit/strided_slice_1/stack:output:0Jmodel_11/text_vectorization_2/StringSplit/strided_slice_1/stack_1:output:0Jmodel_11/text_vectorization_2/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
`model_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast@model_11/text_vectorization_2/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
bmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastBmodel_11/text_vectorization_2/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
jmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapedmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
jmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
imodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdsmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0smodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
nmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
lmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterrmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0wmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
imodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastpmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
lmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
hmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxdmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0umodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
jmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
hmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2qmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0smodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
hmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulmmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0lmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
lmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumfmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0lmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
lmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumfmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0pmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
lmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
mmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountdmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0pmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0umodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
gmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
bmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumtmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0pmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
kmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
gmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
bmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2tmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0hmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0pmodel_11/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Kmodel_11/text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Xmodel_11_text_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handle@model_11/text_vectorization_2/StringSplit/StringSplitV2:values:0Ymodel_11_text_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
3model_11/text_vectorization_2/string_lookup_2/EqualEqual@model_11/text_vectorization_2/StringSplit/StringSplitV2:values:05model_11_text_vectorization_2_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
6model_11/text_vectorization_2/string_lookup_2/SelectV2SelectV27model_11/text_vectorization_2/string_lookup_2/Equal:z:08model_11_text_vectorization_2_string_lookup_2_selectv2_tTmodel_11/text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
6model_11/text_vectorization_2/string_lookup_2/IdentityIdentity?model_11/text_vectorization_2/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:?????????|
:model_11/text_vectorization_2/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
2model_11/text_vectorization_2/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
Amodel_11/text_vectorization_2/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor;model_11/text_vectorization_2/RaggedToTensor/Const:output:0?model_11/text_vectorization_2/string_lookup_2/Identity:output:0Cmodel_11/text_vectorization_2/RaggedToTensor/default_value:output:0Bmodel_11/text_vectorization_2/StringSplit/strided_slice_1:output:0@model_11/text_vectorization_2/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
&model_11/embedding_11/embedding_lookupResourceGather,model_11_embedding_11_embedding_lookup_48557Jmodel_11/text_vectorization_2/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*?
_class5
31loc:@model_11/embedding_11/embedding_lookup/48557*,
_output_shapes
:??????????@*
dtype0?
/model_11/embedding_11/embedding_lookup/IdentityIdentity/model_11/embedding_11/embedding_lookup:output:0*
T0*?
_class5
31loc:@model_11/embedding_11/embedding_lookup/48557*,
_output_shapes
:??????????@?
1model_11/embedding_11/embedding_lookup/Identity_1Identity8model_11/embedding_11/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@?
model_11/dropout_18/IdentityIdentity:model_11/embedding_11/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:??????????@s
(model_11/conv1d_28/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$model_11/conv1d_28/Conv1D/ExpandDims
ExpandDims%model_11/dropout_18/Identity:output:01model_11/conv1d_28/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@?
5model_11/conv1d_28/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp>model_11_conv1d_28_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:@?*
dtype0l
*model_11/conv1d_28/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
&model_11/conv1d_28/Conv1D/ExpandDims_1
ExpandDims=model_11/conv1d_28/Conv1D/ExpandDims_1/ReadVariableOp:value:03model_11/conv1d_28/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:@??
model_11/conv1d_28/Conv1DConv2D-model_11/conv1d_28/Conv1D/ExpandDims:output:0/model_11/conv1d_28/Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
?
!model_11/conv1d_28/Conv1D/SqueezeSqueeze"model_11/conv1d_28/Conv1D:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

??????????
)model_11/conv1d_28/BiasAdd/ReadVariableOpReadVariableOp2model_11_conv1d_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_11/conv1d_28/BiasAddBiasAdd*model_11/conv1d_28/Conv1D/Squeeze:output:01model_11/conv1d_28/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????|
model_11/conv1d_28/ReluRelu#model_11/conv1d_28/BiasAdd:output:0*
T0*-
_output_shapes
:???????????j
(model_11/max_pooling1d_11/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
$model_11/max_pooling1d_11/ExpandDims
ExpandDims%model_11/conv1d_28/Relu:activations:01model_11/max_pooling1d_11/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
!model_11/max_pooling1d_11/MaxPoolMaxPool-model_11/max_pooling1d_11/ExpandDims:output:0*0
_output_shapes
:?????????b?*
ksize
*
paddingVALID*
strides
?
!model_11/max_pooling1d_11/SqueezeSqueeze*model_11/max_pooling1d_11/MaxPool:output:0*
T0*,
_output_shapes
:?????????b?*
squeeze_dims
s
(model_11/conv1d_29/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$model_11/conv1d_29/Conv1D/ExpandDims
ExpandDims*model_11/max_pooling1d_11/Squeeze:output:01model_11/conv1d_29/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????b??
5model_11/conv1d_29/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp>model_11_conv1d_29_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?@*
dtype0l
*model_11/conv1d_29/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
&model_11/conv1d_29/Conv1D/ExpandDims_1
ExpandDims=model_11/conv1d_29/Conv1D/ExpandDims_1/ReadVariableOp:value:03model_11/conv1d_29/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?@?
model_11/conv1d_29/Conv1DConv2D-model_11/conv1d_29/Conv1D/ExpandDims:output:0/model_11/conv1d_29/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????\@*
paddingVALID*
strides
?
!model_11/conv1d_29/Conv1D/SqueezeSqueeze"model_11/conv1d_29/Conv1D:output:0*
T0*+
_output_shapes
:?????????\@*
squeeze_dims

??????????
)model_11/conv1d_29/BiasAdd/ReadVariableOpReadVariableOp2model_11_conv1d_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_11/conv1d_29/BiasAddBiasAdd*model_11/conv1d_29/Conv1D/Squeeze:output:01model_11/conv1d_29/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????\@z
model_11/conv1d_29/ReluRelu#model_11/conv1d_29/BiasAdd:output:0*
T0*+
_output_shapes
:?????????\@?
*model_11/dense_22/Tensordot/ReadVariableOpReadVariableOp3model_11_dense_22_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0j
 model_11/dense_22/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 model_11/dense_22/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       v
!model_11/dense_22/Tensordot/ShapeShape%model_11/conv1d_29/Relu:activations:0*
T0*
_output_shapes
:k
)model_11/dense_22/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
$model_11/dense_22/Tensordot/GatherV2GatherV2*model_11/dense_22/Tensordot/Shape:output:0)model_11/dense_22/Tensordot/free:output:02model_11/dense_22/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+model_11/dense_22/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&model_11/dense_22/Tensordot/GatherV2_1GatherV2*model_11/dense_22/Tensordot/Shape:output:0)model_11/dense_22/Tensordot/axes:output:04model_11/dense_22/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!model_11/dense_22/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
 model_11/dense_22/Tensordot/ProdProd-model_11/dense_22/Tensordot/GatherV2:output:0*model_11/dense_22/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#model_11/dense_22/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
"model_11/dense_22/Tensordot/Prod_1Prod/model_11/dense_22/Tensordot/GatherV2_1:output:0,model_11/dense_22/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'model_11/dense_22/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
"model_11/dense_22/Tensordot/concatConcatV2)model_11/dense_22/Tensordot/free:output:0)model_11/dense_22/Tensordot/axes:output:00model_11/dense_22/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
!model_11/dense_22/Tensordot/stackPack)model_11/dense_22/Tensordot/Prod:output:0+model_11/dense_22/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
%model_11/dense_22/Tensordot/transpose	Transpose%model_11/conv1d_29/Relu:activations:0+model_11/dense_22/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????\@?
#model_11/dense_22/Tensordot/ReshapeReshape)model_11/dense_22/Tensordot/transpose:y:0*model_11/dense_22/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
"model_11/dense_22/Tensordot/MatMulMatMul,model_11/dense_22/Tensordot/Reshape:output:02model_11/dense_22/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@m
#model_11/dense_22/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@k
)model_11/dense_22/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
$model_11/dense_22/Tensordot/concat_1ConcatV2-model_11/dense_22/Tensordot/GatherV2:output:0,model_11/dense_22/Tensordot/Const_2:output:02model_11/dense_22/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
model_11/dense_22/TensordotReshape,model_11/dense_22/Tensordot/MatMul:product:0-model_11/dense_22/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????\@?
(model_11/dense_22/BiasAdd/ReadVariableOpReadVariableOp1model_11_dense_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_11/dense_22/BiasAddBiasAdd$model_11/dense_22/Tensordot:output:00model_11/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????\@x
model_11/dense_22/ReluRelu"model_11/dense_22/BiasAdd:output:0*
T0*+
_output_shapes
:?????????\@x
6model_11/global_max_pooling1d_11/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
$model_11/global_max_pooling1d_11/MaxMax$model_11/dense_22/Relu:activations:0?model_11/global_max_pooling1d_11/Max/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@?
model_11/dropout_19/IdentityIdentity-model_11/global_max_pooling1d_11/Max:output:0*
T0*'
_output_shapes
:?????????@?
'model_11/dense_23/MatMul/ReadVariableOpReadVariableOp0model_11_dense_23_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
model_11/dense_23/MatMulMatMul%model_11/dropout_19/Identity:output:0/model_11/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(model_11/dense_23/BiasAdd/ReadVariableOpReadVariableOp1model_11_dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_11/dense_23/BiasAddBiasAdd"model_11/dense_23/MatMul:product:00model_11/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z
model_11/dense_23/SoftmaxSoftmax"model_11/dense_23/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
*model_11/predictions/MatMul/ReadVariableOpReadVariableOp3model_11_predictions_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
model_11/predictions/MatMulMatMul#model_11/dense_23/Softmax:softmax:02model_11/predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+model_11/predictions/BiasAdd/ReadVariableOpReadVariableOp4model_11_predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_11/predictions/BiasAddBiasAdd%model_11/predictions/MatMul:product:03model_11/predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
model_11/predictions/SoftmaxSoftmax%model_11/predictions/BiasAdd:output:0*
T0*'
_output_shapes
:?????????u
IdentityIdentity&model_11/predictions/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp*^model_11/conv1d_28/BiasAdd/ReadVariableOp6^model_11/conv1d_28/Conv1D/ExpandDims_1/ReadVariableOp*^model_11/conv1d_29/BiasAdd/ReadVariableOp6^model_11/conv1d_29/Conv1D/ExpandDims_1/ReadVariableOp)^model_11/dense_22/BiasAdd/ReadVariableOp+^model_11/dense_22/Tensordot/ReadVariableOp)^model_11/dense_23/BiasAdd/ReadVariableOp(^model_11/dense_23/MatMul/ReadVariableOp'^model_11/embedding_11/embedding_lookup,^model_11/predictions/BiasAdd/ReadVariableOp+^model_11/predictions/MatMul/ReadVariableOpL^model_11/text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : : : 2V
)model_11/conv1d_28/BiasAdd/ReadVariableOp)model_11/conv1d_28/BiasAdd/ReadVariableOp2n
5model_11/conv1d_28/Conv1D/ExpandDims_1/ReadVariableOp5model_11/conv1d_28/Conv1D/ExpandDims_1/ReadVariableOp2V
)model_11/conv1d_29/BiasAdd/ReadVariableOp)model_11/conv1d_29/BiasAdd/ReadVariableOp2n
5model_11/conv1d_29/Conv1D/ExpandDims_1/ReadVariableOp5model_11/conv1d_29/Conv1D/ExpandDims_1/ReadVariableOp2T
(model_11/dense_22/BiasAdd/ReadVariableOp(model_11/dense_22/BiasAdd/ReadVariableOp2X
*model_11/dense_22/Tensordot/ReadVariableOp*model_11/dense_22/Tensordot/ReadVariableOp2T
(model_11/dense_23/BiasAdd/ReadVariableOp(model_11/dense_23/BiasAdd/ReadVariableOp2R
'model_11/dense_23/MatMul/ReadVariableOp'model_11/dense_23/MatMul/ReadVariableOp2P
&model_11/embedding_11/embedding_lookup&model_11/embedding_11/embedding_lookup2Z
+model_11/predictions/BiasAdd/ReadVariableOp+model_11/predictions/BiasAdd/ReadVariableOp2X
*model_11/predictions/MatMul/ReadVariableOp*model_11/predictions/MatMul/ReadVariableOp2?
Kmodel_11/text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2Kmodel_11/text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_13:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
C__inference_model_11_layer_call_and_return_conditional_losses_49564

inputsS
Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handleT
Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value	0
,text_vectorization_2_string_lookup_2_equal_y3
/text_vectorization_2_string_lookup_2_selectv2_t	7
#embedding_11_embedding_lookup_49485:
??@L
5conv1d_28_conv1d_expanddims_1_readvariableop_resource:@?8
)conv1d_28_biasadd_readvariableop_resource:	?L
5conv1d_29_conv1d_expanddims_1_readvariableop_resource:?@7
)conv1d_29_biasadd_readvariableop_resource:@<
*dense_22_tensordot_readvariableop_resource:@@6
(dense_22_biasadd_readvariableop_resource:@9
'dense_23_matmul_readvariableop_resource:@6
(dense_23_biasadd_readvariableop_resource:<
*predictions_matmul_readvariableop_resource:9
+predictions_biasadd_readvariableop_resource:
identity?? conv1d_28/BiasAdd/ReadVariableOp?,conv1d_28/Conv1D/ExpandDims_1/ReadVariableOp? conv1d_29/BiasAdd/ReadVariableOp?,conv1d_29/Conv1D/ExpandDims_1/ReadVariableOp?dense_22/BiasAdd/ReadVariableOp?!dense_22/Tensordot/ReadVariableOp?dense_23/BiasAdd/ReadVariableOp?dense_23/MatMul/ReadVariableOp?embedding_11/embedding_lookup?"predictions/BiasAdd/ReadVariableOp?!predictions/MatMul/ReadVariableOp?Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2`
 text_vectorization_2/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_2/StaticRegexReplaceStaticRegexReplace)text_vectorization_2/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_2/SqueezeSqueeze0text_vectorization_2/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_2/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_2/StringSplit/StringSplitV2StringSplitV2%text_vectorization_2/Squeeze:output:0/text_vectorization_2/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_2/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_2/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_2/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_2/StringSplit/strided_sliceStridedSlice8text_vectorization_2/StringSplit/StringSplitV2:indices:0=text_vectorization_2/StringSplit/strided_slice/stack:output:0?text_vectorization_2/StringSplit/strided_slice/stack_1:output:0?text_vectorization_2/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_2/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_2/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_2/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_2/StringSplit/strided_slice_1StridedSlice6text_vectorization_2/StringSplit/StringSplitV2:shape:0?text_vectorization_2/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_2/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_2/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handle7text_vectorization_2/StringSplit/StringSplitV2:values:0Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_2/string_lookup_2/EqualEqual7text_vectorization_2/StringSplit/StringSplitV2:values:0,text_vectorization_2_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_2/string_lookup_2/SelectV2SelectV2.text_vectorization_2/string_lookup_2/Equal:z:0/text_vectorization_2_string_lookup_2_selectv2_tKtext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_2/string_lookup_2/IdentityIdentity6text_vectorization_2/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_2/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_2/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
8text_vectorization_2/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_2/RaggedToTensor/Const:output:06text_vectorization_2/string_lookup_2/Identity:output:0:text_vectorization_2/RaggedToTensor/default_value:output:09text_vectorization_2/StringSplit/strided_slice_1:output:07text_vectorization_2/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding_11/embedding_lookupResourceGather#embedding_11_embedding_lookup_49485Atext_vectorization_2/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*6
_class,
*(loc:@embedding_11/embedding_lookup/49485*,
_output_shapes
:??????????@*
dtype0?
&embedding_11/embedding_lookup/IdentityIdentity&embedding_11/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_11/embedding_lookup/49485*,
_output_shapes
:??????????@?
(embedding_11/embedding_lookup/Identity_1Identity/embedding_11/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@?
dropout_18/IdentityIdentity1embedding_11/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:??????????@j
conv1d_28/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_28/Conv1D/ExpandDims
ExpandDimsdropout_18/Identity:output:0(conv1d_28/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@?
,conv1d_28/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_28_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:@?*
dtype0c
!conv1d_28/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_28/Conv1D/ExpandDims_1
ExpandDims4conv1d_28/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_28/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:@??
conv1d_28/Conv1DConv2D$conv1d_28/Conv1D/ExpandDims:output:0&conv1d_28/Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
?
conv1d_28/Conv1D/SqueezeSqueezeconv1d_28/Conv1D:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

??????????
 conv1d_28/BiasAdd/ReadVariableOpReadVariableOp)conv1d_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d_28/BiasAddBiasAdd!conv1d_28/Conv1D/Squeeze:output:0(conv1d_28/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????j
conv1d_28/ReluReluconv1d_28/BiasAdd:output:0*
T0*-
_output_shapes
:???????????a
max_pooling1d_11/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
max_pooling1d_11/ExpandDims
ExpandDimsconv1d_28/Relu:activations:0(max_pooling1d_11/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
max_pooling1d_11/MaxPoolMaxPool$max_pooling1d_11/ExpandDims:output:0*0
_output_shapes
:?????????b?*
ksize
*
paddingVALID*
strides
?
max_pooling1d_11/SqueezeSqueeze!max_pooling1d_11/MaxPool:output:0*
T0*,
_output_shapes
:?????????b?*
squeeze_dims
j
conv1d_29/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_29/Conv1D/ExpandDims
ExpandDims!max_pooling1d_11/Squeeze:output:0(conv1d_29/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????b??
,conv1d_29/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_29_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?@*
dtype0c
!conv1d_29/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_29/Conv1D/ExpandDims_1
ExpandDims4conv1d_29/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_29/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?@?
conv1d_29/Conv1DConv2D$conv1d_29/Conv1D/ExpandDims:output:0&conv1d_29/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????\@*
paddingVALID*
strides
?
conv1d_29/Conv1D/SqueezeSqueezeconv1d_29/Conv1D:output:0*
T0*+
_output_shapes
:?????????\@*
squeeze_dims

??????????
 conv1d_29/BiasAdd/ReadVariableOpReadVariableOp)conv1d_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv1d_29/BiasAddBiasAdd!conv1d_29/Conv1D/Squeeze:output:0(conv1d_29/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????\@h
conv1d_29/ReluReluconv1d_29/BiasAdd:output:0*
T0*+
_output_shapes
:?????????\@?
!dense_22/Tensordot/ReadVariableOpReadVariableOp*dense_22_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0a
dense_22/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_22/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       d
dense_22/Tensordot/ShapeShapeconv1d_29/Relu:activations:0*
T0*
_output_shapes
:b
 dense_22/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_22/Tensordot/GatherV2GatherV2!dense_22/Tensordot/Shape:output:0 dense_22/Tensordot/free:output:0)dense_22/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_22/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_22/Tensordot/GatherV2_1GatherV2!dense_22/Tensordot/Shape:output:0 dense_22/Tensordot/axes:output:0+dense_22/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_22/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_22/Tensordot/ProdProd$dense_22/Tensordot/GatherV2:output:0!dense_22/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_22/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_22/Tensordot/Prod_1Prod&dense_22/Tensordot/GatherV2_1:output:0#dense_22/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_22/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_22/Tensordot/concatConcatV2 dense_22/Tensordot/free:output:0 dense_22/Tensordot/axes:output:0'dense_22/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_22/Tensordot/stackPack dense_22/Tensordot/Prod:output:0"dense_22/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_22/Tensordot/transpose	Transposeconv1d_29/Relu:activations:0"dense_22/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????\@?
dense_22/Tensordot/ReshapeReshape dense_22/Tensordot/transpose:y:0!dense_22/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_22/Tensordot/MatMulMatMul#dense_22/Tensordot/Reshape:output:0)dense_22/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_22/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@b
 dense_22/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_22/Tensordot/concat_1ConcatV2$dense_22/Tensordot/GatherV2:output:0#dense_22/Tensordot/Const_2:output:0)dense_22/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_22/TensordotReshape#dense_22/Tensordot/MatMul:product:0$dense_22/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????\@?
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_22/BiasAddBiasAdddense_22/Tensordot:output:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????\@f
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*+
_output_shapes
:?????????\@o
-global_max_pooling1d_11/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d_11/MaxMaxdense_22/Relu:activations:06global_max_pooling1d_11/Max/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@w
dropout_19/IdentityIdentity$global_max_pooling1d_11/Max:output:0*
T0*'
_output_shapes
:?????????@?
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_23/MatMulMatMuldropout_19/Identity:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
!predictions/MatMul/ReadVariableOpReadVariableOp*predictions_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
predictions/MatMulMatMuldense_23/Softmax:softmax:0)predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"predictions/BiasAdd/ReadVariableOpReadVariableOp+predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
predictions/BiasAddBiasAddpredictions/MatMul:product:0*predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n
predictions/SoftmaxSoftmaxpredictions/BiasAdd:output:0*
T0*'
_output_shapes
:?????????l
IdentityIdentitypredictions/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv1d_28/BiasAdd/ReadVariableOp-^conv1d_28/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_29/BiasAdd/ReadVariableOp-^conv1d_29/Conv1D/ExpandDims_1/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp"^dense_22/Tensordot/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp^embedding_11/embedding_lookup#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOpC^text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : : : 2D
 conv1d_28/BiasAdd/ReadVariableOp conv1d_28/BiasAdd/ReadVariableOp2\
,conv1d_28/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_28/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_29/BiasAdd/ReadVariableOp conv1d_29/BiasAdd/ReadVariableOp2\
,conv1d_29/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_29/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2F
!dense_22/Tensordot/ReadVariableOp!dense_22/Tensordot/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2>
embedding_11/embedding_lookupembedding_11/embedding_lookup2H
"predictions/BiasAdd/ReadVariableOp"predictions/BiasAdd/ReadVariableOp2F
!predictions/MatMul/ReadVariableOp!predictions/MatMul/ReadVariableOp2?
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
,__inference_embedding_11_layer_call_fn_49800

inputs	
unknown:
??@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_11_layer_call_and_return_conditional_losses_48728t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
F
__inference__creator_50040
identity: ??MutableHashTable
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_1089*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
.
__inference__initializer_50045
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
g
K__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_49874

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+????????????????????????????
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
__inference_<lambda>_500857
3key_value_init1876_lookuptableimportv2_table_handle/
+key_value_init1876_lookuptableimportv2_keys1
-key_value_init1876_lookuptableimportv2_values	
identity??&key_value_init1876/LookupTableImportV2?
&key_value_init1876/LookupTableImportV2LookupTableImportV23key_value_init1876_lookuptableimportv2_table_handle+key_value_init1876_lookuptableimportv2_keys-key_value_init1876_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init1876/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: :??:??2P
&key_value_init1876/LookupTableImportV2&key_value_init1876/LookupTableImportV2:"

_output_shapes

:??:"

_output_shapes

:??
?
?
G__inference_embedding_11_layer_call_and_return_conditional_losses_48728

inputs	*
embedding_lookup_48722:
??@
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_48722inputs*
Tindices0	*)
_class
loc:@embedding_lookup/48722*,
_output_shapes
:??????????@*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/48722*,
_output_shapes
:??????????@?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:??????????@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_49745
input_13
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
??@ 
	unknown_4:@?
	unknown_5:	? 
	unknown_6:?@
	unknown_7:@
	unknown_8:@@
	unknown_9:@

unknown_10:@

unknown_11:

unknown_12:

unknown_13:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_48636o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_13:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
C__inference_dense_22_layer_call_and_return_conditional_losses_48815

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????\@?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????\@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????\@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????\@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????\@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????\@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????\@
 
_user_specified_nameinputs
?

d
E__inference_dropout_18_layer_call_and_return_conditional_losses_48990

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????@t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????@n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????@^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?

?
C__inference_dense_23_layer_call_and_return_conditional_losses_49997

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
F__inference_predictions_layer_call_and_return_conditional_losses_50017

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
n
R__inference_global_max_pooling1d_11_layer_call_and_return_conditional_losses_48661

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
??
?
!__inference__traced_restore_50392
file_prefix<
(assignvariableop_embedding_11_embeddings:
??@:
#assignvariableop_1_conv1d_28_kernel:@?0
!assignvariableop_2_conv1d_28_bias:	?:
#assignvariableop_3_conv1d_29_kernel:?@/
!assignvariableop_4_conv1d_29_bias:@4
"assignvariableop_5_dense_22_kernel:@@.
 assignvariableop_6_dense_22_bias:@4
"assignvariableop_7_dense_23_kernel:@.
 assignvariableop_8_dense_23_bias:7
%assignvariableop_9_predictions_kernel:2
$assignvariableop_10_predictions_bias:'
assignvariableop_11_adam_iter:	 )
assignvariableop_12_adam_beta_1: )
assignvariableop_13_adam_beta_2: (
assignvariableop_14_adam_decay: 0
&assignvariableop_15_adam_learning_rate: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: #
assignvariableop_16_total: #
assignvariableop_17_count: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: F
2assignvariableop_20_adam_embedding_11_embeddings_m:
??@B
+assignvariableop_21_adam_conv1d_28_kernel_m:@?8
)assignvariableop_22_adam_conv1d_28_bias_m:	?B
+assignvariableop_23_adam_conv1d_29_kernel_m:?@7
)assignvariableop_24_adam_conv1d_29_bias_m:@<
*assignvariableop_25_adam_dense_22_kernel_m:@@6
(assignvariableop_26_adam_dense_22_bias_m:@<
*assignvariableop_27_adam_dense_23_kernel_m:@6
(assignvariableop_28_adam_dense_23_bias_m:?
-assignvariableop_29_adam_predictions_kernel_m:9
+assignvariableop_30_adam_predictions_bias_m:F
2assignvariableop_31_adam_embedding_11_embeddings_v:
??@B
+assignvariableop_32_adam_conv1d_28_kernel_v:@?8
)assignvariableop_33_adam_conv1d_28_bias_v:	?B
+assignvariableop_34_adam_conv1d_29_kernel_v:?@7
)assignvariableop_35_adam_conv1d_29_bias_v:@<
*assignvariableop_36_adam_dense_22_kernel_v:@@6
(assignvariableop_37_adam_dense_22_bias_v:@<
*assignvariableop_38_adam_dense_23_kernel_v:@6
(assignvariableop_39_adam_dense_23_bias_v:?
-assignvariableop_40_adam_predictions_kernel_v:9
+assignvariableop_41_adam_predictions_bias_v:
identity_43??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*?
value?B?-B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::*;
dtypes1
/2-		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp(assignvariableop_embedding_11_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp#assignvariableop_1_conv1d_28_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_conv1d_28_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp#assignvariableop_3_conv1d_29_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_conv1d_29_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_22_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_22_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_23_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_23_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp%assignvariableop_9_predictions_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_predictions_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_iterIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_2Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_decayIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp&assignvariableop_15_adam_learning_rateIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:16RestoreV2:tensors:17*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 _
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_embedding_11_embeddings_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_conv1d_28_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_conv1d_28_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_conv1d_29_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_conv1d_29_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_22_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_22_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_23_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_23_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp-assignvariableop_29_adam_predictions_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_predictions_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp2assignvariableop_31_adam_embedding_11_embeddings_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv1d_28_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv1d_28_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv1d_29_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_conv1d_29_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_dense_22_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_dense_22_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_dense_23_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_dense_23_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp-assignvariableop_40_adam_predictions_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_predictions_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_43Identity_43:output:0*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable
?
L
0__inference_max_pooling1d_11_layer_call_fn_49866

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_48648v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?	
d
E__inference_dropout_19_layer_call_and_return_conditional_losses_48937

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
C__inference_model_11_layer_call_and_return_conditional_losses_49358
input_13S
Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handleT
Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value	0
,text_vectorization_2_string_lookup_2_equal_y3
/text_vectorization_2_string_lookup_2_selectv2_t	&
embedding_11_49325:
??@&
conv1d_28_49329:@?
conv1d_28_49331:	?&
conv1d_29_49335:?@
conv1d_29_49337:@ 
dense_22_49340:@@
dense_22_49342:@ 
dense_23_49347:@
dense_23_49349:#
predictions_49352:
predictions_49354:
identity??!conv1d_28/StatefulPartitionedCall?!conv1d_29/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?"dropout_18/StatefulPartitionedCall?"dropout_19/StatefulPartitionedCall?$embedding_11/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2b
 text_vectorization_2/StringLowerStringLowerinput_13*'
_output_shapes
:??????????
'text_vectorization_2/StaticRegexReplaceStaticRegexReplace)text_vectorization_2/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_2/SqueezeSqueeze0text_vectorization_2/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_2/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_2/StringSplit/StringSplitV2StringSplitV2%text_vectorization_2/Squeeze:output:0/text_vectorization_2/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_2/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_2/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_2/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_2/StringSplit/strided_sliceStridedSlice8text_vectorization_2/StringSplit/StringSplitV2:indices:0=text_vectorization_2/StringSplit/strided_slice/stack:output:0?text_vectorization_2/StringSplit/strided_slice/stack_1:output:0?text_vectorization_2/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_2/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_2/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_2/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_2/StringSplit/strided_slice_1StridedSlice6text_vectorization_2/StringSplit/StringSplitV2:shape:0?text_vectorization_2/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_2/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_2/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handle7text_vectorization_2/StringSplit/StringSplitV2:values:0Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_2/string_lookup_2/EqualEqual7text_vectorization_2/StringSplit/StringSplitV2:values:0,text_vectorization_2_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_2/string_lookup_2/SelectV2SelectV2.text_vectorization_2/string_lookup_2/Equal:z:0/text_vectorization_2_string_lookup_2_selectv2_tKtext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_2/string_lookup_2/IdentityIdentity6text_vectorization_2/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_2/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_2/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
8text_vectorization_2/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_2/RaggedToTensor/Const:output:06text_vectorization_2/string_lookup_2/Identity:output:0:text_vectorization_2/RaggedToTensor/default_value:output:09text_vectorization_2/StringSplit/strided_slice_1:output:07text_vectorization_2/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_2/RaggedToTensor/RaggedTensorToTensor:result:0embedding_11_49325*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_11_layer_call_and_return_conditional_losses_48728?
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall-embedding_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_48990?
!conv1d_28/StatefulPartitionedCallStatefulPartitionedCall+dropout_18/StatefulPartitionedCall:output:0conv1d_28_49329conv1d_28_49331*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_28_layer_call_and_return_conditional_losses_48755?
 max_pooling1d_11/PartitionedCallPartitionedCall*conv1d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????b?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_48648?
!conv1d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_11/PartitionedCall:output:0conv1d_29_49335conv1d_29_49337*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????\@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_29_layer_call_and_return_conditional_losses_48778?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall*conv1d_29/StatefulPartitionedCall:output:0dense_22_49340dense_22_49342*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????\@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_48815?
'global_max_pooling1d_11/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_max_pooling1d_11_layer_call_and_return_conditional_losses_48661?
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall0global_max_pooling1d_11/PartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_48937?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_23_49347dense_23_49349*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_48840?
#predictions/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0predictions_49352predictions_49354*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_predictions_layer_call_and_return_conditional_losses_48857{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv1d_28/StatefulPartitionedCall"^conv1d_29/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall%^embedding_11/StatefulPartitionedCall$^predictions/StatefulPartitionedCallC^text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : : : 2F
!conv1d_28/StatefulPartitionedCall!conv1d_28/StatefulPartitionedCall2F
!conv1d_29/StatefulPartitionedCall!conv1d_29/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall2?
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_13:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_restore_fn_50077
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
?
(__inference_dense_23_layer_call_fn_49986

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_48840o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
c
*__inference_dropout_19_layer_call_fn_49960

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_48937o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
G__inference_embedding_11_layer_call_and_return_conditional_losses_49809

inputs	*
embedding_lookup_49803:
??@
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_49803inputs*
Tindices0	*)
_class
loc:@embedding_lookup/49803*,
_output_shapes
:??????????@*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/49803*,
_output_shapes
:??????????@?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:??????????@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
:
__inference__creator_50022
identity??
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name1877*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
c
E__inference_dropout_19_layer_call_and_return_conditional_losses_49965

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
+__inference_predictions_layer_call_fn_50006

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_predictions_layer_call_and_return_conditional_losses_48857o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?[
?
__inference__traced_save_50253
file_prefix6
2savev2_embedding_11_embeddings_read_readvariableop/
+savev2_conv1d_28_kernel_read_readvariableop-
)savev2_conv1d_28_bias_read_readvariableop/
+savev2_conv1d_29_kernel_read_readvariableop-
)savev2_conv1d_29_bias_read_readvariableop.
*savev2_dense_22_kernel_read_readvariableop,
(savev2_dense_22_bias_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop1
-savev2_predictions_kernel_read_readvariableop/
+savev2_predictions_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop=
9savev2_adam_embedding_11_embeddings_m_read_readvariableop6
2savev2_adam_conv1d_28_kernel_m_read_readvariableop4
0savev2_adam_conv1d_28_bias_m_read_readvariableop6
2savev2_adam_conv1d_29_kernel_m_read_readvariableop4
0savev2_adam_conv1d_29_bias_m_read_readvariableop5
1savev2_adam_dense_22_kernel_m_read_readvariableop3
/savev2_adam_dense_22_bias_m_read_readvariableop5
1savev2_adam_dense_23_kernel_m_read_readvariableop3
/savev2_adam_dense_23_bias_m_read_readvariableop8
4savev2_adam_predictions_kernel_m_read_readvariableop6
2savev2_adam_predictions_bias_m_read_readvariableop=
9savev2_adam_embedding_11_embeddings_v_read_readvariableop6
2savev2_adam_conv1d_28_kernel_v_read_readvariableop4
0savev2_adam_conv1d_28_bias_v_read_readvariableop6
2savev2_adam_conv1d_29_kernel_v_read_readvariableop4
0savev2_adam_conv1d_29_bias_v_read_readvariableop5
1savev2_adam_dense_22_kernel_v_read_readvariableop3
/savev2_adam_dense_22_bias_v_read_readvariableop5
1savev2_adam_dense_23_kernel_v_read_readvariableop3
/savev2_adam_dense_23_bias_v_read_readvariableop8
4savev2_adam_predictions_kernel_v_read_readvariableop6
2savev2_adam_predictions_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*?
value?B?-B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_embedding_11_embeddings_read_readvariableop+savev2_conv1d_28_kernel_read_readvariableop)savev2_conv1d_28_bias_read_readvariableop+savev2_conv1d_29_kernel_read_readvariableop)savev2_conv1d_29_bias_read_readvariableop*savev2_dense_22_kernel_read_readvariableop(savev2_dense_22_bias_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop-savev2_predictions_kernel_read_readvariableop+savev2_predictions_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1 savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop9savev2_adam_embedding_11_embeddings_m_read_readvariableop2savev2_adam_conv1d_28_kernel_m_read_readvariableop0savev2_adam_conv1d_28_bias_m_read_readvariableop2savev2_adam_conv1d_29_kernel_m_read_readvariableop0savev2_adam_conv1d_29_bias_m_read_readvariableop1savev2_adam_dense_22_kernel_m_read_readvariableop/savev2_adam_dense_22_bias_m_read_readvariableop1savev2_adam_dense_23_kernel_m_read_readvariableop/savev2_adam_dense_23_bias_m_read_readvariableop4savev2_adam_predictions_kernel_m_read_readvariableop2savev2_adam_predictions_bias_m_read_readvariableop9savev2_adam_embedding_11_embeddings_v_read_readvariableop2savev2_adam_conv1d_28_kernel_v_read_readvariableop0savev2_adam_conv1d_28_bias_v_read_readvariableop2savev2_adam_conv1d_29_kernel_v_read_readvariableop0savev2_adam_conv1d_29_bias_v_read_readvariableop1savev2_adam_dense_22_kernel_v_read_readvariableop/savev2_adam_dense_22_bias_v_read_readvariableop1savev2_adam_dense_23_kernel_v_read_readvariableop/savev2_adam_dense_23_bias_v_read_readvariableop4savev2_adam_predictions_kernel_v_read_readvariableop2savev2_adam_predictions_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *;
dtypes1
/2-		?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??@:@?:?:?@:@:@@:@:@:::: : : : : ::: : : : :
??@:@?:?:?@:@:@@:@:@::::
??@:@?:?:?@:@:@@:@:@:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??@:)%
#
_output_shapes
:@?:!

_output_shapes	
:?:)%
#
_output_shapes
:?@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 	

_output_shapes
::$
 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??@:)%
#
_output_shapes
:@?:!

_output_shapes	
:?:)%
#
_output_shapes
:?@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::$  

_output_shapes

:: !

_output_shapes
::&""
 
_output_shapes
:
??@:)#%
#
_output_shapes
:@?:!$

_output_shapes	
:?:)%%
#
_output_shapes
:?@: &

_output_shapes
:@:$' 

_output_shapes

:@@: (

_output_shapes
:@:$) 

_output_shapes

:@: *

_output_shapes
::$+ 

_output_shapes

:: ,

_output_shapes
::-

_output_shapes
: 
?
,
__inference__destroyer_50050
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
??
?
C__inference_model_11_layer_call_and_return_conditional_losses_49122

inputsS
Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handleT
Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value	0
,text_vectorization_2_string_lookup_2_equal_y3
/text_vectorization_2_string_lookup_2_selectv2_t	&
embedding_11_49089:
??@&
conv1d_28_49093:@?
conv1d_28_49095:	?&
conv1d_29_49099:?@
conv1d_29_49101:@ 
dense_22_49104:@@
dense_22_49106:@ 
dense_23_49111:@
dense_23_49113:#
predictions_49116:
predictions_49118:
identity??!conv1d_28/StatefulPartitionedCall?!conv1d_29/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?"dropout_18/StatefulPartitionedCall?"dropout_19/StatefulPartitionedCall?$embedding_11/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2`
 text_vectorization_2/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_2/StaticRegexReplaceStaticRegexReplace)text_vectorization_2/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_2/SqueezeSqueeze0text_vectorization_2/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_2/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_2/StringSplit/StringSplitV2StringSplitV2%text_vectorization_2/Squeeze:output:0/text_vectorization_2/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_2/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_2/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_2/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_2/StringSplit/strided_sliceStridedSlice8text_vectorization_2/StringSplit/StringSplitV2:indices:0=text_vectorization_2/StringSplit/strided_slice/stack:output:0?text_vectorization_2/StringSplit/strided_slice/stack_1:output:0?text_vectorization_2/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_2/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_2/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_2/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_2/StringSplit/strided_slice_1StridedSlice6text_vectorization_2/StringSplit/StringSplitV2:shape:0?text_vectorization_2/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_2/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_2/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handle7text_vectorization_2/StringSplit/StringSplitV2:values:0Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_2/string_lookup_2/EqualEqual7text_vectorization_2/StringSplit/StringSplitV2:values:0,text_vectorization_2_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_2/string_lookup_2/SelectV2SelectV2.text_vectorization_2/string_lookup_2/Equal:z:0/text_vectorization_2_string_lookup_2_selectv2_tKtext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_2/string_lookup_2/IdentityIdentity6text_vectorization_2/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_2/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_2/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
8text_vectorization_2/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_2/RaggedToTensor/Const:output:06text_vectorization_2/string_lookup_2/Identity:output:0:text_vectorization_2/RaggedToTensor/default_value:output:09text_vectorization_2/StringSplit/strided_slice_1:output:07text_vectorization_2/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_2/RaggedToTensor/RaggedTensorToTensor:result:0embedding_11_49089*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_11_layer_call_and_return_conditional_losses_48728?
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall-embedding_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_48990?
!conv1d_28/StatefulPartitionedCallStatefulPartitionedCall+dropout_18/StatefulPartitionedCall:output:0conv1d_28_49093conv1d_28_49095*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_28_layer_call_and_return_conditional_losses_48755?
 max_pooling1d_11/PartitionedCallPartitionedCall*conv1d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????b?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_48648?
!conv1d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_11/PartitionedCall:output:0conv1d_29_49099conv1d_29_49101*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????\@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_29_layer_call_and_return_conditional_losses_48778?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall*conv1d_29/StatefulPartitionedCall:output:0dense_22_49104dense_22_49106*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????\@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_48815?
'global_max_pooling1d_11/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_max_pooling1d_11_layer_call_and_return_conditional_losses_48661?
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall0global_max_pooling1d_11/PartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_48937?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_23_49111dense_23_49113*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_48840?
#predictions/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0predictions_49116predictions_49118*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_predictions_layer_call_and_return_conditional_losses_48857{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv1d_28/StatefulPartitionedCall"^conv1d_29/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall%^embedding_11/StatefulPartitionedCall$^predictions/StatefulPartitionedCallC^text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : : : 2F
!conv1d_28/StatefulPartitionedCall!conv1d_28/StatefulPartitionedCall2F
!conv1d_29/StatefulPartitionedCall!conv1d_29/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall2?
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
c
E__inference_dropout_18_layer_call_and_return_conditional_losses_48737

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????@`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
??
?
C__inference_model_11_layer_call_and_return_conditional_losses_49708

inputsS
Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handleT
Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value	0
,text_vectorization_2_string_lookup_2_equal_y3
/text_vectorization_2_string_lookup_2_selectv2_t	7
#embedding_11_embedding_lookup_49615:
??@L
5conv1d_28_conv1d_expanddims_1_readvariableop_resource:@?8
)conv1d_28_biasadd_readvariableop_resource:	?L
5conv1d_29_conv1d_expanddims_1_readvariableop_resource:?@7
)conv1d_29_biasadd_readvariableop_resource:@<
*dense_22_tensordot_readvariableop_resource:@@6
(dense_22_biasadd_readvariableop_resource:@9
'dense_23_matmul_readvariableop_resource:@6
(dense_23_biasadd_readvariableop_resource:<
*predictions_matmul_readvariableop_resource:9
+predictions_biasadd_readvariableop_resource:
identity?? conv1d_28/BiasAdd/ReadVariableOp?,conv1d_28/Conv1D/ExpandDims_1/ReadVariableOp? conv1d_29/BiasAdd/ReadVariableOp?,conv1d_29/Conv1D/ExpandDims_1/ReadVariableOp?dense_22/BiasAdd/ReadVariableOp?!dense_22/Tensordot/ReadVariableOp?dense_23/BiasAdd/ReadVariableOp?dense_23/MatMul/ReadVariableOp?embedding_11/embedding_lookup?"predictions/BiasAdd/ReadVariableOp?!predictions/MatMul/ReadVariableOp?Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2`
 text_vectorization_2/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_2/StaticRegexReplaceStaticRegexReplace)text_vectorization_2/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_2/SqueezeSqueeze0text_vectorization_2/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_2/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_2/StringSplit/StringSplitV2StringSplitV2%text_vectorization_2/Squeeze:output:0/text_vectorization_2/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_2/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_2/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_2/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_2/StringSplit/strided_sliceStridedSlice8text_vectorization_2/StringSplit/StringSplitV2:indices:0=text_vectorization_2/StringSplit/strided_slice/stack:output:0?text_vectorization_2/StringSplit/strided_slice/stack_1:output:0?text_vectorization_2/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_2/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_2/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_2/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_2/StringSplit/strided_slice_1StridedSlice6text_vectorization_2/StringSplit/StringSplitV2:shape:0?text_vectorization_2/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_2/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_2/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handle7text_vectorization_2/StringSplit/StringSplitV2:values:0Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_2/string_lookup_2/EqualEqual7text_vectorization_2/StringSplit/StringSplitV2:values:0,text_vectorization_2_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_2/string_lookup_2/SelectV2SelectV2.text_vectorization_2/string_lookup_2/Equal:z:0/text_vectorization_2_string_lookup_2_selectv2_tKtext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_2/string_lookup_2/IdentityIdentity6text_vectorization_2/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_2/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_2/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
8text_vectorization_2/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_2/RaggedToTensor/Const:output:06text_vectorization_2/string_lookup_2/Identity:output:0:text_vectorization_2/RaggedToTensor/default_value:output:09text_vectorization_2/StringSplit/strided_slice_1:output:07text_vectorization_2/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding_11/embedding_lookupResourceGather#embedding_11_embedding_lookup_49615Atext_vectorization_2/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*6
_class,
*(loc:@embedding_11/embedding_lookup/49615*,
_output_shapes
:??????????@*
dtype0?
&embedding_11/embedding_lookup/IdentityIdentity&embedding_11/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_11/embedding_lookup/49615*,
_output_shapes
:??????????@?
(embedding_11/embedding_lookup/Identity_1Identity/embedding_11/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@]
dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_18/dropout/MulMul1embedding_11/embedding_lookup/Identity_1:output:0!dropout_18/dropout/Const:output:0*
T0*,
_output_shapes
:??????????@y
dropout_18/dropout/ShapeShape1embedding_11/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:?
/dropout_18/dropout/random_uniform/RandomUniformRandomUniform!dropout_18/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????@*
dtype0f
!dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_18/dropout/GreaterEqualGreaterEqual8dropout_18/dropout/random_uniform/RandomUniform:output:0*dropout_18/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????@?
dropout_18/dropout/CastCast#dropout_18/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????@?
dropout_18/dropout/Mul_1Muldropout_18/dropout/Mul:z:0dropout_18/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????@j
conv1d_28/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_28/Conv1D/ExpandDims
ExpandDimsdropout_18/dropout/Mul_1:z:0(conv1d_28/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@?
,conv1d_28/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_28_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:@?*
dtype0c
!conv1d_28/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_28/Conv1D/ExpandDims_1
ExpandDims4conv1d_28/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_28/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:@??
conv1d_28/Conv1DConv2D$conv1d_28/Conv1D/ExpandDims:output:0&conv1d_28/Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
?
conv1d_28/Conv1D/SqueezeSqueezeconv1d_28/Conv1D:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

??????????
 conv1d_28/BiasAdd/ReadVariableOpReadVariableOp)conv1d_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d_28/BiasAddBiasAdd!conv1d_28/Conv1D/Squeeze:output:0(conv1d_28/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????j
conv1d_28/ReluReluconv1d_28/BiasAdd:output:0*
T0*-
_output_shapes
:???????????a
max_pooling1d_11/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
max_pooling1d_11/ExpandDims
ExpandDimsconv1d_28/Relu:activations:0(max_pooling1d_11/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
max_pooling1d_11/MaxPoolMaxPool$max_pooling1d_11/ExpandDims:output:0*0
_output_shapes
:?????????b?*
ksize
*
paddingVALID*
strides
?
max_pooling1d_11/SqueezeSqueeze!max_pooling1d_11/MaxPool:output:0*
T0*,
_output_shapes
:?????????b?*
squeeze_dims
j
conv1d_29/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_29/Conv1D/ExpandDims
ExpandDims!max_pooling1d_11/Squeeze:output:0(conv1d_29/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????b??
,conv1d_29/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_29_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?@*
dtype0c
!conv1d_29/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_29/Conv1D/ExpandDims_1
ExpandDims4conv1d_29/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_29/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?@?
conv1d_29/Conv1DConv2D$conv1d_29/Conv1D/ExpandDims:output:0&conv1d_29/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????\@*
paddingVALID*
strides
?
conv1d_29/Conv1D/SqueezeSqueezeconv1d_29/Conv1D:output:0*
T0*+
_output_shapes
:?????????\@*
squeeze_dims

??????????
 conv1d_29/BiasAdd/ReadVariableOpReadVariableOp)conv1d_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv1d_29/BiasAddBiasAdd!conv1d_29/Conv1D/Squeeze:output:0(conv1d_29/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????\@h
conv1d_29/ReluReluconv1d_29/BiasAdd:output:0*
T0*+
_output_shapes
:?????????\@?
!dense_22/Tensordot/ReadVariableOpReadVariableOp*dense_22_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0a
dense_22/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_22/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       d
dense_22/Tensordot/ShapeShapeconv1d_29/Relu:activations:0*
T0*
_output_shapes
:b
 dense_22/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_22/Tensordot/GatherV2GatherV2!dense_22/Tensordot/Shape:output:0 dense_22/Tensordot/free:output:0)dense_22/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_22/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_22/Tensordot/GatherV2_1GatherV2!dense_22/Tensordot/Shape:output:0 dense_22/Tensordot/axes:output:0+dense_22/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_22/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_22/Tensordot/ProdProd$dense_22/Tensordot/GatherV2:output:0!dense_22/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_22/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_22/Tensordot/Prod_1Prod&dense_22/Tensordot/GatherV2_1:output:0#dense_22/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_22/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_22/Tensordot/concatConcatV2 dense_22/Tensordot/free:output:0 dense_22/Tensordot/axes:output:0'dense_22/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_22/Tensordot/stackPack dense_22/Tensordot/Prod:output:0"dense_22/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_22/Tensordot/transpose	Transposeconv1d_29/Relu:activations:0"dense_22/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????\@?
dense_22/Tensordot/ReshapeReshape dense_22/Tensordot/transpose:y:0!dense_22/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_22/Tensordot/MatMulMatMul#dense_22/Tensordot/Reshape:output:0)dense_22/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_22/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@b
 dense_22/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_22/Tensordot/concat_1ConcatV2$dense_22/Tensordot/GatherV2:output:0#dense_22/Tensordot/Const_2:output:0)dense_22/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_22/TensordotReshape#dense_22/Tensordot/MatMul:product:0$dense_22/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????\@?
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_22/BiasAddBiasAdddense_22/Tensordot:output:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????\@f
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*+
_output_shapes
:?????????\@o
-global_max_pooling1d_11/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d_11/MaxMaxdense_22/Relu:activations:06global_max_pooling1d_11/Max/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@]
dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_19/dropout/MulMul$global_max_pooling1d_11/Max:output:0!dropout_19/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@l
dropout_19/dropout/ShapeShape$global_max_pooling1d_11/Max:output:0*
T0*
_output_shapes
:?
/dropout_19/dropout/random_uniform/RandomUniformRandomUniform!dropout_19/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0f
!dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_19/dropout/GreaterEqualGreaterEqual8dropout_19/dropout/random_uniform/RandomUniform:output:0*dropout_19/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
dropout_19/dropout/CastCast#dropout_19/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout_19/dropout/Mul_1Muldropout_19/dropout/Mul:z:0dropout_19/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_23/MatMulMatMuldropout_19/dropout/Mul_1:z:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
!predictions/MatMul/ReadVariableOpReadVariableOp*predictions_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
predictions/MatMulMatMuldense_23/Softmax:softmax:0)predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"predictions/BiasAdd/ReadVariableOpReadVariableOp+predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
predictions/BiasAddBiasAddpredictions/MatMul:product:0*predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n
predictions/SoftmaxSoftmaxpredictions/BiasAdd:output:0*
T0*'
_output_shapes
:?????????l
IdentityIdentitypredictions/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv1d_28/BiasAdd/ReadVariableOp-^conv1d_28/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_29/BiasAdd/ReadVariableOp-^conv1d_29/Conv1D/ExpandDims_1/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp"^dense_22/Tensordot/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp^embedding_11/embedding_lookup#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOpC^text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : : : 2D
 conv1d_28/BiasAdd/ReadVariableOp conv1d_28/BiasAdd/ReadVariableOp2\
,conv1d_28/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_28/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_29/BiasAdd/ReadVariableOp conv1d_29/BiasAdd/ReadVariableOp2\
,conv1d_29/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_29/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2F
!dense_22/Tensordot/ReadVariableOp!dense_22/Tensordot/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2>
embedding_11/embedding_lookupembedding_11/embedding_lookup2H
"predictions/BiasAdd/ReadVariableOp"predictions/BiasAdd/ReadVariableOp2F
!predictions/MatMul/ReadVariableOp!predictions/MatMul/ReadVariableOp2?
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference__initializer_500307
3key_value_init1876_lookuptableimportv2_table_handle/
+key_value_init1876_lookuptableimportv2_keys1
-key_value_init1876_lookuptableimportv2_values	
identity??&key_value_init1876/LookupTableImportV2?
&key_value_init1876/LookupTableImportV2LookupTableImportV23key_value_init1876_lookuptableimportv2_table_handle+key_value_init1876_lookuptableimportv2_keys-key_value_init1876_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init1876/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: :??:??2P
&key_value_init1876/LookupTableImportV2&key_value_init1876/LookupTableImportV2:"

_output_shapes

:??:"

_output_shapes

:??
?	
d
E__inference_dropout_19_layer_call_and_return_conditional_losses_49977

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
(__inference_model_11_layer_call_fn_49399

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
??@ 
	unknown_4:@?
	unknown_5:	? 
	unknown_6:?@
	unknown_7:@
	unknown_8:@@
	unknown_9:@

unknown_10:@

unknown_11:

unknown_12:

unknown_13:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_11_layer_call_and_return_conditional_losses_48864o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
input_131
serving_default_input_13:0?????????A
predictions2
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
P
_lookup_layer
	keras_api
_adapt_function"
_tf_keras_layer
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$_random_generator
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
?
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
?

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
?

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
?
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
?
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O_random_generator
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Rkernel
Sbias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
?
biter

cbeta_1

dbeta_2
	edecay
flearning_ratem?'m?(m?5m?6m?=m?>m?Rm?Sm?Zm?[m?v?'v?(v?5v?6v?=v?>v?Rv?Sv?Zv?[v?"
	optimizer
o
1
'2
(3
54
65
=6
>7
R8
S9
Z10
[11"
trackable_list_wrapper
n
0
'1
(2
53
64
=5
>6
R7
S8
Z9
[10"
trackable_list_wrapper
 "
trackable_list_wrapper
?
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_model_11_layer_call_fn_48897
(__inference_model_11_layer_call_fn_49399
(__inference_model_11_layer_call_fn_49434
(__inference_model_11_layer_call_fn_49190?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_model_11_layer_call_and_return_conditional_losses_49564
C__inference_model_11_layer_call_and_return_conditional_losses_49708
C__inference_model_11_layer_call_and_return_conditional_losses_49274
C__inference_model_11_layer_call_and_return_conditional_losses_49358?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_48636input_13"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
lserving_default"
signature_map
L
mlookup_table
ntoken_counts
o	keras_api"
_tf_keras_layer
"
_generic_user_object
?2?
__inference_adapt_step_49793?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
+:)
??@2embedding_11/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
,__inference_embedding_11_layer_call_fn_49800?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_embedding_11_layer_call_and_return_conditional_losses_49809?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
 	variables
!trainable_variables
"regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
*__inference_dropout_18_layer_call_fn_49814
*__inference_dropout_18_layer_call_fn_49819?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_18_layer_call_and_return_conditional_losses_49824
E__inference_dropout_18_layer_call_and_return_conditional_losses_49836?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
':%@?2conv1d_28/kernel
:?2conv1d_28/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv1d_28_layer_call_fn_49845?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv1d_28_layer_call_and_return_conditional_losses_49861?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
?2?
0__inference_max_pooling1d_11_layer_call_fn_49866?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_49874?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
':%?@2conv1d_29/kernel
:@2conv1d_29/bias
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv1d_29_layer_call_fn_49883?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv1d_29_layer_call_and_return_conditional_losses_49899?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
!:@@2dense_22/kernel
:@2dense_22/bias
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_dense_22_layer_call_fn_49908?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_22_layer_call_and_return_conditional_losses_49939?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_global_max_pooling1d_11_layer_call_fn_49944?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
R__inference_global_max_pooling1d_11_layer_call_and_return_conditional_losses_49950?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
*__inference_dropout_19_layer_call_fn_49955
*__inference_dropout_19_layer_call_fn_49960?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_19_layer_call_and_return_conditional_losses_49965
E__inference_dropout_19_layer_call_and_return_conditional_losses_49977?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
!:@2dense_23/kernel
:2dense_23/bias
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_dense_23_layer_call_fn_49986?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_23_layer_call_and_return_conditional_losses_49997?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
$:"2predictions/kernel
:2predictions/bias
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_predictions_layer_call_fn_50006?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_predictions_layer_call_and_return_conditional_losses_50017?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
#__inference_signature_wrapper_49745input_13"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
"
_generic_user_object
?2?
__inference__creator_50022?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_50030?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_50035?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_50040?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_50045?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_50050?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
0:.
??@2Adam/embedding_11/embeddings/m
,:*@?2Adam/conv1d_28/kernel/m
": ?2Adam/conv1d_28/bias/m
,:*?@2Adam/conv1d_29/kernel/m
!:@2Adam/conv1d_29/bias/m
&:$@@2Adam/dense_22/kernel/m
 :@2Adam/dense_22/bias/m
&:$@2Adam/dense_23/kernel/m
 :2Adam/dense_23/bias/m
):'2Adam/predictions/kernel/m
#:!2Adam/predictions/bias/m
0:.
??@2Adam/embedding_11/embeddings/v
,:*@?2Adam/conv1d_28/kernel/v
": ?2Adam/conv1d_28/bias/v
,:*?@2Adam/conv1d_29/kernel/v
!:@2Adam/conv1d_29/bias/v
&:$@@2Adam/dense_22/kernel/v
 :@2Adam/dense_22/bias/v
&:$@2Adam/dense_23/kernel/v
 :2Adam/dense_23/bias/v
):'2Adam/predictions/kernel/v
#:!2Adam/predictions/bias/v
?B?
__inference_save_fn_50069checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_50077restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_56
__inference__creator_50022?

? 
? "? 6
__inference__creator_50040?

? 
? "? 8
__inference__destroyer_50035?

? 
? "? 8
__inference__destroyer_50050?

? 
? "? A
__inference__initializer_50030m???

? 
? "? :
__inference__initializer_50045?

? 
? "? ?
 __inference__wrapped_model_48636?m???'(56=>RSZ[1?.
'?$
"?
input_13?????????
? "9?6
4
predictions%?"
predictions?????????j
__inference_adapt_step_49793Jn???<
5?2
0?-?
??????????IteratorSpec 
? "
 ?
D__inference_conv1d_28_layer_call_and_return_conditional_losses_49861g'(4?1
*?'
%?"
inputs??????????@
? "+?(
!?
0???????????
? ?
)__inference_conv1d_28_layer_call_fn_49845Z'(4?1
*?'
%?"
inputs??????????@
? "?????????????
D__inference_conv1d_29_layer_call_and_return_conditional_losses_49899e564?1
*?'
%?"
inputs?????????b?
? ")?&
?
0?????????\@
? ?
)__inference_conv1d_29_layer_call_fn_49883X564?1
*?'
%?"
inputs?????????b?
? "??????????\@?
C__inference_dense_22_layer_call_and_return_conditional_losses_49939d=>3?0
)?&
$?!
inputs?????????\@
? ")?&
?
0?????????\@
? ?
(__inference_dense_22_layer_call_fn_49908W=>3?0
)?&
$?!
inputs?????????\@
? "??????????\@?
C__inference_dense_23_layer_call_and_return_conditional_losses_49997\RS/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? {
(__inference_dense_23_layer_call_fn_49986ORS/?,
%?"
 ?
inputs?????????@
? "???????????
E__inference_dropout_18_layer_call_and_return_conditional_losses_49824f8?5
.?+
%?"
inputs??????????@
p 
? "*?'
 ?
0??????????@
? ?
E__inference_dropout_18_layer_call_and_return_conditional_losses_49836f8?5
.?+
%?"
inputs??????????@
p
? "*?'
 ?
0??????????@
? ?
*__inference_dropout_18_layer_call_fn_49814Y8?5
.?+
%?"
inputs??????????@
p 
? "???????????@?
*__inference_dropout_18_layer_call_fn_49819Y8?5
.?+
%?"
inputs??????????@
p
? "???????????@?
E__inference_dropout_19_layer_call_and_return_conditional_losses_49965\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
E__inference_dropout_19_layer_call_and_return_conditional_losses_49977\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? }
*__inference_dropout_19_layer_call_fn_49955O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@}
*__inference_dropout_19_layer_call_fn_49960O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
G__inference_embedding_11_layer_call_and_return_conditional_losses_49809a0?-
&?#
!?
inputs??????????	
? "*?'
 ?
0??????????@
? ?
,__inference_embedding_11_layer_call_fn_49800T0?-
&?#
!?
inputs??????????	
? "???????????@?
R__inference_global_max_pooling1d_11_layer_call_and_return_conditional_losses_49950wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+
$?!
0??????????????????
? ?
7__inference_global_max_pooling1d_11_layer_call_fn_49944jE?B
;?8
6?3
inputs'???????????????????????????
? "!????????????????????
K__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_49874?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
0__inference_max_pooling1d_11_layer_call_fn_49866wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
C__inference_model_11_layer_call_and_return_conditional_losses_49274vm???'(56=>RSZ[9?6
/?,
"?
input_13?????????
p 

 
? "%?"
?
0?????????
? ?
C__inference_model_11_layer_call_and_return_conditional_losses_49358vm???'(56=>RSZ[9?6
/?,
"?
input_13?????????
p

 
? "%?"
?
0?????????
? ?
C__inference_model_11_layer_call_and_return_conditional_losses_49564tm???'(56=>RSZ[7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
C__inference_model_11_layer_call_and_return_conditional_losses_49708tm???'(56=>RSZ[7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
(__inference_model_11_layer_call_fn_48897im???'(56=>RSZ[9?6
/?,
"?
input_13?????????
p 

 
? "???????????
(__inference_model_11_layer_call_fn_49190im???'(56=>RSZ[9?6
/?,
"?
input_13?????????
p

 
? "???????????
(__inference_model_11_layer_call_fn_49399gm???'(56=>RSZ[7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
(__inference_model_11_layer_call_fn_49434gm???'(56=>RSZ[7?4
-?*
 ?
inputs?????????
p

 
? "???????????
F__inference_predictions_layer_call_and_return_conditional_losses_50017\Z[/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_predictions_layer_call_fn_50006OZ[/?,
%?"
 ?
inputs?????????
? "??????????y
__inference_restore_fn_50077YnK?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_50069?n&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
#__inference_signature_wrapper_49745?m???'(56=>RSZ[=?:
? 
3?0
.
input_13"?
input_13?????????"9?6
4
predictions%?"
predictions?????????