гн

ў╦
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
@
Softplus
features"T
activations"T"
Ttype:
2
╛
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.6.32v2.6.2-194-g92a6bb065498ёП	
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
оА*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
оА*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
АА*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:А*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	А@*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@ *
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
: *
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

: *
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
\
iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiter
U
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
t
Lookahead/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameLookahead/beta_1
m
$Lookahead/beta_1/Read/ReadVariableOpReadVariableOpLookahead/beta_1*
_output_shapes
: *
dtype0
t
Lookahead/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameLookahead/beta_2
m
$Lookahead/beta_2/Read/ReadVariableOpReadVariableOpLookahead/beta_2*
_output_shapes
: *
dtype0
r
Lookahead/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameLookahead/decay
k
#Lookahead/decay/Read/ReadVariableOpReadVariableOpLookahead/decay*
_output_shapes
: *
dtype0
В
Lookahead/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameLookahead/learning_rate
{
+Lookahead/learning_rate/Read/ReadVariableOpReadVariableOpLookahead/learning_rate*
_output_shapes
: *
dtype0
t
Lookahead/min_lrVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameLookahead/min_lr
m
$Lookahead/min_lr/Read/ReadVariableOpReadVariableOpLookahead/min_lr*
_output_shapes
: *
dtype0
В
Lookahead/sma_thresholdVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameLookahead/sma_threshold
{
+Lookahead/sma_threshold/Read/ReadVariableOpReadVariableOpLookahead/sma_threshold*
_output_shapes
: *
dtype0
~
Lookahead/total_stepsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameLookahead/total_steps
w
)Lookahead/total_steps/Read/ReadVariableOpReadVariableOpLookahead/total_steps*
_output_shapes
: *
dtype0
К
Lookahead/warmup_proportionVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameLookahead/warmup_proportion
Г
/Lookahead/warmup_proportion/Read/ReadVariableOpReadVariableOpLookahead/warmup_proportion*
_output_shapes
: *
dtype0
А
Lookahead/weight_decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameLookahead/weight_decay
y
*Lookahead/weight_decay/Read/ReadVariableOpReadVariableOpLookahead/weight_decay*
_output_shapes
: *
dtype0
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
Ф
Lookahead/dense/kernel/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape:
оА*,
shared_nameLookahead/dense/kernel/slow
Н
/Lookahead/dense/kernel/slow/Read/ReadVariableOpReadVariableOpLookahead/dense/kernel/slow* 
_output_shapes
:
оА*
dtype0
Л
Lookahead/dense/bias/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape:А**
shared_nameLookahead/dense/bias/slow
Д
-Lookahead/dense/bias/slow/Read/ReadVariableOpReadVariableOpLookahead/dense/bias/slow*
_output_shapes	
:А*
dtype0
Ш
Lookahead/dense_1/kernel/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*.
shared_nameLookahead/dense_1/kernel/slow
С
1Lookahead/dense_1/kernel/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_1/kernel/slow* 
_output_shapes
:
АА*
dtype0
П
Lookahead/dense_1/bias/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_nameLookahead/dense_1/bias/slow
И
/Lookahead/dense_1/bias/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_1/bias/slow*
_output_shapes	
:А*
dtype0
Ч
Lookahead/dense_2/kernel/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*.
shared_nameLookahead/dense_2/kernel/slow
Р
1Lookahead/dense_2/kernel/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_2/kernel/slow*
_output_shapes
:	А@*
dtype0
О
Lookahead/dense_2/bias/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameLookahead/dense_2/bias/slow
З
/Lookahead/dense_2/bias/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_2/bias/slow*
_output_shapes
:@*
dtype0
Ц
Lookahead/dense_3/kernel/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *.
shared_nameLookahead/dense_3/kernel/slow
П
1Lookahead/dense_3/kernel/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_3/kernel/slow*
_output_shapes

:@ *
dtype0
О
Lookahead/dense_3/bias/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameLookahead/dense_3/bias/slow
З
/Lookahead/dense_3/bias/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_3/bias/slow*
_output_shapes
: *
dtype0
Ц
Lookahead/dense_4/kernel/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *.
shared_nameLookahead/dense_4/kernel/slow
П
1Lookahead/dense_4/kernel/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_4/kernel/slow*
_output_shapes

: *
dtype0
О
Lookahead/dense_4/bias/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameLookahead/dense_4/bias/slow
З
/Lookahead/dense_4/bias/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_4/bias/slow*
_output_shapes
:*
dtype0
О
Lookahead/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
оА*)
shared_nameLookahead/dense/kernel/m
З
,Lookahead/dense/kernel/m/Read/ReadVariableOpReadVariableOpLookahead/dense/kernel/m* 
_output_shapes
:
оА*
dtype0
Е
Lookahead/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_nameLookahead/dense/bias/m
~
*Lookahead/dense/bias/m/Read/ReadVariableOpReadVariableOpLookahead/dense/bias/m*
_output_shapes	
:А*
dtype0
Т
Lookahead/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*+
shared_nameLookahead/dense_1/kernel/m
Л
.Lookahead/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpLookahead/dense_1/kernel/m* 
_output_shapes
:
АА*
dtype0
Й
Lookahead/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameLookahead/dense_1/bias/m
В
,Lookahead/dense_1/bias/m/Read/ReadVariableOpReadVariableOpLookahead/dense_1/bias/m*
_output_shapes	
:А*
dtype0
С
Lookahead/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*+
shared_nameLookahead/dense_2/kernel/m
К
.Lookahead/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpLookahead/dense_2/kernel/m*
_output_shapes
:	А@*
dtype0
И
Lookahead/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameLookahead/dense_2/bias/m
Б
,Lookahead/dense_2/bias/m/Read/ReadVariableOpReadVariableOpLookahead/dense_2/bias/m*
_output_shapes
:@*
dtype0
Р
Lookahead/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *+
shared_nameLookahead/dense_3/kernel/m
Й
.Lookahead/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpLookahead/dense_3/kernel/m*
_output_shapes

:@ *
dtype0
И
Lookahead/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameLookahead/dense_3/bias/m
Б
,Lookahead/dense_3/bias/m/Read/ReadVariableOpReadVariableOpLookahead/dense_3/bias/m*
_output_shapes
: *
dtype0
Р
Lookahead/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *+
shared_nameLookahead/dense_4/kernel/m
Й
.Lookahead/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpLookahead/dense_4/kernel/m*
_output_shapes

: *
dtype0
И
Lookahead/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameLookahead/dense_4/bias/m
Б
,Lookahead/dense_4/bias/m/Read/ReadVariableOpReadVariableOpLookahead/dense_4/bias/m*
_output_shapes
:*
dtype0
О
Lookahead/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
оА*)
shared_nameLookahead/dense/kernel/v
З
,Lookahead/dense/kernel/v/Read/ReadVariableOpReadVariableOpLookahead/dense/kernel/v* 
_output_shapes
:
оА*
dtype0
Е
Lookahead/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_nameLookahead/dense/bias/v
~
*Lookahead/dense/bias/v/Read/ReadVariableOpReadVariableOpLookahead/dense/bias/v*
_output_shapes	
:А*
dtype0
Т
Lookahead/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*+
shared_nameLookahead/dense_1/kernel/v
Л
.Lookahead/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpLookahead/dense_1/kernel/v* 
_output_shapes
:
АА*
dtype0
Й
Lookahead/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameLookahead/dense_1/bias/v
В
,Lookahead/dense_1/bias/v/Read/ReadVariableOpReadVariableOpLookahead/dense_1/bias/v*
_output_shapes	
:А*
dtype0
С
Lookahead/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*+
shared_nameLookahead/dense_2/kernel/v
К
.Lookahead/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpLookahead/dense_2/kernel/v*
_output_shapes
:	А@*
dtype0
И
Lookahead/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameLookahead/dense_2/bias/v
Б
,Lookahead/dense_2/bias/v/Read/ReadVariableOpReadVariableOpLookahead/dense_2/bias/v*
_output_shapes
:@*
dtype0
Р
Lookahead/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *+
shared_nameLookahead/dense_3/kernel/v
Й
.Lookahead/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpLookahead/dense_3/kernel/v*
_output_shapes

:@ *
dtype0
И
Lookahead/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameLookahead/dense_3/bias/v
Б
,Lookahead/dense_3/bias/v/Read/ReadVariableOpReadVariableOpLookahead/dense_3/bias/v*
_output_shapes
: *
dtype0
Р
Lookahead/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *+
shared_nameLookahead/dense_4/kernel/v
Й
.Lookahead/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpLookahead/dense_4/kernel/v*
_output_shapes

: *
dtype0
И
Lookahead/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameLookahead/dense_4/bias/v
Б
,Lookahead/dense_4/bias/v/Read/ReadVariableOpReadVariableOpLookahead/dense_4/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
їS
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*░S
valueжSBгS BЬS
л
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-1
layer-7
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-2
layer-12
layer-13
layer-14
layer-15
layer-16
layer_with_weights-3
layer-17
layer-18
layer-19
layer-20
layer-21
layer_with_weights-4
layer-22
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
 
R
trainable_variables
	variables
 regularization_losses
!	keras_api
h

"kernel
#bias
$trainable_variables
%	variables
&regularization_losses
'	keras_api

(	keras_api

)	keras_api

*	keras_api

+	keras_api
h

,kernel
-bias
.trainable_variables
/	variables
0regularization_losses
1	keras_api

2	keras_api

3	keras_api

4	keras_api

5	keras_api
h

6kernel
7bias
8trainable_variables
9	variables
:regularization_losses
;	keras_api

<	keras_api

=	keras_api

>	keras_api

?	keras_api
h

@kernel
Abias
Btrainable_variables
C	variables
Dregularization_losses
E	keras_api

F	keras_api

G	keras_api

H	keras_api

I	keras_api
h

Jkernel
Kbias
Ltrainable_variables
M	variables
Nregularization_losses
O	keras_api
г
Plh_base_optimizer
Qiter"slowЙ#slowК,slowЛ-slowМ6slowН7slowО@slowПAslowРJslowСKslowТ
F
"0
#1
,2
-3
64
75
@6
A7
J8
K9
F
"0
#1
,2
-3
64
75
@6
A7
J8
K9
 
н
Rnon_trainable_variables
Smetrics
trainable_variables
Tlayer_regularization_losses
	variables
Ulayer_metrics

Vlayers
regularization_losses
 
 
 
 
н
Wnon_trainable_variables
Xmetrics
Ylayer_regularization_losses
trainable_variables
	variables
Zlayer_metrics

[layers
 regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1

"0
#1
 
н
\non_trainable_variables
]metrics
^layer_regularization_losses
$trainable_variables
%	variables
_layer_metrics

`layers
&regularization_losses
 
 
 
 
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1

,0
-1
 
н
anon_trainable_variables
bmetrics
clayer_regularization_losses
.trainable_variables
/	variables
dlayer_metrics

elayers
0regularization_losses
 
 
 
 
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71

60
71
 
н
fnon_trainable_variables
gmetrics
hlayer_regularization_losses
8trainable_variables
9	variables
ilayer_metrics

jlayers
:regularization_losses
 
 
 
 
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

@0
A1

@0
A1
 
н
knon_trainable_variables
lmetrics
mlayer_regularization_losses
Btrainable_variables
C	variables
nlayer_metrics

olayers
Dregularization_losses
 
 
 
 
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

J0
K1

J0
K1
 
н
pnon_trainable_variables
qmetrics
rlayer_regularization_losses
Ltrainable_variables
M	variables
slayer_metrics

tlayers
Nregularization_losses
╫

ubeta_1

vbeta_2
	wdecay
xlearning_rate

ymin_lr
zsma_threshold
{total_steps
|warmup_proportion
}weight_decay"mУ#mФ,mХ-mЦ6mЧ7mШ@mЩAmЪJmЫKmЬ"vЭ#vЮ,vЯ-vа6vб7vв@vгAvдJvеKvж
CA
VARIABLE_VALUEiter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
 

~0
1
 
 
о
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
11
12
13
14
15
16
17
18
19
20
21
22
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
ca
VARIABLE_VALUELookahead/beta_1=optimizer/lh_base_optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUELookahead/beta_2=optimizer/lh_base_optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUELookahead/decay<optimizer/lh_base_optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUELookahead/learning_rateDoptimizer/lh_base_optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUELookahead/min_lr=optimizer/lh_base_optimizer/min_lr/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUELookahead/sma_thresholdDoptimizer/lh_base_optimizer/sma_threshold/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUELookahead/total_stepsBoptimizer/lh_base_optimizer/total_steps/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUELookahead/warmup_proportionHoptimizer/lh_base_optimizer/warmup_proportion/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUELookahead/weight_decayCoptimizer/lh_base_optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUE
8

Аtotal

Бcount
В	variables
Г	keras_api
I

Дtotal

Еcount
Ж
_fn_kwargs
З	variables
И	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

А0
Б1

В	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Д0
Е1

З	variables
ЗД
VARIABLE_VALUELookahead/dense/kernel/slowUlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUELookahead/dense/bias/slowSlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUELookahead/dense_1/kernel/slowUlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUELookahead/dense_1/bias/slowSlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUELookahead/dense_2/kernel/slowUlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUELookahead/dense_2/bias/slowSlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUELookahead/dense_3/kernel/slowUlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUELookahead/dense_3/bias/slowSlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUELookahead/dense_4/kernel/slowUlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUELookahead/dense_4/bias/slowSlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUELookahead/dense/kernel/mdlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUELookahead/dense/bias/mblayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ХТ
VARIABLE_VALUELookahead/dense_1/kernel/mdlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUELookahead/dense_1/bias/mblayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ХТ
VARIABLE_VALUELookahead/dense_2/kernel/mdlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUELookahead/dense_2/bias/mblayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ХТ
VARIABLE_VALUELookahead/dense_3/kernel/mdlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUELookahead/dense_3/bias/mblayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ХТ
VARIABLE_VALUELookahead/dense_4/kernel/mdlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUELookahead/dense_4/bias/mblayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUELookahead/dense/kernel/vdlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUELookahead/dense/bias/vblayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ХТ
VARIABLE_VALUELookahead/dense_1/kernel/vdlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUELookahead/dense_1/bias/vblayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ХТ
VARIABLE_VALUELookahead/dense_2/kernel/vdlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUELookahead/dense_2/bias/vblayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ХТ
VARIABLE_VALUELookahead/dense_3/kernel/vdlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUELookahead/dense_3/bias/vblayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ХТ
VARIABLE_VALUELookahead/dense_4/kernel/vdlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUELookahead/dense_4/bias/vblayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Д
serving_default_input_1Placeholder*,
_output_shapes
:         о*
dtype0*!
shape:         о
┌
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_27798
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
─
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpiter/Read/ReadVariableOp$Lookahead/beta_1/Read/ReadVariableOp$Lookahead/beta_2/Read/ReadVariableOp#Lookahead/decay/Read/ReadVariableOp+Lookahead/learning_rate/Read/ReadVariableOp$Lookahead/min_lr/Read/ReadVariableOp+Lookahead/sma_threshold/Read/ReadVariableOp)Lookahead/total_steps/Read/ReadVariableOp/Lookahead/warmup_proportion/Read/ReadVariableOp*Lookahead/weight_decay/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/Lookahead/dense/kernel/slow/Read/ReadVariableOp-Lookahead/dense/bias/slow/Read/ReadVariableOp1Lookahead/dense_1/kernel/slow/Read/ReadVariableOp/Lookahead/dense_1/bias/slow/Read/ReadVariableOp1Lookahead/dense_2/kernel/slow/Read/ReadVariableOp/Lookahead/dense_2/bias/slow/Read/ReadVariableOp1Lookahead/dense_3/kernel/slow/Read/ReadVariableOp/Lookahead/dense_3/bias/slow/Read/ReadVariableOp1Lookahead/dense_4/kernel/slow/Read/ReadVariableOp/Lookahead/dense_4/bias/slow/Read/ReadVariableOp,Lookahead/dense/kernel/m/Read/ReadVariableOp*Lookahead/dense/bias/m/Read/ReadVariableOp.Lookahead/dense_1/kernel/m/Read/ReadVariableOp,Lookahead/dense_1/bias/m/Read/ReadVariableOp.Lookahead/dense_2/kernel/m/Read/ReadVariableOp,Lookahead/dense_2/bias/m/Read/ReadVariableOp.Lookahead/dense_3/kernel/m/Read/ReadVariableOp,Lookahead/dense_3/bias/m/Read/ReadVariableOp.Lookahead/dense_4/kernel/m/Read/ReadVariableOp,Lookahead/dense_4/bias/m/Read/ReadVariableOp,Lookahead/dense/kernel/v/Read/ReadVariableOp*Lookahead/dense/bias/v/Read/ReadVariableOp.Lookahead/dense_1/kernel/v/Read/ReadVariableOp,Lookahead/dense_1/bias/v/Read/ReadVariableOp.Lookahead/dense_2/kernel/v/Read/ReadVariableOp,Lookahead/dense_2/bias/v/Read/ReadVariableOp.Lookahead/dense_3/kernel/v/Read/ReadVariableOp,Lookahead/dense_3/bias/v/Read/ReadVariableOp.Lookahead/dense_4/kernel/v/Read/ReadVariableOp,Lookahead/dense_4/bias/v/Read/ReadVariableOpConst*C
Tin<
:28	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *'
f"R 
__inference__traced_save_28235
З
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasiterLookahead/beta_1Lookahead/beta_2Lookahead/decayLookahead/learning_rateLookahead/min_lrLookahead/sma_thresholdLookahead/total_stepsLookahead/warmup_proportionLookahead/weight_decaytotalcounttotal_1count_1Lookahead/dense/kernel/slowLookahead/dense/bias/slowLookahead/dense_1/kernel/slowLookahead/dense_1/bias/slowLookahead/dense_2/kernel/slowLookahead/dense_2/bias/slowLookahead/dense_3/kernel/slowLookahead/dense_3/bias/slowLookahead/dense_4/kernel/slowLookahead/dense_4/bias/slowLookahead/dense/kernel/mLookahead/dense/bias/mLookahead/dense_1/kernel/mLookahead/dense_1/bias/mLookahead/dense_2/kernel/mLookahead/dense_2/bias/mLookahead/dense_3/kernel/mLookahead/dense_3/bias/mLookahead/dense_4/kernel/mLookahead/dense_4/bias/mLookahead/dense/kernel/vLookahead/dense/bias/vLookahead/dense_1/kernel/vLookahead/dense_1/bias/vLookahead/dense_2/kernel/vLookahead/dense_2/bias/vLookahead/dense_3/kernel/vLookahead/dense_3/bias/vLookahead/dense_4/kernel/vLookahead/dense_4/bias/v*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__traced_restore_28407Бй
═

ё
%__inference_model_layer_call_fn_27944

inputs
unknown:
оА
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_276212
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         о: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         о
 
_user_specified_nameinputs
д

є
B__inference_dense_4_layer_call_and_return_conditional_losses_28041

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
п

Ў
B__inference_dense_1_layer_call_and_return_conditional_losses_27409

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
д

є
B__inference_dense_3_layer_call_and_return_conditional_losses_28022

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:          2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Н.
└
@__inference_model_layer_call_and_return_conditional_losses_27621

inputs
dense_27583:
оА
dense_27585:	А!
dense_1_27591:
АА
dense_1_27593:	А 
dense_2_27599:	А@
dense_2_27601:@
dense_3_27607:@ 
dense_3_27609: 
dense_4_27615: 
dense_4_27617:
identityИвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallвdense_4/StatefulPartitionedCall╘
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         о* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_273782
flatten/PartitionedCallа
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_27583dense_27585*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_273902
dense/StatefulPartitionedCallЭ
tf.math.softplus/SoftplusSoftplus&dense/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:         А2
tf.math.softplus/SoftplusК
tf.math.tanh/TanhTanh'tf.math.softplus/Softplus:activations:0*
T0*(
_output_shapes
:         А2
tf.math.tanh/Tanhе
tf.math.multiply/MulMul&dense/StatefulPartitionedCall:output:0tf.math.tanh/Tanh:y:0*
T0*(
_output_shapes
:         А2
tf.math.multiply/Mulв
dense_1/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply/Mul:z:0dense_1_27591dense_1_27593*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_274092!
dense_1/StatefulPartitionedCallг
tf.math.softplus_1/SoftplusSoftplus(dense_1/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:         А2
tf.math.softplus_1/SoftplusР
tf.math.tanh_1/TanhTanh)tf.math.softplus_1/Softplus:activations:0*
T0*(
_output_shapes
:         А2
tf.math.tanh_1/Tanhн
tf.math.multiply_1/MulMul(dense_1/StatefulPartitionedCall:output:0tf.math.tanh_1/Tanh:y:0*
T0*(
_output_shapes
:         А2
tf.math.multiply_1/Mulг
dense_2/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_1/Mul:z:0dense_2_27599dense_2_27601*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_274282!
dense_2/StatefulPartitionedCallв
tf.math.softplus_2/SoftplusSoftplus(dense_2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:         @2
tf.math.softplus_2/SoftplusП
tf.math.tanh_2/TanhTanh)tf.math.softplus_2/Softplus:activations:0*
T0*'
_output_shapes
:         @2
tf.math.tanh_2/Tanhм
tf.math.multiply_2/MulMul(dense_2/StatefulPartitionedCall:output:0tf.math.tanh_2/Tanh:y:0*
T0*'
_output_shapes
:         @2
tf.math.multiply_2/Mulг
dense_3/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_2/Mul:z:0dense_3_27607dense_3_27609*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_274472!
dense_3/StatefulPartitionedCallв
tf.math.softplus_3/SoftplusSoftplus(dense_3/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:          2
tf.math.softplus_3/SoftplusП
tf.math.tanh_3/TanhTanh)tf.math.softplus_3/Softplus:activations:0*
T0*'
_output_shapes
:          2
tf.math.tanh_3/Tanhм
tf.math.multiply_3/MulMul(dense_3/StatefulPartitionedCall:output:0tf.math.tanh_3/Tanh:y:0*
T0*'
_output_shapes
:          2
tf.math.multiply_3/Mulг
dense_4/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_3/Mul:z:0dense_4_27615dense_4_27617*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_274662!
dense_4/StatefulPartitionedCallГ
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

IdentityЎ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         о: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:T P
,
_output_shapes
:         о
 
_user_specified_nameinputs
Ё
Ф
'__inference_dense_4_layer_call_fn_28050

inputs
unknown: 
	unknown_0:
identityИвStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_274662
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
н

Ї
@__inference_dense_layer_call_and_return_conditional_losses_27965

inputs2
matmul_readvariableop_resource:
оА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
оА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         о: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         о
 
_user_specified_nameinputs
и

Ї
B__inference_dense_2_layer_call_and_return_conditional_losses_28003

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
и

Ї
B__inference_dense_2_layer_call_and_return_conditional_losses_27428

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
є
Х
%__inference_dense_layer_call_fn_27974

inputs
unknown:
оА
	unknown_0:	А
identityИвStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_273902
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         о: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         о
 
_user_specified_nameinputs
▐
^
B__inference_flatten_layer_call_and_return_conditional_losses_27950

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    о   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         о2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         о2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         о:T P
,
_output_shapes
:         о
 
_user_specified_nameinputs
╨

Є
%__inference_model_layer_call_fn_27669
input_1
unknown:
оА
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_276212
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         о: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:         о
!
_user_specified_name	input_1
▐
^
B__inference_flatten_layer_call_and_return_conditional_losses_27378

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    о   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         о2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         о2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         о:T P
,
_output_shapes
:         о
 
_user_specified_nameinputs
д

є
B__inference_dense_4_layer_call_and_return_conditional_losses_27466

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
╟
C
'__inference_flatten_layer_call_fn_27955

inputs
identity─
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         о* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_273782
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         о2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         о:T P
,
_output_shapes
:         о
 
_user_specified_nameinputs
н

Ї
@__inference_dense_layer_call_and_return_conditional_losses_27390

inputs2
matmul_readvariableop_resource:
оА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
оА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         о: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         о
 
_user_specified_nameinputs
Р.
┴
@__inference_model_layer_call_and_return_conditional_losses_27711
input_1
dense_27673:
оА
dense_27675:	А!
dense_1_27681:
АА
dense_1_27683:	А 
dense_2_27689:	А@
dense_2_27691:@
dense_3_27697:@ 
dense_3_27699: 
dense_4_27705: 
dense_4_27707:
identityИвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallвdense_4/StatefulPartitionedCall╒
flatten/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         о* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_273782
flatten/PartitionedCallа
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_27673dense_27675*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_273902
dense/StatefulPartitionedCallЭ
tf.math.softplus/SoftplusSoftplus&dense/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:         А2
tf.math.softplus/SoftplusК
tf.math.tanh/TanhTanh'tf.math.softplus/Softplus:activations:0*
T0*(
_output_shapes
:         А2
tf.math.tanh/Tanhе
tf.math.multiply/MulMul&dense/StatefulPartitionedCall:output:0tf.math.tanh/Tanh:y:0*
T0*(
_output_shapes
:         А2
tf.math.multiply/Mulв
dense_1/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply/Mul:z:0dense_1_27681dense_1_27683*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_274092!
dense_1/StatefulPartitionedCallг
tf.math.softplus_1/SoftplusSoftplus(dense_1/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:         А2
tf.math.softplus_1/SoftplusР
tf.math.tanh_1/TanhTanh)tf.math.softplus_1/Softplus:activations:0*
T0*(
_output_shapes
:         А2
tf.math.tanh_1/Tanhн
tf.math.multiply_1/MulMul(dense_1/StatefulPartitionedCall:output:0tf.math.tanh_1/Tanh:y:0*
T0*(
_output_shapes
:         А2
tf.math.multiply_1/Mulг
dense_2/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_1/Mul:z:0dense_2_27689dense_2_27691*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_274282!
dense_2/StatefulPartitionedCallв
tf.math.softplus_2/SoftplusSoftplus(dense_2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:         @2
tf.math.softplus_2/SoftplusП
tf.math.tanh_2/TanhTanh)tf.math.softplus_2/Softplus:activations:0*
T0*'
_output_shapes
:         @2
tf.math.tanh_2/Tanhм
tf.math.multiply_2/MulMul(dense_2/StatefulPartitionedCall:output:0tf.math.tanh_2/Tanh:y:0*
T0*'
_output_shapes
:         @2
tf.math.multiply_2/Mulг
dense_3/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_2/Mul:z:0dense_3_27697dense_3_27699*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_274472!
dense_3/StatefulPartitionedCallв
tf.math.softplus_3/SoftplusSoftplus(dense_3/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:          2
tf.math.softplus_3/SoftplusП
tf.math.tanh_3/TanhTanh)tf.math.softplus_3/Softplus:activations:0*
T0*'
_output_shapes
:          2
tf.math.tanh_3/Tanhм
tf.math.multiply_3/MulMul(dense_3/StatefulPartitionedCall:output:0tf.math.tanh_3/Tanh:y:0*
T0*'
_output_shapes
:          2
tf.math.multiply_3/Mulг
dense_4/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_3/Mul:z:0dense_4_27705dense_4_27707*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_274662!
dense_4/StatefulPartitionedCallГ
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

IdentityЎ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         о: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:U Q
,
_output_shapes
:         о
!
_user_specified_name	input_1
о

Ё
#__inference_signature_wrapper_27798
input_1
unknown:
оА
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identityИвStatefulPartitionedCall╝
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_273652
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         о: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:         о
!
_user_specified_name	input_1
Ш<
╪
@__inference_model_layer_call_and_return_conditional_losses_27846

inputs8
$dense_matmul_readvariableop_resource:
оА4
%dense_biasadd_readvariableop_resource:	А:
&dense_1_matmul_readvariableop_resource:
АА6
'dense_1_biasadd_readvariableop_resource:	А9
&dense_2_matmul_readvariableop_resource:	А@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@ 5
'dense_3_biasadd_readvariableop_resource: 8
&dense_4_matmul_readvariableop_resource: 5
'dense_4_biasadd_readvariableop_resource:
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    о   2
flatten/ConstА
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:         о2
flatten/Reshapeб
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
оА*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense/MatMulЯ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
dense/BiasAdd/ReadVariableOpЪ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense/BiasAddН
tf.math.softplus/SoftplusSoftplusdense/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
tf.math.softplus/SoftplusК
tf.math.tanh/TanhTanh'tf.math.softplus/Softplus:activations:0*
T0*(
_output_shapes
:         А2
tf.math.tanh/TanhХ
tf.math.multiply/MulMuldense/BiasAdd:output:0tf.math.tanh/Tanh:y:0*
T0*(
_output_shapes
:         А2
tf.math.multiply/Mulз
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
dense_1/MatMul/ReadVariableOpЮ
dense_1/MatMulMatMultf.math.multiply/Mul:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_1/MatMulе
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_1/BiasAdd/ReadVariableOpв
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_1/BiasAddУ
tf.math.softplus_1/SoftplusSoftplusdense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
tf.math.softplus_1/SoftplusР
tf.math.tanh_1/TanhTanh)tf.math.softplus_1/Softplus:activations:0*
T0*(
_output_shapes
:         А2
tf.math.tanh_1/TanhЭ
tf.math.multiply_1/MulMuldense_1/BiasAdd:output:0tf.math.tanh_1/Tanh:y:0*
T0*(
_output_shapes
:         А2
tf.math.multiply_1/Mulж
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
dense_2/MatMul/ReadVariableOpЯ
dense_2/MatMulMatMultf.math.multiply_1/Mul:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_2/MatMulд
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOpб
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_2/BiasAddТ
tf.math.softplus_2/SoftplusSoftplusdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
tf.math.softplus_2/SoftplusП
tf.math.tanh_2/TanhTanh)tf.math.softplus_2/Softplus:activations:0*
T0*'
_output_shapes
:         @2
tf.math.tanh_2/TanhЬ
tf.math.multiply_2/MulMuldense_2/BiasAdd:output:0tf.math.tanh_2/Tanh:y:0*
T0*'
_output_shapes
:         @2
tf.math.multiply_2/Mulе
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
dense_3/MatMul/ReadVariableOpЯ
dense_3/MatMulMatMultf.math.multiply_2/Mul:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
dense_3/MatMulд
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_3/BiasAdd/ReadVariableOpб
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
dense_3/BiasAddТ
tf.math.softplus_3/SoftplusSoftplusdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:          2
tf.math.softplus_3/SoftplusП
tf.math.tanh_3/TanhTanh)tf.math.softplus_3/Softplus:activations:0*
T0*'
_output_shapes
:          2
tf.math.tanh_3/TanhЬ
tf.math.multiply_3/MulMuldense_3/BiasAdd:output:0tf.math.tanh_3/Tanh:y:0*
T0*'
_output_shapes
:          2
tf.math.multiply_3/Mulе
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_4/MatMul/ReadVariableOpЯ
dense_4/MatMulMatMultf.math.multiply_3/Mul:z:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_4/MatMulд
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOpб
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_4/BiasAdds
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         2

IdentityП
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         о: : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:T P
,
_output_shapes
:         о
 
_user_specified_nameinputs
п

Ў
B__inference_dense_1_layer_call_and_return_conditional_losses_27984

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
є
Х
'__inference_dense_2_layer_call_fn_28012

inputs
unknown:	А@
	unknown_0:@
identityИвStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_274282
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Н.
└
@__inference_model_layer_call_and_return_conditional_losses_27473

inputs
dense_27391:
оА
dense_27393:	А!
dense_1_27410:
АА
dense_1_27412:	А 
dense_2_27429:	А@
dense_2_27431:@
dense_3_27448:@ 
dense_3_27450: 
dense_4_27467: 
dense_4_27469:
identityИвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallвdense_4/StatefulPartitionedCall╘
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         о* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_273782
flatten/PartitionedCallа
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_27391dense_27393*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_273902
dense/StatefulPartitionedCallЭ
tf.math.softplus/SoftplusSoftplus&dense/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:         А2
tf.math.softplus/SoftplusК
tf.math.tanh/TanhTanh'tf.math.softplus/Softplus:activations:0*
T0*(
_output_shapes
:         А2
tf.math.tanh/Tanhе
tf.math.multiply/MulMul&dense/StatefulPartitionedCall:output:0tf.math.tanh/Tanh:y:0*
T0*(
_output_shapes
:         А2
tf.math.multiply/Mulв
dense_1/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply/Mul:z:0dense_1_27410dense_1_27412*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_274092!
dense_1/StatefulPartitionedCallг
tf.math.softplus_1/SoftplusSoftplus(dense_1/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:         А2
tf.math.softplus_1/SoftplusР
tf.math.tanh_1/TanhTanh)tf.math.softplus_1/Softplus:activations:0*
T0*(
_output_shapes
:         А2
tf.math.tanh_1/Tanhн
tf.math.multiply_1/MulMul(dense_1/StatefulPartitionedCall:output:0tf.math.tanh_1/Tanh:y:0*
T0*(
_output_shapes
:         А2
tf.math.multiply_1/Mulг
dense_2/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_1/Mul:z:0dense_2_27429dense_2_27431*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_274282!
dense_2/StatefulPartitionedCallв
tf.math.softplus_2/SoftplusSoftplus(dense_2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:         @2
tf.math.softplus_2/SoftplusП
tf.math.tanh_2/TanhTanh)tf.math.softplus_2/Softplus:activations:0*
T0*'
_output_shapes
:         @2
tf.math.tanh_2/Tanhм
tf.math.multiply_2/MulMul(dense_2/StatefulPartitionedCall:output:0tf.math.tanh_2/Tanh:y:0*
T0*'
_output_shapes
:         @2
tf.math.multiply_2/Mulг
dense_3/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_2/Mul:z:0dense_3_27448dense_3_27450*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_274472!
dense_3/StatefulPartitionedCallв
tf.math.softplus_3/SoftplusSoftplus(dense_3/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:          2
tf.math.softplus_3/SoftplusП
tf.math.tanh_3/TanhTanh)tf.math.softplus_3/Softplus:activations:0*
T0*'
_output_shapes
:          2
tf.math.tanh_3/Tanhм
tf.math.multiply_3/MulMul(dense_3/StatefulPartitionedCall:output:0tf.math.tanh_3/Tanh:y:0*
T0*'
_output_shapes
:          2
tf.math.multiply_3/Mulг
dense_4/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_3/Mul:z:0dense_4_27467dense_4_27469*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_274662!
dense_4/StatefulPartitionedCallГ
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

IdentityЎ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         о: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:T P
,
_output_shapes
:         о
 
_user_specified_nameinputs
Ш<
╪
@__inference_model_layer_call_and_return_conditional_losses_27894

inputs8
$dense_matmul_readvariableop_resource:
оА4
%dense_biasadd_readvariableop_resource:	А:
&dense_1_matmul_readvariableop_resource:
АА6
'dense_1_biasadd_readvariableop_resource:	А9
&dense_2_matmul_readvariableop_resource:	А@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@ 5
'dense_3_biasadd_readvariableop_resource: 8
&dense_4_matmul_readvariableop_resource: 5
'dense_4_biasadd_readvariableop_resource:
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    о   2
flatten/ConstА
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:         о2
flatten/Reshapeб
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
оА*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense/MatMulЯ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
dense/BiasAdd/ReadVariableOpЪ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense/BiasAddН
tf.math.softplus/SoftplusSoftplusdense/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
tf.math.softplus/SoftplusК
tf.math.tanh/TanhTanh'tf.math.softplus/Softplus:activations:0*
T0*(
_output_shapes
:         А2
tf.math.tanh/TanhХ
tf.math.multiply/MulMuldense/BiasAdd:output:0tf.math.tanh/Tanh:y:0*
T0*(
_output_shapes
:         А2
tf.math.multiply/Mulз
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
dense_1/MatMul/ReadVariableOpЮ
dense_1/MatMulMatMultf.math.multiply/Mul:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_1/MatMulе
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_1/BiasAdd/ReadVariableOpв
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_1/BiasAddУ
tf.math.softplus_1/SoftplusSoftplusdense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
tf.math.softplus_1/SoftplusР
tf.math.tanh_1/TanhTanh)tf.math.softplus_1/Softplus:activations:0*
T0*(
_output_shapes
:         А2
tf.math.tanh_1/TanhЭ
tf.math.multiply_1/MulMuldense_1/BiasAdd:output:0tf.math.tanh_1/Tanh:y:0*
T0*(
_output_shapes
:         А2
tf.math.multiply_1/Mulж
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
dense_2/MatMul/ReadVariableOpЯ
dense_2/MatMulMatMultf.math.multiply_1/Mul:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_2/MatMulд
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOpб
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_2/BiasAddТ
tf.math.softplus_2/SoftplusSoftplusdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
tf.math.softplus_2/SoftplusП
tf.math.tanh_2/TanhTanh)tf.math.softplus_2/Softplus:activations:0*
T0*'
_output_shapes
:         @2
tf.math.tanh_2/TanhЬ
tf.math.multiply_2/MulMuldense_2/BiasAdd:output:0tf.math.tanh_2/Tanh:y:0*
T0*'
_output_shapes
:         @2
tf.math.multiply_2/Mulе
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
dense_3/MatMul/ReadVariableOpЯ
dense_3/MatMulMatMultf.math.multiply_2/Mul:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
dense_3/MatMulд
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_3/BiasAdd/ReadVariableOpб
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
dense_3/BiasAddТ
tf.math.softplus_3/SoftplusSoftplusdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:          2
tf.math.softplus_3/SoftplusП
tf.math.tanh_3/TanhTanh)tf.math.softplus_3/Softplus:activations:0*
T0*'
_output_shapes
:          2
tf.math.tanh_3/TanhЬ
tf.math.multiply_3/MulMuldense_3/BiasAdd:output:0tf.math.tanh_3/Tanh:y:0*
T0*'
_output_shapes
:          2
tf.math.multiply_3/Mulе
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_4/MatMul/ReadVariableOpЯ
dense_4/MatMulMatMultf.math.multiply_3/Mul:z:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_4/MatMulд
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOpб
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_4/BiasAdds
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         2

IdentityП
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         о: : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:T P
,
_output_shapes
:         о
 
_user_specified_nameinputs
ў
Ч
'__inference_dense_1_layer_call_fn_27993

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_274092
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
∙э
э!
!__inference__traced_restore_28407
file_prefix1
assignvariableop_dense_kernel:
оА,
assignvariableop_1_dense_bias:	А5
!assignvariableop_2_dense_1_kernel:
АА.
assignvariableop_3_dense_1_bias:	А4
!assignvariableop_4_dense_2_kernel:	А@-
assignvariableop_5_dense_2_bias:@3
!assignvariableop_6_dense_3_kernel:@ -
assignvariableop_7_dense_3_bias: 3
!assignvariableop_8_dense_4_kernel: -
assignvariableop_9_dense_4_bias:"
assignvariableop_10_iter:	 .
$assignvariableop_11_lookahead_beta_1: .
$assignvariableop_12_lookahead_beta_2: -
#assignvariableop_13_lookahead_decay: 5
+assignvariableop_14_lookahead_learning_rate: .
$assignvariableop_15_lookahead_min_lr: 5
+assignvariableop_16_lookahead_sma_threshold: 3
)assignvariableop_17_lookahead_total_steps: 9
/assignvariableop_18_lookahead_warmup_proportion: 4
*assignvariableop_19_lookahead_weight_decay: #
assignvariableop_20_total: #
assignvariableop_21_count: %
assignvariableop_22_total_1: %
assignvariableop_23_count_1: C
/assignvariableop_24_lookahead_dense_kernel_slow:
оА<
-assignvariableop_25_lookahead_dense_bias_slow:	АE
1assignvariableop_26_lookahead_dense_1_kernel_slow:
АА>
/assignvariableop_27_lookahead_dense_1_bias_slow:	АD
1assignvariableop_28_lookahead_dense_2_kernel_slow:	А@=
/assignvariableop_29_lookahead_dense_2_bias_slow:@C
1assignvariableop_30_lookahead_dense_3_kernel_slow:@ =
/assignvariableop_31_lookahead_dense_3_bias_slow: C
1assignvariableop_32_lookahead_dense_4_kernel_slow: =
/assignvariableop_33_lookahead_dense_4_bias_slow:@
,assignvariableop_34_lookahead_dense_kernel_m:
оА9
*assignvariableop_35_lookahead_dense_bias_m:	АB
.assignvariableop_36_lookahead_dense_1_kernel_m:
АА;
,assignvariableop_37_lookahead_dense_1_bias_m:	АA
.assignvariableop_38_lookahead_dense_2_kernel_m:	А@:
,assignvariableop_39_lookahead_dense_2_bias_m:@@
.assignvariableop_40_lookahead_dense_3_kernel_m:@ :
,assignvariableop_41_lookahead_dense_3_bias_m: @
.assignvariableop_42_lookahead_dense_4_kernel_m: :
,assignvariableop_43_lookahead_dense_4_bias_m:@
,assignvariableop_44_lookahead_dense_kernel_v:
оА9
*assignvariableop_45_lookahead_dense_bias_v:	АB
.assignvariableop_46_lookahead_dense_1_kernel_v:
АА;
,assignvariableop_47_lookahead_dense_1_bias_v:	АA
.assignvariableop_48_lookahead_dense_2_kernel_v:	А@:
,assignvariableop_49_lookahead_dense_2_bias_v:@@
.assignvariableop_50_lookahead_dense_3_kernel_v:@ :
,assignvariableop_51_lookahead_dense_3_bias_v: @
.assignvariableop_52_lookahead_dense_4_kernel_v: :
,assignvariableop_53_lookahead_dense_4_bias_v:
identity_55ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9ъ"
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*Ў!
valueь!Bщ!7B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB=optimizer/lh_base_optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB=optimizer/lh_base_optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/lh_base_optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBDoptimizer/lh_base_optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB=optimizer/lh_base_optimizer/min_lr/.ATTRIBUTES/VARIABLE_VALUEBDoptimizer/lh_base_optimizer/sma_threshold/.ATTRIBUTES/VARIABLE_VALUEBBoptimizer/lh_base_optimizer/total_steps/.ATTRIBUTES/VARIABLE_VALUEBHoptimizer/lh_base_optimizer/warmup_proportion/.ATTRIBUTES/VARIABLE_VALUEBCoptimizer/lh_base_optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names¤
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*Б
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices┴
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Є
_output_shapes▀
▄:::::::::::::::::::::::::::::::::::::::::::::::::::::::*E
dtypes;
927	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЬ
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1в
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2ж
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3д
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4ж
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5д
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6ж
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7д
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8ж
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9д
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10а
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11м
AssignVariableOp_11AssignVariableOp$assignvariableop_11_lookahead_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12м
AssignVariableOp_12AssignVariableOp$assignvariableop_12_lookahead_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13л
AssignVariableOp_13AssignVariableOp#assignvariableop_13_lookahead_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14│
AssignVariableOp_14AssignVariableOp+assignvariableop_14_lookahead_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15м
AssignVariableOp_15AssignVariableOp$assignvariableop_15_lookahead_min_lrIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16│
AssignVariableOp_16AssignVariableOp+assignvariableop_16_lookahead_sma_thresholdIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17▒
AssignVariableOp_17AssignVariableOp)assignvariableop_17_lookahead_total_stepsIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18╖
AssignVariableOp_18AssignVariableOp/assignvariableop_18_lookahead_warmup_proportionIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19▓
AssignVariableOp_19AssignVariableOp*assignvariableop_19_lookahead_weight_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20б
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21б
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22г
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23г
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24╖
AssignVariableOp_24AssignVariableOp/assignvariableop_24_lookahead_dense_kernel_slowIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25╡
AssignVariableOp_25AssignVariableOp-assignvariableop_25_lookahead_dense_bias_slowIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26╣
AssignVariableOp_26AssignVariableOp1assignvariableop_26_lookahead_dense_1_kernel_slowIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27╖
AssignVariableOp_27AssignVariableOp/assignvariableop_27_lookahead_dense_1_bias_slowIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28╣
AssignVariableOp_28AssignVariableOp1assignvariableop_28_lookahead_dense_2_kernel_slowIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29╖
AssignVariableOp_29AssignVariableOp/assignvariableop_29_lookahead_dense_2_bias_slowIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30╣
AssignVariableOp_30AssignVariableOp1assignvariableop_30_lookahead_dense_3_kernel_slowIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31╖
AssignVariableOp_31AssignVariableOp/assignvariableop_31_lookahead_dense_3_bias_slowIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32╣
AssignVariableOp_32AssignVariableOp1assignvariableop_32_lookahead_dense_4_kernel_slowIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33╖
AssignVariableOp_33AssignVariableOp/assignvariableop_33_lookahead_dense_4_bias_slowIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34┤
AssignVariableOp_34AssignVariableOp,assignvariableop_34_lookahead_dense_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35▓
AssignVariableOp_35AssignVariableOp*assignvariableop_35_lookahead_dense_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36╢
AssignVariableOp_36AssignVariableOp.assignvariableop_36_lookahead_dense_1_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37┤
AssignVariableOp_37AssignVariableOp,assignvariableop_37_lookahead_dense_1_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38╢
AssignVariableOp_38AssignVariableOp.assignvariableop_38_lookahead_dense_2_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39┤
AssignVariableOp_39AssignVariableOp,assignvariableop_39_lookahead_dense_2_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40╢
AssignVariableOp_40AssignVariableOp.assignvariableop_40_lookahead_dense_3_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41┤
AssignVariableOp_41AssignVariableOp,assignvariableop_41_lookahead_dense_3_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42╢
AssignVariableOp_42AssignVariableOp.assignvariableop_42_lookahead_dense_4_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43┤
AssignVariableOp_43AssignVariableOp,assignvariableop_43_lookahead_dense_4_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44┤
AssignVariableOp_44AssignVariableOp,assignvariableop_44_lookahead_dense_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45▓
AssignVariableOp_45AssignVariableOp*assignvariableop_45_lookahead_dense_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46╢
AssignVariableOp_46AssignVariableOp.assignvariableop_46_lookahead_dense_1_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47┤
AssignVariableOp_47AssignVariableOp,assignvariableop_47_lookahead_dense_1_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48╢
AssignVariableOp_48AssignVariableOp.assignvariableop_48_lookahead_dense_2_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49┤
AssignVariableOp_49AssignVariableOp,assignvariableop_49_lookahead_dense_2_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50╢
AssignVariableOp_50AssignVariableOp.assignvariableop_50_lookahead_dense_3_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51┤
AssignVariableOp_51AssignVariableOp,assignvariableop_51_lookahead_dense_3_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52╢
AssignVariableOp_52AssignVariableOp.assignvariableop_52_lookahead_dense_4_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53┤
AssignVariableOp_53AssignVariableOp,assignvariableop_53_lookahead_dense_4_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_539
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpВ

Identity_54Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_54f
Identity_55IdentityIdentity_54:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_55ъ	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_55Identity_55:output:0*Б
_input_shapesp
n: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Юs
о
__inference__traced_save_28235
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop#
savev2_iter_read_readvariableop	/
+savev2_lookahead_beta_1_read_readvariableop/
+savev2_lookahead_beta_2_read_readvariableop.
*savev2_lookahead_decay_read_readvariableop6
2savev2_lookahead_learning_rate_read_readvariableop/
+savev2_lookahead_min_lr_read_readvariableop6
2savev2_lookahead_sma_threshold_read_readvariableop4
0savev2_lookahead_total_steps_read_readvariableop:
6savev2_lookahead_warmup_proportion_read_readvariableop5
1savev2_lookahead_weight_decay_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_lookahead_dense_kernel_slow_read_readvariableop8
4savev2_lookahead_dense_bias_slow_read_readvariableop<
8savev2_lookahead_dense_1_kernel_slow_read_readvariableop:
6savev2_lookahead_dense_1_bias_slow_read_readvariableop<
8savev2_lookahead_dense_2_kernel_slow_read_readvariableop:
6savev2_lookahead_dense_2_bias_slow_read_readvariableop<
8savev2_lookahead_dense_3_kernel_slow_read_readvariableop:
6savev2_lookahead_dense_3_bias_slow_read_readvariableop<
8savev2_lookahead_dense_4_kernel_slow_read_readvariableop:
6savev2_lookahead_dense_4_bias_slow_read_readvariableop7
3savev2_lookahead_dense_kernel_m_read_readvariableop5
1savev2_lookahead_dense_bias_m_read_readvariableop9
5savev2_lookahead_dense_1_kernel_m_read_readvariableop7
3savev2_lookahead_dense_1_bias_m_read_readvariableop9
5savev2_lookahead_dense_2_kernel_m_read_readvariableop7
3savev2_lookahead_dense_2_bias_m_read_readvariableop9
5savev2_lookahead_dense_3_kernel_m_read_readvariableop7
3savev2_lookahead_dense_3_bias_m_read_readvariableop9
5savev2_lookahead_dense_4_kernel_m_read_readvariableop7
3savev2_lookahead_dense_4_bias_m_read_readvariableop7
3savev2_lookahead_dense_kernel_v_read_readvariableop5
1savev2_lookahead_dense_bias_v_read_readvariableop9
5savev2_lookahead_dense_1_kernel_v_read_readvariableop7
3savev2_lookahead_dense_1_bias_v_read_readvariableop9
5savev2_lookahead_dense_2_kernel_v_read_readvariableop7
3savev2_lookahead_dense_2_bias_v_read_readvariableop9
5savev2_lookahead_dense_3_kernel_v_read_readvariableop7
3savev2_lookahead_dense_3_bias_v_read_readvariableop9
5savev2_lookahead_dense_4_kernel_v_read_readvariableop7
3savev2_lookahead_dense_4_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameф"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*Ў!
valueь!Bщ!7B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB=optimizer/lh_base_optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB=optimizer/lh_base_optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/lh_base_optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBDoptimizer/lh_base_optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB=optimizer/lh_base_optimizer/min_lr/.ATTRIBUTES/VARIABLE_VALUEBDoptimizer/lh_base_optimizer/sma_threshold/.ATTRIBUTES/VARIABLE_VALUEBBoptimizer/lh_base_optimizer/total_steps/.ATTRIBUTES/VARIABLE_VALUEBHoptimizer/lh_base_optimizer/warmup_proportion/.ATTRIBUTES/VARIABLE_VALUEBCoptimizer/lh_base_optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesў
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*Б
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices█
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableopsavev2_iter_read_readvariableop+savev2_lookahead_beta_1_read_readvariableop+savev2_lookahead_beta_2_read_readvariableop*savev2_lookahead_decay_read_readvariableop2savev2_lookahead_learning_rate_read_readvariableop+savev2_lookahead_min_lr_read_readvariableop2savev2_lookahead_sma_threshold_read_readvariableop0savev2_lookahead_total_steps_read_readvariableop6savev2_lookahead_warmup_proportion_read_readvariableop1savev2_lookahead_weight_decay_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_lookahead_dense_kernel_slow_read_readvariableop4savev2_lookahead_dense_bias_slow_read_readvariableop8savev2_lookahead_dense_1_kernel_slow_read_readvariableop6savev2_lookahead_dense_1_bias_slow_read_readvariableop8savev2_lookahead_dense_2_kernel_slow_read_readvariableop6savev2_lookahead_dense_2_bias_slow_read_readvariableop8savev2_lookahead_dense_3_kernel_slow_read_readvariableop6savev2_lookahead_dense_3_bias_slow_read_readvariableop8savev2_lookahead_dense_4_kernel_slow_read_readvariableop6savev2_lookahead_dense_4_bias_slow_read_readvariableop3savev2_lookahead_dense_kernel_m_read_readvariableop1savev2_lookahead_dense_bias_m_read_readvariableop5savev2_lookahead_dense_1_kernel_m_read_readvariableop3savev2_lookahead_dense_1_bias_m_read_readvariableop5savev2_lookahead_dense_2_kernel_m_read_readvariableop3savev2_lookahead_dense_2_bias_m_read_readvariableop5savev2_lookahead_dense_3_kernel_m_read_readvariableop3savev2_lookahead_dense_3_bias_m_read_readvariableop5savev2_lookahead_dense_4_kernel_m_read_readvariableop3savev2_lookahead_dense_4_bias_m_read_readvariableop3savev2_lookahead_dense_kernel_v_read_readvariableop1savev2_lookahead_dense_bias_v_read_readvariableop5savev2_lookahead_dense_1_kernel_v_read_readvariableop3savev2_lookahead_dense_1_bias_v_read_readvariableop5savev2_lookahead_dense_2_kernel_v_read_readvariableop3savev2_lookahead_dense_2_bias_v_read_readvariableop5savev2_lookahead_dense_3_kernel_v_read_readvariableop3savev2_lookahead_dense_3_bias_v_read_readvariableop5savev2_lookahead_dense_4_kernel_v_read_readvariableop3savev2_lookahead_dense_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *E
dtypes;
927	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*С
_input_shapes 
№: :
оА:А:
АА:А:	А@:@:@ : : :: : : : : : : : : : : : : : :
оА:А:
АА:А:	А@:@:@ : : ::
оА:А:
АА:А:	А@:@:@ : : ::
оА:А:
АА:А:	А@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
оА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$	 

_output_shapes

: : 


_output_shapes
::

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
оА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А@: 

_output_shapes
:@:$ 

_output_shapes

:@ :  

_output_shapes
: :$! 

_output_shapes

: : "

_output_shapes
::&#"
 
_output_shapes
:
оА:!$

_output_shapes	
:А:&%"
 
_output_shapes
:
АА:!&

_output_shapes	
:А:%'!

_output_shapes
:	А@: (

_output_shapes
:@:$) 

_output_shapes

:@ : *

_output_shapes
: :$+ 

_output_shapes

: : ,

_output_shapes
::&-"
 
_output_shapes
:
оА:!.

_output_shapes	
:А:&/"
 
_output_shapes
:
АА:!0

_output_shapes	
:А:%1!

_output_shapes
:	А@: 2

_output_shapes
:@:$3 

_output_shapes

:@ : 4

_output_shapes
: :$5 

_output_shapes

: : 6

_output_shapes
::7

_output_shapes
: 
Р.
┴
@__inference_model_layer_call_and_return_conditional_losses_27753
input_1
dense_27715:
оА
dense_27717:	А!
dense_1_27723:
АА
dense_1_27725:	А 
dense_2_27731:	А@
dense_2_27733:@
dense_3_27739:@ 
dense_3_27741: 
dense_4_27747: 
dense_4_27749:
identityИвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallвdense_4/StatefulPartitionedCall╒
flatten/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         о* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_273782
flatten/PartitionedCallа
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_27715dense_27717*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_273902
dense/StatefulPartitionedCallЭ
tf.math.softplus/SoftplusSoftplus&dense/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:         А2
tf.math.softplus/SoftplusК
tf.math.tanh/TanhTanh'tf.math.softplus/Softplus:activations:0*
T0*(
_output_shapes
:         А2
tf.math.tanh/Tanhе
tf.math.multiply/MulMul&dense/StatefulPartitionedCall:output:0tf.math.tanh/Tanh:y:0*
T0*(
_output_shapes
:         А2
tf.math.multiply/Mulв
dense_1/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply/Mul:z:0dense_1_27723dense_1_27725*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_274092!
dense_1/StatefulPartitionedCallг
tf.math.softplus_1/SoftplusSoftplus(dense_1/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:         А2
tf.math.softplus_1/SoftplusР
tf.math.tanh_1/TanhTanh)tf.math.softplus_1/Softplus:activations:0*
T0*(
_output_shapes
:         А2
tf.math.tanh_1/Tanhн
tf.math.multiply_1/MulMul(dense_1/StatefulPartitionedCall:output:0tf.math.tanh_1/Tanh:y:0*
T0*(
_output_shapes
:         А2
tf.math.multiply_1/Mulг
dense_2/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_1/Mul:z:0dense_2_27731dense_2_27733*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_274282!
dense_2/StatefulPartitionedCallв
tf.math.softplus_2/SoftplusSoftplus(dense_2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:         @2
tf.math.softplus_2/SoftplusП
tf.math.tanh_2/TanhTanh)tf.math.softplus_2/Softplus:activations:0*
T0*'
_output_shapes
:         @2
tf.math.tanh_2/Tanhм
tf.math.multiply_2/MulMul(dense_2/StatefulPartitionedCall:output:0tf.math.tanh_2/Tanh:y:0*
T0*'
_output_shapes
:         @2
tf.math.multiply_2/Mulг
dense_3/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_2/Mul:z:0dense_3_27739dense_3_27741*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_274472!
dense_3/StatefulPartitionedCallв
tf.math.softplus_3/SoftplusSoftplus(dense_3/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:          2
tf.math.softplus_3/SoftplusП
tf.math.tanh_3/TanhTanh)tf.math.softplus_3/Softplus:activations:0*
T0*'
_output_shapes
:          2
tf.math.tanh_3/Tanhм
tf.math.multiply_3/MulMul(dense_3/StatefulPartitionedCall:output:0tf.math.tanh_3/Tanh:y:0*
T0*'
_output_shapes
:          2
tf.math.multiply_3/Mulг
dense_4/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_3/Mul:z:0dense_4_27747dense_4_27749*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_274662!
dense_4/StatefulPartitionedCallГ
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

IdentityЎ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         о: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:U Q
,
_output_shapes
:         о
!
_user_specified_name	input_1
Ё
Ф
'__inference_dense_3_layer_call_fn_28031

inputs
unknown:@ 
	unknown_0: 
identityИвStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_274472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
▀C
▒
 __inference__wrapped_model_27365
input_1>
*model_dense_matmul_readvariableop_resource:
оА:
+model_dense_biasadd_readvariableop_resource:	А@
,model_dense_1_matmul_readvariableop_resource:
АА<
-model_dense_1_biasadd_readvariableop_resource:	А?
,model_dense_2_matmul_readvariableop_resource:	А@;
-model_dense_2_biasadd_readvariableop_resource:@>
,model_dense_3_matmul_readvariableop_resource:@ ;
-model_dense_3_biasadd_readvariableop_resource: >
,model_dense_4_matmul_readvariableop_resource: ;
-model_dense_4_biasadd_readvariableop_resource:
identityИв"model/dense/BiasAdd/ReadVariableOpв!model/dense/MatMul/ReadVariableOpв$model/dense_1/BiasAdd/ReadVariableOpв#model/dense_1/MatMul/ReadVariableOpв$model/dense_2/BiasAdd/ReadVariableOpв#model/dense_2/MatMul/ReadVariableOpв$model/dense_3/BiasAdd/ReadVariableOpв#model/dense_3/MatMul/ReadVariableOpв$model/dense_4/BiasAdd/ReadVariableOpв#model/dense_4/MatMul/ReadVariableOp{
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    о   2
model/flatten/ConstУ
model/flatten/ReshapeReshapeinput_1model/flatten/Const:output:0*
T0*(
_output_shapes
:         о2
model/flatten/Reshape│
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
оА*
dtype02#
!model/dense/MatMul/ReadVariableOp░
model/dense/MatMulMatMulmodel/flatten/Reshape:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model/dense/MatMul▒
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02$
"model/dense/BiasAdd/ReadVariableOp▓
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model/dense/BiasAddЯ
model/tf.math.softplus/SoftplusSoftplusmodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         А2!
model/tf.math.softplus/SoftplusЬ
model/tf.math.tanh/TanhTanh-model/tf.math.softplus/Softplus:activations:0*
T0*(
_output_shapes
:         А2
model/tf.math.tanh/Tanhн
model/tf.math.multiply/MulMulmodel/dense/BiasAdd:output:0model/tf.math.tanh/Tanh:y:0*
T0*(
_output_shapes
:         А2
model/tf.math.multiply/Mul╣
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02%
#model/dense_1/MatMul/ReadVariableOp╢
model/dense_1/MatMulMatMulmodel/tf.math.multiply/Mul:z:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model/dense_1/MatMul╖
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$model/dense_1/BiasAdd/ReadVariableOp║
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model/dense_1/BiasAddе
!model/tf.math.softplus_1/SoftplusSoftplusmodel/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         А2#
!model/tf.math.softplus_1/Softplusв
model/tf.math.tanh_1/TanhTanh/model/tf.math.softplus_1/Softplus:activations:0*
T0*(
_output_shapes
:         А2
model/tf.math.tanh_1/Tanh╡
model/tf.math.multiply_1/MulMulmodel/dense_1/BiasAdd:output:0model/tf.math.tanh_1/Tanh:y:0*
T0*(
_output_shapes
:         А2
model/tf.math.multiply_1/Mul╕
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02%
#model/dense_2/MatMul/ReadVariableOp╖
model/dense_2/MatMulMatMul model/tf.math.multiply_1/Mul:z:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model/dense_2/MatMul╢
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$model/dense_2/BiasAdd/ReadVariableOp╣
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model/dense_2/BiasAddд
!model/tf.math.softplus_2/SoftplusSoftplusmodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         @2#
!model/tf.math.softplus_2/Softplusб
model/tf.math.tanh_2/TanhTanh/model/tf.math.softplus_2/Softplus:activations:0*
T0*'
_output_shapes
:         @2
model/tf.math.tanh_2/Tanh┤
model/tf.math.multiply_2/MulMulmodel/dense_2/BiasAdd:output:0model/tf.math.tanh_2/Tanh:y:0*
T0*'
_output_shapes
:         @2
model/tf.math.multiply_2/Mul╖
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02%
#model/dense_3/MatMul/ReadVariableOp╖
model/dense_3/MatMulMatMul model/tf.math.multiply_2/Mul:z:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
model/dense_3/MatMul╢
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02&
$model/dense_3/BiasAdd/ReadVariableOp╣
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
model/dense_3/BiasAddд
!model/tf.math.softplus_3/SoftplusSoftplusmodel/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:          2#
!model/tf.math.softplus_3/Softplusб
model/tf.math.tanh_3/TanhTanh/model/tf.math.softplus_3/Softplus:activations:0*
T0*'
_output_shapes
:          2
model/tf.math.tanh_3/Tanh┤
model/tf.math.multiply_3/MulMulmodel/dense_3/BiasAdd:output:0model/tf.math.tanh_3/Tanh:y:0*
T0*'
_output_shapes
:          2
model/tf.math.multiply_3/Mul╖
#model/dense_4/MatMul/ReadVariableOpReadVariableOp,model_dense_4_matmul_readvariableop_resource*
_output_shapes

: *
dtype02%
#model/dense_4/MatMul/ReadVariableOp╖
model/dense_4/MatMulMatMul model/tf.math.multiply_3/Mul:z:0+model/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
model/dense_4/MatMul╢
$model/dense_4/BiasAdd/ReadVariableOpReadVariableOp-model_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model/dense_4/BiasAdd/ReadVariableOp╣
model/dense_4/BiasAddBiasAddmodel/dense_4/MatMul:product:0,model/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
model/dense_4/BiasAddy
IdentityIdentitymodel/dense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity╦
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp%^model/dense_4/BiasAdd/ReadVariableOp$^model/dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         о: : : : : : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2J
#model/dense_3/MatMul/ReadVariableOp#model/dense_3/MatMul/ReadVariableOp2L
$model/dense_4/BiasAdd/ReadVariableOp$model/dense_4/BiasAdd/ReadVariableOp2J
#model/dense_4/MatMul/ReadVariableOp#model/dense_4/MatMul/ReadVariableOp:U Q
,
_output_shapes
:         о
!
_user_specified_name	input_1
д

є
B__inference_dense_3_layer_call_and_return_conditional_losses_27447

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:          2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
═

ё
%__inference_model_layer_call_fn_27919

inputs
unknown:
оА
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_274732
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         о: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         о
 
_user_specified_nameinputs
╨

Є
%__inference_model_layer_call_fn_27496
input_1
unknown:
оА
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_274732
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         о: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:         о
!
_user_specified_name	input_1"иL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*п
serving_defaultЫ
@
input_15
serving_default_input_1:0         о;
dense_40
StatefulPartitionedCall:0         tensorflow/serving/predict:╧Л
а
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-1
layer-7
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-2
layer-12
layer-13
layer-14
layer-15
layer-16
layer_with_weights-3
layer-17
layer-18
layer-19
layer-20
layer-21
layer_with_weights-4
layer-22
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
+з&call_and_return_all_conditional_losses
и_default_save_signature
й__call__"
_tf_keras_network
"
_tf_keras_input_layer
з
trainable_variables
	variables
 regularization_losses
!	keras_api
+к&call_and_return_all_conditional_losses
л__call__"
_tf_keras_layer
╜

"kernel
#bias
$trainable_variables
%	variables
&regularization_losses
'	keras_api
+м&call_and_return_all_conditional_losses
н__call__"
_tf_keras_layer
(
(	keras_api"
_tf_keras_layer
(
)	keras_api"
_tf_keras_layer
(
*	keras_api"
_tf_keras_layer
(
+	keras_api"
_tf_keras_layer
╜

,kernel
-bias
.trainable_variables
/	variables
0regularization_losses
1	keras_api
+о&call_and_return_all_conditional_losses
п__call__"
_tf_keras_layer
(
2	keras_api"
_tf_keras_layer
(
3	keras_api"
_tf_keras_layer
(
4	keras_api"
_tf_keras_layer
(
5	keras_api"
_tf_keras_layer
╜

6kernel
7bias
8trainable_variables
9	variables
:regularization_losses
;	keras_api
+░&call_and_return_all_conditional_losses
▒__call__"
_tf_keras_layer
(
<	keras_api"
_tf_keras_layer
(
=	keras_api"
_tf_keras_layer
(
>	keras_api"
_tf_keras_layer
(
?	keras_api"
_tf_keras_layer
╜

@kernel
Abias
Btrainable_variables
C	variables
Dregularization_losses
E	keras_api
+▓&call_and_return_all_conditional_losses
│__call__"
_tf_keras_layer
(
F	keras_api"
_tf_keras_layer
(
G	keras_api"
_tf_keras_layer
(
H	keras_api"
_tf_keras_layer
(
I	keras_api"
_tf_keras_layer
╜

Jkernel
Kbias
Ltrainable_variables
M	variables
Nregularization_losses
O	keras_api
+┤&call_and_return_all_conditional_losses
╡__call__"
_tf_keras_layer
╢
Plh_base_optimizer
Qiter"slowЙ#slowК,slowЛ-slowМ6slowН7slowО@slowПAslowРJslowСKslowТ"
	optimizer
f
"0
#1
,2
-3
64
75
@6
A7
J8
K9"
trackable_list_wrapper
f
"0
#1
,2
-3
64
75
@6
A7
J8
K9"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
Rnon_trainable_variables
Smetrics
trainable_variables
Tlayer_regularization_losses
	variables
Ulayer_metrics

Vlayers
regularization_losses
й__call__
и_default_save_signature
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
-
╢serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
Wnon_trainable_variables
Xmetrics
Ylayer_regularization_losses
trainable_variables
	variables
Zlayer_metrics

[layers
 regularization_losses
л__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
 :
оА2dense/kernel
:А2
dense/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
\non_trainable_variables
]metrics
^layer_regularization_losses
$trainable_variables
%	variables
_layer_metrics

`layers
&regularization_losses
н__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
": 
АА2dense_1/kernel
:А2dense_1/bias
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
anon_trainable_variables
bmetrics
clayer_regularization_losses
.trainable_variables
/	variables
dlayer_metrics

elayers
0regularization_losses
п__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
!:	А@2dense_2/kernel
:@2dense_2/bias
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
░
fnon_trainable_variables
gmetrics
hlayer_regularization_losses
8trainable_variables
9	variables
ilayer_metrics

jlayers
:regularization_losses
▒__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 :@ 2dense_3/kernel
: 2dense_3/bias
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
knon_trainable_variables
lmetrics
mlayer_regularization_losses
Btrainable_variables
C	variables
nlayer_metrics

olayers
Dregularization_losses
│__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 : 2dense_4/kernel
:2dense_4/bias
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
pnon_trainable_variables
qmetrics
rlayer_regularization_losses
Ltrainable_variables
M	variables
slayer_metrics

tlayers
Nregularization_losses
╡__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses"
_generic_user_object
ъ

ubeta_1

vbeta_2
	wdecay
xlearning_rate

ymin_lr
zsma_threshold
{total_steps
|warmup_proportion
}weight_decay"mУ#mФ,mХ-mЦ6mЧ7mШ@mЩAmЪJmЫKmЬ"vЭ#vЮ,vЯ-vа6vб7vв@vгAvдJvеKvж"
	optimizer
:	 (2iter
 "
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╬
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
11
12
13
14
15
16
17
18
19
20
21
22"
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
: (2Lookahead/beta_1
: (2Lookahead/beta_2
: (2Lookahead/decay
!: (2Lookahead/learning_rate
: (2Lookahead/min_lr
!: (2Lookahead/sma_threshold
: (2Lookahead/total_steps
%:# (2Lookahead/warmup_proportion
 : (2Lookahead/weight_decay
R

Аtotal

Бcount
В	variables
Г	keras_api"
_tf_keras_metric
c

Дtotal

Еcount
Ж
_fn_kwargs
З	variables
И	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
А0
Б1"
trackable_list_wrapper
.
В	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Д0
Е1"
trackable_list_wrapper
.
З	variables"
_generic_user_object
-:+
оА2Lookahead/dense/kernel/slow
&:$А2Lookahead/dense/bias/slow
/:-
АА2Lookahead/dense_1/kernel/slow
(:&А2Lookahead/dense_1/bias/slow
.:,	А@2Lookahead/dense_2/kernel/slow
':%@2Lookahead/dense_2/bias/slow
-:+@ 2Lookahead/dense_3/kernel/slow
':% 2Lookahead/dense_3/bias/slow
-:+ 2Lookahead/dense_4/kernel/slow
':%2Lookahead/dense_4/bias/slow
*:(
оА2Lookahead/dense/kernel/m
#:!А2Lookahead/dense/bias/m
,:*
АА2Lookahead/dense_1/kernel/m
%:#А2Lookahead/dense_1/bias/m
+:)	А@2Lookahead/dense_2/kernel/m
$:"@2Lookahead/dense_2/bias/m
*:(@ 2Lookahead/dense_3/kernel/m
$:" 2Lookahead/dense_3/bias/m
*:( 2Lookahead/dense_4/kernel/m
$:"2Lookahead/dense_4/bias/m
*:(
оА2Lookahead/dense/kernel/v
#:!А2Lookahead/dense/bias/v
,:*
АА2Lookahead/dense_1/kernel/v
%:#А2Lookahead/dense_1/bias/v
+:)	А@2Lookahead/dense_2/kernel/v
$:"@2Lookahead/dense_2/bias/v
*:(@ 2Lookahead/dense_3/kernel/v
$:" 2Lookahead/dense_3/bias/v
*:( 2Lookahead/dense_4/kernel/v
$:"2Lookahead/dense_4/bias/v
╬2╦
@__inference_model_layer_call_and_return_conditional_losses_27846
@__inference_model_layer_call_and_return_conditional_losses_27894
@__inference_model_layer_call_and_return_conditional_losses_27711
@__inference_model_layer_call_and_return_conditional_losses_27753└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╦B╚
 __inference__wrapped_model_27365input_1"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
т2▀
%__inference_model_layer_call_fn_27496
%__inference_model_layer_call_fn_27919
%__inference_model_layer_call_fn_27944
%__inference_model_layer_call_fn_27669└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ь2щ
B__inference_flatten_layer_call_and_return_conditional_losses_27950в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╤2╬
'__inference_flatten_layer_call_fn_27955в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_dense_layer_call_and_return_conditional_losses_27965в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╧2╠
%__inference_dense_layer_call_fn_27974в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_dense_1_layer_call_and_return_conditional_losses_27984в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╤2╬
'__inference_dense_1_layer_call_fn_27993в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_dense_2_layer_call_and_return_conditional_losses_28003в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╤2╬
'__inference_dense_2_layer_call_fn_28012в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_dense_3_layer_call_and_return_conditional_losses_28022в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╤2╬
'__inference_dense_3_layer_call_fn_28031в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_dense_4_layer_call_and_return_conditional_losses_28041в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╤2╬
'__inference_dense_4_layer_call_fn_28050в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╩B╟
#__inference_signature_wrapper_27798input_1"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 Ъ
 __inference__wrapped_model_27365v
"#,-67@AJK5в2
+в(
&К#
input_1         о
к "1к.
,
dense_4!К
dense_4         д
B__inference_dense_1_layer_call_and_return_conditional_losses_27984^,-0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ |
'__inference_dense_1_layer_call_fn_27993Q,-0в-
&в#
!К
inputs         А
к "К         Аг
B__inference_dense_2_layer_call_and_return_conditional_losses_28003]670в-
&в#
!К
inputs         А
к "%в"
К
0         @
Ъ {
'__inference_dense_2_layer_call_fn_28012P670в-
&в#
!К
inputs         А
к "К         @в
B__inference_dense_3_layer_call_and_return_conditional_losses_28022\@A/в,
%в"
 К
inputs         @
к "%в"
К
0          
Ъ z
'__inference_dense_3_layer_call_fn_28031O@A/в,
%в"
 К
inputs         @
к "К          в
B__inference_dense_4_layer_call_and_return_conditional_losses_28041\JK/в,
%в"
 К
inputs          
к "%в"
К
0         
Ъ z
'__inference_dense_4_layer_call_fn_28050OJK/в,
%в"
 К
inputs          
к "К         в
@__inference_dense_layer_call_and_return_conditional_losses_27965^"#0в-
&в#
!К
inputs         о
к "&в#
К
0         А
Ъ z
%__inference_dense_layer_call_fn_27974Q"#0в-
&в#
!К
inputs         о
к "К         Ад
B__inference_flatten_layer_call_and_return_conditional_losses_27950^4в1
*в'
%К"
inputs         о
к "&в#
К
0         о
Ъ |
'__inference_flatten_layer_call_fn_27955Q4в1
*в'
%К"
inputs         о
к "К         о╢
@__inference_model_layer_call_and_return_conditional_losses_27711r
"#,-67@AJK=в:
3в0
&К#
input_1         о
p 

 
к "%в"
К
0         
Ъ ╢
@__inference_model_layer_call_and_return_conditional_losses_27753r
"#,-67@AJK=в:
3в0
&К#
input_1         о
p

 
к "%в"
К
0         
Ъ ╡
@__inference_model_layer_call_and_return_conditional_losses_27846q
"#,-67@AJK<в9
2в/
%К"
inputs         о
p 

 
к "%в"
К
0         
Ъ ╡
@__inference_model_layer_call_and_return_conditional_losses_27894q
"#,-67@AJK<в9
2в/
%К"
inputs         о
p

 
к "%в"
К
0         
Ъ О
%__inference_model_layer_call_fn_27496e
"#,-67@AJK=в:
3в0
&К#
input_1         о
p 

 
к "К         О
%__inference_model_layer_call_fn_27669e
"#,-67@AJK=в:
3в0
&К#
input_1         о
p

 
к "К         Н
%__inference_model_layer_call_fn_27919d
"#,-67@AJK<в9
2в/
%К"
inputs         о
p 

 
к "К         Н
%__inference_model_layer_call_fn_27944d
"#,-67@AJK<в9
2в/
%К"
inputs         о
p

 
к "К         й
#__inference_signature_wrapper_27798Б
"#,-67@AJK@в=
в 
6к3
1
input_1&К#
input_1         о"1к.
,
dense_4!К
dense_4         