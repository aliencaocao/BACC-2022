£­

÷Ë
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
¾
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
executor_typestring 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.32v2.6.2-194-g92a6bb065498ñ	
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
®*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
®*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	@*
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

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

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

Lookahead/warmup_proportionVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameLookahead/warmup_proportion

/Lookahead/warmup_proportion/Read/ReadVariableOpReadVariableOpLookahead/warmup_proportion*
_output_shapes
: *
dtype0

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

Lookahead/dense/kernel/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape:
®*,
shared_nameLookahead/dense/kernel/slow

/Lookahead/dense/kernel/slow/Read/ReadVariableOpReadVariableOpLookahead/dense/kernel/slow* 
_output_shapes
:
®*
dtype0

Lookahead/dense/bias/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameLookahead/dense/bias/slow

-Lookahead/dense/bias/slow/Read/ReadVariableOpReadVariableOpLookahead/dense/bias/slow*
_output_shapes	
:*
dtype0

Lookahead/dense_1/kernel/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*.
shared_nameLookahead/dense_1/kernel/slow

1Lookahead/dense_1/kernel/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_1/kernel/slow* 
_output_shapes
:
*
dtype0

Lookahead/dense_1/bias/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameLookahead/dense_1/bias/slow

/Lookahead/dense_1/bias/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_1/bias/slow*
_output_shapes	
:*
dtype0

Lookahead/dense_2/kernel/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*.
shared_nameLookahead/dense_2/kernel/slow

1Lookahead/dense_2/kernel/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_2/kernel/slow*
_output_shapes
:	@*
dtype0

Lookahead/dense_2/bias/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameLookahead/dense_2/bias/slow

/Lookahead/dense_2/bias/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_2/bias/slow*
_output_shapes
:@*
dtype0

Lookahead/dense_3/kernel/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *.
shared_nameLookahead/dense_3/kernel/slow

1Lookahead/dense_3/kernel/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_3/kernel/slow*
_output_shapes

:@ *
dtype0

Lookahead/dense_3/bias/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameLookahead/dense_3/bias/slow

/Lookahead/dense_3/bias/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_3/bias/slow*
_output_shapes
: *
dtype0

Lookahead/dense_4/kernel/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *.
shared_nameLookahead/dense_4/kernel/slow

1Lookahead/dense_4/kernel/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_4/kernel/slow*
_output_shapes

: *
dtype0

Lookahead/dense_4/bias/slowVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameLookahead/dense_4/bias/slow

/Lookahead/dense_4/bias/slow/Read/ReadVariableOpReadVariableOpLookahead/dense_4/bias/slow*
_output_shapes
:*
dtype0

Lookahead/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
®*)
shared_nameLookahead/dense/kernel/m

,Lookahead/dense/kernel/m/Read/ReadVariableOpReadVariableOpLookahead/dense/kernel/m* 
_output_shapes
:
®*
dtype0

Lookahead/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameLookahead/dense/bias/m
~
*Lookahead/dense/bias/m/Read/ReadVariableOpReadVariableOpLookahead/dense/bias/m*
_output_shapes	
:*
dtype0

Lookahead/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameLookahead/dense_1/kernel/m

.Lookahead/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpLookahead/dense_1/kernel/m* 
_output_shapes
:
*
dtype0

Lookahead/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameLookahead/dense_1/bias/m

,Lookahead/dense_1/bias/m/Read/ReadVariableOpReadVariableOpLookahead/dense_1/bias/m*
_output_shapes	
:*
dtype0

Lookahead/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*+
shared_nameLookahead/dense_2/kernel/m

.Lookahead/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpLookahead/dense_2/kernel/m*
_output_shapes
:	@*
dtype0

Lookahead/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameLookahead/dense_2/bias/m

,Lookahead/dense_2/bias/m/Read/ReadVariableOpReadVariableOpLookahead/dense_2/bias/m*
_output_shapes
:@*
dtype0

Lookahead/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *+
shared_nameLookahead/dense_3/kernel/m

.Lookahead/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpLookahead/dense_3/kernel/m*
_output_shapes

:@ *
dtype0

Lookahead/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameLookahead/dense_3/bias/m

,Lookahead/dense_3/bias/m/Read/ReadVariableOpReadVariableOpLookahead/dense_3/bias/m*
_output_shapes
: *
dtype0

Lookahead/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *+
shared_nameLookahead/dense_4/kernel/m

.Lookahead/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpLookahead/dense_4/kernel/m*
_output_shapes

: *
dtype0

Lookahead/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameLookahead/dense_4/bias/m

,Lookahead/dense_4/bias/m/Read/ReadVariableOpReadVariableOpLookahead/dense_4/bias/m*
_output_shapes
:*
dtype0

Lookahead/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
®*)
shared_nameLookahead/dense/kernel/v

,Lookahead/dense/kernel/v/Read/ReadVariableOpReadVariableOpLookahead/dense/kernel/v* 
_output_shapes
:
®*
dtype0

Lookahead/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameLookahead/dense/bias/v
~
*Lookahead/dense/bias/v/Read/ReadVariableOpReadVariableOpLookahead/dense/bias/v*
_output_shapes	
:*
dtype0

Lookahead/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameLookahead/dense_1/kernel/v

.Lookahead/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpLookahead/dense_1/kernel/v* 
_output_shapes
:
*
dtype0

Lookahead/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameLookahead/dense_1/bias/v

,Lookahead/dense_1/bias/v/Read/ReadVariableOpReadVariableOpLookahead/dense_1/bias/v*
_output_shapes	
:*
dtype0

Lookahead/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*+
shared_nameLookahead/dense_2/kernel/v

.Lookahead/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpLookahead/dense_2/kernel/v*
_output_shapes
:	@*
dtype0

Lookahead/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameLookahead/dense_2/bias/v

,Lookahead/dense_2/bias/v/Read/ReadVariableOpReadVariableOpLookahead/dense_2/bias/v*
_output_shapes
:@*
dtype0

Lookahead/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *+
shared_nameLookahead/dense_3/kernel/v

.Lookahead/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpLookahead/dense_3/kernel/v*
_output_shapes

:@ *
dtype0

Lookahead/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameLookahead/dense_3/bias/v

,Lookahead/dense_3/bias/v/Read/ReadVariableOpReadVariableOpLookahead/dense_3/bias/v*
_output_shapes
: *
dtype0

Lookahead/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *+
shared_nameLookahead/dense_4/kernel/v

.Lookahead/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpLookahead/dense_4/kernel/v*
_output_shapes

: *
dtype0

Lookahead/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameLookahead/dense_4/bias/v

,Lookahead/dense_4/bias/v/Read/ReadVariableOpReadVariableOpLookahead/dense_4/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
õS
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*°S
value¦SB£S BS
«
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
£
Plh_base_optimizer
Qiter"slow#slow,slow-slow6slow7slow@slowAslowJslowKslow
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
­
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
­
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
­
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
­
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
­
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
­
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
­
pnon_trainable_variables
qmetrics
rlayer_regularization_losses
Ltrainable_variables
M	variables
slayer_metrics

tlayers
Nregularization_losses
×

ubeta_1

vbeta_2
	wdecay
xlearning_rate

ymin_lr
zsma_threshold
{total_steps
|warmup_proportion
}weight_decay"m#m,m-m6m7m@mAmJmKm"v#v,v-v 6v¡7v¢@v£Av¤Jv¥Kv¦
CA
VARIABLE_VALUEiter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
 

~0
1
 
 
®
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

total

count
	variables
	keras_api
I

total

count

_fn_kwargs
	variables
	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

	variables

VARIABLE_VALUELookahead/dense/kernel/slowUlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense/bias/slowSlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_1/kernel/slowUlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_1/bias/slowSlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_2/kernel/slowUlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_2/bias/slowSlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_3/kernel/slowUlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_3/bias/slowSlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_4/kernel/slowUlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_4/bias/slowSlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense/kernel/mdlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense/bias/mblayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_1/kernel/mdlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_1/bias/mblayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_2/kernel/mdlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_2/bias/mblayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_3/kernel/mdlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_3/bias/mblayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_4/kernel/mdlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_4/bias/mblayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense/kernel/vdlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense/bias/vblayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_1/kernel/vdlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_1/bias/vblayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_2/kernel/vdlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_2/bias/vblayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_3/kernel/vdlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_3/bias/vblayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_4/kernel/vdlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELookahead/dense_4/bias/vblayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_1Placeholder*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®*
dtype0*!
shape:ÿÿÿÿÿÿÿÿÿ®
Ú
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_27798
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ä
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
GPU2*0J 8 *'
f"R 
__inference__traced_save_28235

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
GPU2*0J 8 **
f%R#
!__inference__traced_restore_28407©
Í

ñ
%__inference_model_layer_call_fn_27944

inputs
unknown:
®
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_276212
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ®: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
 
_user_specified_nameinputs
¤

ó
B__inference_dense_4_layer_call_and_return_conditional_losses_28041

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¯

ö
B__inference_dense_1_layer_call_and_return_conditional_losses_27409

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤

ó
B__inference_dense_3_layer_call_and_return_conditional_losses_28022

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
.
À
@__inference_model_layer_call_and_return_conditional_losses_27621

inputs
dense_27583:
®
dense_27585:	!
dense_1_27591:

dense_1_27593:	 
dense_2_27599:	@
dense_2_27601:@
dense_3_27607:@ 
dense_3_27609: 
dense_4_27615: 
dense_4_27617:
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCallÔ
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_273782
flatten/PartitionedCall 
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_27583dense_27585*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_273902
dense/StatefulPartitionedCall
tf.math.softplus/SoftplusSoftplus&dense/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.softplus/Softplus
tf.math.tanh/TanhTanh'tf.math.softplus/Softplus:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh/Tanh¥
tf.math.multiply/MulMul&dense/StatefulPartitionedCall:output:0tf.math.tanh/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply/Mul¢
dense_1/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply/Mul:z:0dense_1_27591dense_1_27593*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_274092!
dense_1/StatefulPartitionedCall£
tf.math.softplus_1/SoftplusSoftplus(dense_1/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.softplus_1/Softplus
tf.math.tanh_1/TanhTanh)tf.math.softplus_1/Softplus:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh_1/Tanh­
tf.math.multiply_1/MulMul(dense_1/StatefulPartitionedCall:output:0tf.math.tanh_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_1/Mul£
dense_2/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_1/Mul:z:0dense_2_27599dense_2_27601*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_274282!
dense_2/StatefulPartitionedCall¢
tf.math.softplus_2/SoftplusSoftplus(dense_2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.softplus_2/Softplus
tf.math.tanh_2/TanhTanh)tf.math.softplus_2/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.tanh_2/Tanh¬
tf.math.multiply_2/MulMul(dense_2/StatefulPartitionedCall:output:0tf.math.tanh_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.multiply_2/Mul£
dense_3/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_2/Mul:z:0dense_3_27607dense_3_27609*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_274472!
dense_3/StatefulPartitionedCall¢
tf.math.softplus_3/SoftplusSoftplus(dense_3/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.softplus_3/Softplus
tf.math.tanh_3/TanhTanh)tf.math.softplus_3/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.tanh_3/Tanh¬
tf.math.multiply_3/MulMul(dense_3/StatefulPartitionedCall:output:0tf.math.tanh_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.multiply_3/Mul£
dense_4/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_3/Mul:z:0dense_4_27615dense_4_27617*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_274662!
dense_4/StatefulPartitionedCall
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityö
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ®: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
 
_user_specified_nameinputs
ð

'__inference_dense_4_layer_call_fn_28050

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_274662
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
­

ô
@__inference_dense_layer_call_and_return_conditional_losses_27965

inputs2
matmul_readvariableop_resource:
®.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
®*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ®: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
 
_user_specified_nameinputs
¨

ô
B__inference_dense_2_layer_call_and_return_conditional_losses_28003

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨

ô
B__inference_dense_2_layer_call_and_return_conditional_losses_27428

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

%__inference_dense_layer_call_fn_27974

inputs
unknown:
®
	unknown_0:	
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_273902
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ®: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
 
_user_specified_nameinputs
Þ
^
B__inference_flatten_layer_call_and_return_conditional_losses_27950

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ®   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ®:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
 
_user_specified_nameinputs
Ð

ò
%__inference_model_layer_call_fn_27669
input_1
unknown:
®
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_276212
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ®: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
!
_user_specified_name	input_1
Þ
^
B__inference_flatten_layer_call_and_return_conditional_losses_27378

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ®   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ®:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
 
_user_specified_nameinputs
¤

ó
B__inference_dense_4_layer_call_and_return_conditional_losses_27466

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ç
C
'__inference_flatten_layer_call_fn_27955

inputs
identityÄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_273782
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ®:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
 
_user_specified_nameinputs
­

ô
@__inference_dense_layer_call_and_return_conditional_losses_27390

inputs2
matmul_readvariableop_resource:
®.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
®*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ®: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
 
_user_specified_nameinputs
.
Á
@__inference_model_layer_call_and_return_conditional_losses_27711
input_1
dense_27673:
®
dense_27675:	!
dense_1_27681:

dense_1_27683:	 
dense_2_27689:	@
dense_2_27691:@
dense_3_27697:@ 
dense_3_27699: 
dense_4_27705: 
dense_4_27707:
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCallÕ
flatten/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_273782
flatten/PartitionedCall 
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_27673dense_27675*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_273902
dense/StatefulPartitionedCall
tf.math.softplus/SoftplusSoftplus&dense/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.softplus/Softplus
tf.math.tanh/TanhTanh'tf.math.softplus/Softplus:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh/Tanh¥
tf.math.multiply/MulMul&dense/StatefulPartitionedCall:output:0tf.math.tanh/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply/Mul¢
dense_1/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply/Mul:z:0dense_1_27681dense_1_27683*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_274092!
dense_1/StatefulPartitionedCall£
tf.math.softplus_1/SoftplusSoftplus(dense_1/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.softplus_1/Softplus
tf.math.tanh_1/TanhTanh)tf.math.softplus_1/Softplus:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh_1/Tanh­
tf.math.multiply_1/MulMul(dense_1/StatefulPartitionedCall:output:0tf.math.tanh_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_1/Mul£
dense_2/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_1/Mul:z:0dense_2_27689dense_2_27691*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_274282!
dense_2/StatefulPartitionedCall¢
tf.math.softplus_2/SoftplusSoftplus(dense_2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.softplus_2/Softplus
tf.math.tanh_2/TanhTanh)tf.math.softplus_2/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.tanh_2/Tanh¬
tf.math.multiply_2/MulMul(dense_2/StatefulPartitionedCall:output:0tf.math.tanh_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.multiply_2/Mul£
dense_3/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_2/Mul:z:0dense_3_27697dense_3_27699*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_274472!
dense_3/StatefulPartitionedCall¢
tf.math.softplus_3/SoftplusSoftplus(dense_3/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.softplus_3/Softplus
tf.math.tanh_3/TanhTanh)tf.math.softplus_3/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.tanh_3/Tanh¬
tf.math.multiply_3/MulMul(dense_3/StatefulPartitionedCall:output:0tf.math.tanh_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.multiply_3/Mul£
dense_4/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_3/Mul:z:0dense_4_27705dense_4_27707*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_274662!
dense_4/StatefulPartitionedCall
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityö
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ®: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
!
_user_specified_name	input_1
®

ð
#__inference_signature_wrapper_27798
input_1
unknown:
®
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCall¼
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_273652
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ®: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
!
_user_specified_name	input_1
<
Ø
@__inference_model_layer_call_and_return_conditional_losses_27846

inputs8
$dense_matmul_readvariableop_resource:
®4
%dense_biasadd_readvariableop_resource:	:
&dense_1_matmul_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	9
&dense_2_matmul_readvariableop_resource:	@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@ 5
'dense_3_biasadd_readvariableop_resource: 8
&dense_4_matmul_readvariableop_resource: 5
'dense_4_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ®   2
flatten/Const
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®2
flatten/Reshape¡
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
®*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/BiasAdd
tf.math.softplus/SoftplusSoftplusdense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.softplus/Softplus
tf.math.tanh/TanhTanh'tf.math.softplus/Softplus:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh/Tanh
tf.math.multiply/MulMuldense/BiasAdd:output:0tf.math.tanh/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply/Mul§
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMultf.math.multiply/Mul:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/MatMul¥
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp¢
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/BiasAdd
tf.math.softplus_1/SoftplusSoftplusdense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.softplus_1/Softplus
tf.math.tanh_1/TanhTanh)tf.math.softplus_1/Softplus:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh_1/Tanh
tf.math.multiply_1/MulMuldense_1/BiasAdd:output:0tf.math.tanh_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_1/Mul¦
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dense_2/MatMul/ReadVariableOp
dense_2/MatMulMatMultf.math.multiply_1/Mul:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_2/MatMul¤
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp¡
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_2/BiasAdd
tf.math.softplus_2/SoftplusSoftplusdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.softplus_2/Softplus
tf.math.tanh_2/TanhTanh)tf.math.softplus_2/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.tanh_2/Tanh
tf.math.multiply_2/MulMuldense_2/BiasAdd:output:0tf.math.tanh_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.multiply_2/Mul¥
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
dense_3/MatMul/ReadVariableOp
dense_3/MatMulMatMultf.math.multiply_2/Mul:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_3/MatMul¤
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_3/BiasAdd/ReadVariableOp¡
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_3/BiasAdd
tf.math.softplus_3/SoftplusSoftplusdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.softplus_3/Softplus
tf.math.tanh_3/TanhTanh)tf.math.softplus_3/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.tanh_3/Tanh
tf.math.multiply_3/MulMuldense_3/BiasAdd:output:0tf.math.tanh_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.multiply_3/Mul¥
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_4/MatMul/ReadVariableOp
dense_4/MatMulMatMultf.math.multiply_3/Mul:z:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_4/MatMul¤
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp¡
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_4/BiasAdds
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ®: : : : : : : : : : 2<
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
:ÿÿÿÿÿÿÿÿÿ®
 
_user_specified_nameinputs
¯

ö
B__inference_dense_1_layer_call_and_return_conditional_losses_27984

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

'__inference_dense_2_layer_call_fn_28012

inputs
unknown:	@
	unknown_0:@
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_274282
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
.
À
@__inference_model_layer_call_and_return_conditional_losses_27473

inputs
dense_27391:
®
dense_27393:	!
dense_1_27410:

dense_1_27412:	 
dense_2_27429:	@
dense_2_27431:@
dense_3_27448:@ 
dense_3_27450: 
dense_4_27467: 
dense_4_27469:
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCallÔ
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_273782
flatten/PartitionedCall 
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_27391dense_27393*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_273902
dense/StatefulPartitionedCall
tf.math.softplus/SoftplusSoftplus&dense/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.softplus/Softplus
tf.math.tanh/TanhTanh'tf.math.softplus/Softplus:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh/Tanh¥
tf.math.multiply/MulMul&dense/StatefulPartitionedCall:output:0tf.math.tanh/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply/Mul¢
dense_1/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply/Mul:z:0dense_1_27410dense_1_27412*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_274092!
dense_1/StatefulPartitionedCall£
tf.math.softplus_1/SoftplusSoftplus(dense_1/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.softplus_1/Softplus
tf.math.tanh_1/TanhTanh)tf.math.softplus_1/Softplus:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh_1/Tanh­
tf.math.multiply_1/MulMul(dense_1/StatefulPartitionedCall:output:0tf.math.tanh_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_1/Mul£
dense_2/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_1/Mul:z:0dense_2_27429dense_2_27431*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_274282!
dense_2/StatefulPartitionedCall¢
tf.math.softplus_2/SoftplusSoftplus(dense_2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.softplus_2/Softplus
tf.math.tanh_2/TanhTanh)tf.math.softplus_2/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.tanh_2/Tanh¬
tf.math.multiply_2/MulMul(dense_2/StatefulPartitionedCall:output:0tf.math.tanh_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.multiply_2/Mul£
dense_3/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_2/Mul:z:0dense_3_27448dense_3_27450*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_274472!
dense_3/StatefulPartitionedCall¢
tf.math.softplus_3/SoftplusSoftplus(dense_3/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.softplus_3/Softplus
tf.math.tanh_3/TanhTanh)tf.math.softplus_3/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.tanh_3/Tanh¬
tf.math.multiply_3/MulMul(dense_3/StatefulPartitionedCall:output:0tf.math.tanh_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.multiply_3/Mul£
dense_4/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_3/Mul:z:0dense_4_27467dense_4_27469*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_274662!
dense_4/StatefulPartitionedCall
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityö
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ®: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
 
_user_specified_nameinputs
<
Ø
@__inference_model_layer_call_and_return_conditional_losses_27894

inputs8
$dense_matmul_readvariableop_resource:
®4
%dense_biasadd_readvariableop_resource:	:
&dense_1_matmul_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	9
&dense_2_matmul_readvariableop_resource:	@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@ 5
'dense_3_biasadd_readvariableop_resource: 8
&dense_4_matmul_readvariableop_resource: 5
'dense_4_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ®   2
flatten/Const
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®2
flatten/Reshape¡
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
®*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/BiasAdd
tf.math.softplus/SoftplusSoftplusdense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.softplus/Softplus
tf.math.tanh/TanhTanh'tf.math.softplus/Softplus:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh/Tanh
tf.math.multiply/MulMuldense/BiasAdd:output:0tf.math.tanh/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply/Mul§
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMultf.math.multiply/Mul:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/MatMul¥
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp¢
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/BiasAdd
tf.math.softplus_1/SoftplusSoftplusdense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.softplus_1/Softplus
tf.math.tanh_1/TanhTanh)tf.math.softplus_1/Softplus:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh_1/Tanh
tf.math.multiply_1/MulMuldense_1/BiasAdd:output:0tf.math.tanh_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_1/Mul¦
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dense_2/MatMul/ReadVariableOp
dense_2/MatMulMatMultf.math.multiply_1/Mul:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_2/MatMul¤
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp¡
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_2/BiasAdd
tf.math.softplus_2/SoftplusSoftplusdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.softplus_2/Softplus
tf.math.tanh_2/TanhTanh)tf.math.softplus_2/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.tanh_2/Tanh
tf.math.multiply_2/MulMuldense_2/BiasAdd:output:0tf.math.tanh_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.multiply_2/Mul¥
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
dense_3/MatMul/ReadVariableOp
dense_3/MatMulMatMultf.math.multiply_2/Mul:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_3/MatMul¤
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_3/BiasAdd/ReadVariableOp¡
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_3/BiasAdd
tf.math.softplus_3/SoftplusSoftplusdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.softplus_3/Softplus
tf.math.tanh_3/TanhTanh)tf.math.softplus_3/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.tanh_3/Tanh
tf.math.multiply_3/MulMuldense_3/BiasAdd:output:0tf.math.tanh_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.multiply_3/Mul¥
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_4/MatMul/ReadVariableOp
dense_4/MatMulMatMultf.math.multiply_3/Mul:z:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_4/MatMul¤
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp¡
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_4/BiasAdds
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ®: : : : : : : : : : 2<
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
:ÿÿÿÿÿÿÿÿÿ®
 
_user_specified_nameinputs
÷

'__inference_dense_1_layer_call_fn_27993

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_274092
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ùí
í!
!__inference__traced_restore_28407
file_prefix1
assignvariableop_dense_kernel:
®,
assignvariableop_1_dense_bias:	5
!assignvariableop_2_dense_1_kernel:
.
assignvariableop_3_dense_1_bias:	4
!assignvariableop_4_dense_2_kernel:	@-
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
®<
-assignvariableop_25_lookahead_dense_bias_slow:	E
1assignvariableop_26_lookahead_dense_1_kernel_slow:
>
/assignvariableop_27_lookahead_dense_1_bias_slow:	D
1assignvariableop_28_lookahead_dense_2_kernel_slow:	@=
/assignvariableop_29_lookahead_dense_2_bias_slow:@C
1assignvariableop_30_lookahead_dense_3_kernel_slow:@ =
/assignvariableop_31_lookahead_dense_3_bias_slow: C
1assignvariableop_32_lookahead_dense_4_kernel_slow: =
/assignvariableop_33_lookahead_dense_4_bias_slow:@
,assignvariableop_34_lookahead_dense_kernel_m:
®9
*assignvariableop_35_lookahead_dense_bias_m:	B
.assignvariableop_36_lookahead_dense_1_kernel_m:
;
,assignvariableop_37_lookahead_dense_1_bias_m:	A
.assignvariableop_38_lookahead_dense_2_kernel_m:	@:
,assignvariableop_39_lookahead_dense_2_bias_m:@@
.assignvariableop_40_lookahead_dense_3_kernel_m:@ :
,assignvariableop_41_lookahead_dense_3_bias_m: @
.assignvariableop_42_lookahead_dense_4_kernel_m: :
,assignvariableop_43_lookahead_dense_4_bias_m:@
,assignvariableop_44_lookahead_dense_kernel_v:
®9
*assignvariableop_45_lookahead_dense_bias_v:	B
.assignvariableop_46_lookahead_dense_1_kernel_v:
;
,assignvariableop_47_lookahead_dense_1_bias_v:	A
.assignvariableop_48_lookahead_dense_2_kernel_v:	@:
,assignvariableop_49_lookahead_dense_2_bias_v:@@
.assignvariableop_50_lookahead_dense_3_kernel_v:@ :
,assignvariableop_51_lookahead_dense_3_bias_v: @
.assignvariableop_52_lookahead_dense_4_kernel_v: :
,assignvariableop_53_lookahead_dense_4_bias_v:
identity_55¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ê"
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*ö!
valueì!Bé!7B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB=optimizer/lh_base_optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB=optimizer/lh_base_optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/lh_base_optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBDoptimizer/lh_base_optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB=optimizer/lh_base_optimizer/min_lr/.ATTRIBUTES/VARIABLE_VALUEBDoptimizer/lh_base_optimizer/sma_threshold/.ATTRIBUTES/VARIABLE_VALUEBBoptimizer/lh_base_optimizer/total_steps/.ATTRIBUTES/VARIABLE_VALUEBHoptimizer/lh_base_optimizer/warmup_proportion/.ATTRIBUTES/VARIABLE_VALUEBCoptimizer/lh_base_optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesý
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesÁ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ò
_output_shapesß
Ü:::::::::::::::::::::::::::::::::::::::::::::::::::::::*E
dtypes;
927	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¢
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¦
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¤
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¦
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¤
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¦
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¤
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¦
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¤
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10 
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¬
AssignVariableOp_11AssignVariableOp$assignvariableop_11_lookahead_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¬
AssignVariableOp_12AssignVariableOp$assignvariableop_12_lookahead_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13«
AssignVariableOp_13AssignVariableOp#assignvariableop_13_lookahead_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14³
AssignVariableOp_14AssignVariableOp+assignvariableop_14_lookahead_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¬
AssignVariableOp_15AssignVariableOp$assignvariableop_15_lookahead_min_lrIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16³
AssignVariableOp_16AssignVariableOp+assignvariableop_16_lookahead_sma_thresholdIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17±
AssignVariableOp_17AssignVariableOp)assignvariableop_17_lookahead_total_stepsIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18·
AssignVariableOp_18AssignVariableOp/assignvariableop_18_lookahead_warmup_proportionIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19²
AssignVariableOp_19AssignVariableOp*assignvariableop_19_lookahead_weight_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¡
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¡
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22£
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23£
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24·
AssignVariableOp_24AssignVariableOp/assignvariableop_24_lookahead_dense_kernel_slowIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25µ
AssignVariableOp_25AssignVariableOp-assignvariableop_25_lookahead_dense_bias_slowIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26¹
AssignVariableOp_26AssignVariableOp1assignvariableop_26_lookahead_dense_1_kernel_slowIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27·
AssignVariableOp_27AssignVariableOp/assignvariableop_27_lookahead_dense_1_bias_slowIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28¹
AssignVariableOp_28AssignVariableOp1assignvariableop_28_lookahead_dense_2_kernel_slowIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29·
AssignVariableOp_29AssignVariableOp/assignvariableop_29_lookahead_dense_2_bias_slowIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30¹
AssignVariableOp_30AssignVariableOp1assignvariableop_30_lookahead_dense_3_kernel_slowIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31·
AssignVariableOp_31AssignVariableOp/assignvariableop_31_lookahead_dense_3_bias_slowIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32¹
AssignVariableOp_32AssignVariableOp1assignvariableop_32_lookahead_dense_4_kernel_slowIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33·
AssignVariableOp_33AssignVariableOp/assignvariableop_33_lookahead_dense_4_bias_slowIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34´
AssignVariableOp_34AssignVariableOp,assignvariableop_34_lookahead_dense_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35²
AssignVariableOp_35AssignVariableOp*assignvariableop_35_lookahead_dense_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36¶
AssignVariableOp_36AssignVariableOp.assignvariableop_36_lookahead_dense_1_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37´
AssignVariableOp_37AssignVariableOp,assignvariableop_37_lookahead_dense_1_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38¶
AssignVariableOp_38AssignVariableOp.assignvariableop_38_lookahead_dense_2_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39´
AssignVariableOp_39AssignVariableOp,assignvariableop_39_lookahead_dense_2_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40¶
AssignVariableOp_40AssignVariableOp.assignvariableop_40_lookahead_dense_3_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41´
AssignVariableOp_41AssignVariableOp,assignvariableop_41_lookahead_dense_3_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42¶
AssignVariableOp_42AssignVariableOp.assignvariableop_42_lookahead_dense_4_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43´
AssignVariableOp_43AssignVariableOp,assignvariableop_43_lookahead_dense_4_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44´
AssignVariableOp_44AssignVariableOp,assignvariableop_44_lookahead_dense_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45²
AssignVariableOp_45AssignVariableOp*assignvariableop_45_lookahead_dense_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46¶
AssignVariableOp_46AssignVariableOp.assignvariableop_46_lookahead_dense_1_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47´
AssignVariableOp_47AssignVariableOp,assignvariableop_47_lookahead_dense_1_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48¶
AssignVariableOp_48AssignVariableOp.assignvariableop_48_lookahead_dense_2_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49´
AssignVariableOp_49AssignVariableOp,assignvariableop_49_lookahead_dense_2_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50¶
AssignVariableOp_50AssignVariableOp.assignvariableop_50_lookahead_dense_3_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51´
AssignVariableOp_51AssignVariableOp,assignvariableop_51_lookahead_dense_3_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52¶
AssignVariableOp_52AssignVariableOp.assignvariableop_52_lookahead_dense_4_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53´
AssignVariableOp_53AssignVariableOp,assignvariableop_53_lookahead_dense_4_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_539
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp

Identity_54Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_54f
Identity_55IdentityIdentity_54:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_55ê	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_55Identity_55:output:0*
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
s
®
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

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameä"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*ö!
valueì!Bé!7B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB=optimizer/lh_base_optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB=optimizer/lh_base_optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/lh_base_optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBDoptimizer/lh_base_optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB=optimizer/lh_base_optimizer/min_lr/.ATTRIBUTES/VARIABLE_VALUEBDoptimizer/lh_base_optimizer/sma_threshold/.ATTRIBUTES/VARIABLE_VALUEBBoptimizer/lh_base_optimizer/total_steps/.ATTRIBUTES/VARIABLE_VALUEBHoptimizer/lh_base_optimizer/warmup_proportion/.ATTRIBUTES/VARIABLE_VALUEBCoptimizer/lh_base_optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/slow/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBdlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/lh_base_optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names÷
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesÛ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableopsavev2_iter_read_readvariableop+savev2_lookahead_beta_1_read_readvariableop+savev2_lookahead_beta_2_read_readvariableop*savev2_lookahead_decay_read_readvariableop2savev2_lookahead_learning_rate_read_readvariableop+savev2_lookahead_min_lr_read_readvariableop2savev2_lookahead_sma_threshold_read_readvariableop0savev2_lookahead_total_steps_read_readvariableop6savev2_lookahead_warmup_proportion_read_readvariableop1savev2_lookahead_weight_decay_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_lookahead_dense_kernel_slow_read_readvariableop4savev2_lookahead_dense_bias_slow_read_readvariableop8savev2_lookahead_dense_1_kernel_slow_read_readvariableop6savev2_lookahead_dense_1_bias_slow_read_readvariableop8savev2_lookahead_dense_2_kernel_slow_read_readvariableop6savev2_lookahead_dense_2_bias_slow_read_readvariableop8savev2_lookahead_dense_3_kernel_slow_read_readvariableop6savev2_lookahead_dense_3_bias_slow_read_readvariableop8savev2_lookahead_dense_4_kernel_slow_read_readvariableop6savev2_lookahead_dense_4_bias_slow_read_readvariableop3savev2_lookahead_dense_kernel_m_read_readvariableop1savev2_lookahead_dense_bias_m_read_readvariableop5savev2_lookahead_dense_1_kernel_m_read_readvariableop3savev2_lookahead_dense_1_bias_m_read_readvariableop5savev2_lookahead_dense_2_kernel_m_read_readvariableop3savev2_lookahead_dense_2_bias_m_read_readvariableop5savev2_lookahead_dense_3_kernel_m_read_readvariableop3savev2_lookahead_dense_3_bias_m_read_readvariableop5savev2_lookahead_dense_4_kernel_m_read_readvariableop3savev2_lookahead_dense_4_bias_m_read_readvariableop3savev2_lookahead_dense_kernel_v_read_readvariableop1savev2_lookahead_dense_bias_v_read_readvariableop5savev2_lookahead_dense_1_kernel_v_read_readvariableop3savev2_lookahead_dense_1_bias_v_read_readvariableop5savev2_lookahead_dense_2_kernel_v_read_readvariableop3savev2_lookahead_dense_2_bias_v_read_readvariableop5savev2_lookahead_dense_3_kernel_v_read_readvariableop3savev2_lookahead_dense_3_bias_v_read_readvariableop5savev2_lookahead_dense_4_kernel_v_read_readvariableop3savev2_lookahead_dense_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *E
dtypes;
927	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*
_input_shapesÿ
ü: :
®::
::	@:@:@ : : :: : : : : : : : : : : : : : :
®::
::	@:@:@ : : ::
®::
::	@:@:@ : : ::
®::
::	@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
®:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	@: 
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
®:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	@: 
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
®:!$

_output_shapes	
::&%"
 
_output_shapes
:
:!&

_output_shapes	
::%'!

_output_shapes
:	@: (
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
®:!.

_output_shapes	
::&/"
 
_output_shapes
:
:!0

_output_shapes	
::%1!

_output_shapes
:	@: 2
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
.
Á
@__inference_model_layer_call_and_return_conditional_losses_27753
input_1
dense_27715:
®
dense_27717:	!
dense_1_27723:

dense_1_27725:	 
dense_2_27731:	@
dense_2_27733:@
dense_3_27739:@ 
dense_3_27741: 
dense_4_27747: 
dense_4_27749:
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCallÕ
flatten/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_273782
flatten/PartitionedCall 
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_27715dense_27717*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_273902
dense/StatefulPartitionedCall
tf.math.softplus/SoftplusSoftplus&dense/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.softplus/Softplus
tf.math.tanh/TanhTanh'tf.math.softplus/Softplus:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh/Tanh¥
tf.math.multiply/MulMul&dense/StatefulPartitionedCall:output:0tf.math.tanh/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply/Mul¢
dense_1/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply/Mul:z:0dense_1_27723dense_1_27725*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_274092!
dense_1/StatefulPartitionedCall£
tf.math.softplus_1/SoftplusSoftplus(dense_1/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.softplus_1/Softplus
tf.math.tanh_1/TanhTanh)tf.math.softplus_1/Softplus:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh_1/Tanh­
tf.math.multiply_1/MulMul(dense_1/StatefulPartitionedCall:output:0tf.math.tanh_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_1/Mul£
dense_2/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_1/Mul:z:0dense_2_27731dense_2_27733*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_274282!
dense_2/StatefulPartitionedCall¢
tf.math.softplus_2/SoftplusSoftplus(dense_2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.softplus_2/Softplus
tf.math.tanh_2/TanhTanh)tf.math.softplus_2/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.tanh_2/Tanh¬
tf.math.multiply_2/MulMul(dense_2/StatefulPartitionedCall:output:0tf.math.tanh_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
tf.math.multiply_2/Mul£
dense_3/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_2/Mul:z:0dense_3_27739dense_3_27741*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_274472!
dense_3/StatefulPartitionedCall¢
tf.math.softplus_3/SoftplusSoftplus(dense_3/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.softplus_3/Softplus
tf.math.tanh_3/TanhTanh)tf.math.softplus_3/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.tanh_3/Tanh¬
tf.math.multiply_3/MulMul(dense_3/StatefulPartitionedCall:output:0tf.math.tanh_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
tf.math.multiply_3/Mul£
dense_4/StatefulPartitionedCallStatefulPartitionedCalltf.math.multiply_3/Mul:z:0dense_4_27747dense_4_27749*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_274662!
dense_4/StatefulPartitionedCall
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityö
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ®: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
!
_user_specified_name	input_1
ð

'__inference_dense_3_layer_call_fn_28031

inputs
unknown:@ 
	unknown_0: 
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_274472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ßC
±
 __inference__wrapped_model_27365
input_1>
*model_dense_matmul_readvariableop_resource:
®:
+model_dense_biasadd_readvariableop_resource:	@
,model_dense_1_matmul_readvariableop_resource:
<
-model_dense_1_biasadd_readvariableop_resource:	?
,model_dense_2_matmul_readvariableop_resource:	@;
-model_dense_2_biasadd_readvariableop_resource:@>
,model_dense_3_matmul_readvariableop_resource:@ ;
-model_dense_3_biasadd_readvariableop_resource: >
,model_dense_4_matmul_readvariableop_resource: ;
-model_dense_4_biasadd_readvariableop_resource:
identity¢"model/dense/BiasAdd/ReadVariableOp¢!model/dense/MatMul/ReadVariableOp¢$model/dense_1/BiasAdd/ReadVariableOp¢#model/dense_1/MatMul/ReadVariableOp¢$model/dense_2/BiasAdd/ReadVariableOp¢#model/dense_2/MatMul/ReadVariableOp¢$model/dense_3/BiasAdd/ReadVariableOp¢#model/dense_3/MatMul/ReadVariableOp¢$model/dense_4/BiasAdd/ReadVariableOp¢#model/dense_4/MatMul/ReadVariableOp{
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ®   2
model/flatten/Const
model/flatten/ReshapeReshapeinput_1model/flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®2
model/flatten/Reshape³
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
®*
dtype02#
!model/dense/MatMul/ReadVariableOp°
model/dense/MatMulMatMulmodel/flatten/Reshape:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/dense/MatMul±
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"model/dense/BiasAdd/ReadVariableOp²
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/dense/BiasAdd
model/tf.math.softplus/SoftplusSoftplusmodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
model/tf.math.softplus/Softplus
model/tf.math.tanh/TanhTanh-model/tf.math.softplus/Softplus:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/tf.math.tanh/Tanh­
model/tf.math.multiply/MulMulmodel/dense/BiasAdd:output:0model/tf.math.tanh/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/tf.math.multiply/Mul¹
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02%
#model/dense_1/MatMul/ReadVariableOp¶
model/dense_1/MatMulMatMulmodel/tf.math.multiply/Mul:z:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/dense_1/MatMul·
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02&
$model/dense_1/BiasAdd/ReadVariableOpº
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/dense_1/BiasAdd¥
!model/tf.math.softplus_1/SoftplusSoftplusmodel/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!model/tf.math.softplus_1/Softplus¢
model/tf.math.tanh_1/TanhTanh/model/tf.math.softplus_1/Softplus:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/tf.math.tanh_1/Tanhµ
model/tf.math.multiply_1/MulMulmodel/dense_1/BiasAdd:output:0model/tf.math.tanh_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/tf.math.multiply_1/Mul¸
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02%
#model/dense_2/MatMul/ReadVariableOp·
model/dense_2/MatMulMatMul model/tf.math.multiply_1/Mul:z:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/dense_2/MatMul¶
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$model/dense_2/BiasAdd/ReadVariableOp¹
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/dense_2/BiasAdd¤
!model/tf.math.softplus_2/SoftplusSoftplusmodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!model/tf.math.softplus_2/Softplus¡
model/tf.math.tanh_2/TanhTanh/model/tf.math.softplus_2/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/tf.math.tanh_2/Tanh´
model/tf.math.multiply_2/MulMulmodel/dense_2/BiasAdd:output:0model/tf.math.tanh_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/tf.math.multiply_2/Mul·
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02%
#model/dense_3/MatMul/ReadVariableOp·
model/dense_3/MatMulMatMul model/tf.math.multiply_2/Mul:z:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model/dense_3/MatMul¶
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02&
$model/dense_3/BiasAdd/ReadVariableOp¹
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model/dense_3/BiasAdd¤
!model/tf.math.softplus_3/SoftplusSoftplusmodel/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!model/tf.math.softplus_3/Softplus¡
model/tf.math.tanh_3/TanhTanh/model/tf.math.softplus_3/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model/tf.math.tanh_3/Tanh´
model/tf.math.multiply_3/MulMulmodel/dense_3/BiasAdd:output:0model/tf.math.tanh_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model/tf.math.multiply_3/Mul·
#model/dense_4/MatMul/ReadVariableOpReadVariableOp,model_dense_4_matmul_readvariableop_resource*
_output_shapes

: *
dtype02%
#model/dense_4/MatMul/ReadVariableOp·
model/dense_4/MatMulMatMul model/tf.math.multiply_3/Mul:z:0+model/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/dense_4/MatMul¶
$model/dense_4/BiasAdd/ReadVariableOpReadVariableOp-model_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model/dense_4/BiasAdd/ReadVariableOp¹
model/dense_4/BiasAddBiasAddmodel/dense_4/MatMul:product:0,model/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/dense_4/BiasAddy
IdentityIdentitymodel/dense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityË
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp%^model/dense_4/BiasAdd/ReadVariableOp$^model/dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ®: : : : : : : : : : 2H
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
:ÿÿÿÿÿÿÿÿÿ®
!
_user_specified_name	input_1
¤

ó
B__inference_dense_3_layer_call_and_return_conditional_losses_27447

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Í

ñ
%__inference_model_layer_call_fn_27919

inputs
unknown:
®
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_274732
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ®: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
 
_user_specified_nameinputs
Ð

ò
%__inference_model_layer_call_fn_27496
input_1
unknown:
®
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_274732
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ®: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
!
_user_specified_name	input_1"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¯
serving_default
@
input_15
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ®;
dense_40
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ï
 
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
+§&call_and_return_all_conditional_losses
¨_default_save_signature
©__call__"
_tf_keras_network
"
_tf_keras_input_layer
§
trainable_variables
	variables
 regularization_losses
!	keras_api
+ª&call_and_return_all_conditional_losses
«__call__"
_tf_keras_layer
½

"kernel
#bias
$trainable_variables
%	variables
&regularization_losses
'	keras_api
+¬&call_and_return_all_conditional_losses
­__call__"
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
½

,kernel
-bias
.trainable_variables
/	variables
0regularization_losses
1	keras_api
+®&call_and_return_all_conditional_losses
¯__call__"
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
½

6kernel
7bias
8trainable_variables
9	variables
:regularization_losses
;	keras_api
+°&call_and_return_all_conditional_losses
±__call__"
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
½

@kernel
Abias
Btrainable_variables
C	variables
Dregularization_losses
E	keras_api
+²&call_and_return_all_conditional_losses
³__call__"
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
½

Jkernel
Kbias
Ltrainable_variables
M	variables
Nregularization_losses
O	keras_api
+´&call_and_return_all_conditional_losses
µ__call__"
_tf_keras_layer
¶
Plh_base_optimizer
Qiter"slow#slow,slow-slow6slow7slow@slowAslowJslowKslow"
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
Î
Rnon_trainable_variables
Smetrics
trainable_variables
Tlayer_regularization_losses
	variables
Ulayer_metrics

Vlayers
regularization_losses
©__call__
¨_default_save_signature
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
-
¶serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
Wnon_trainable_variables
Xmetrics
Ylayer_regularization_losses
trainable_variables
	variables
Zlayer_metrics

[layers
 regularization_losses
«__call__
+ª&call_and_return_all_conditional_losses
'ª"call_and_return_conditional_losses"
_generic_user_object
 :
®2dense/kernel
:2
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
°
\non_trainable_variables
]metrics
^layer_regularization_losses
$trainable_variables
%	variables
_layer_metrics

`layers
&regularization_losses
­__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
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
2dense_1/kernel
:2dense_1/bias
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
°
anon_trainable_variables
bmetrics
clayer_regularization_losses
.trainable_variables
/	variables
dlayer_metrics

elayers
0regularization_losses
¯__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
!:	@2dense_2/kernel
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
°
fnon_trainable_variables
gmetrics
hlayer_regularization_losses
8trainable_variables
9	variables
ilayer_metrics

jlayers
:regularization_losses
±__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
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
°
knon_trainable_variables
lmetrics
mlayer_regularization_losses
Btrainable_variables
C	variables
nlayer_metrics

olayers
Dregularization_losses
³__call__
+²&call_and_return_all_conditional_losses
'²"call_and_return_conditional_losses"
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
°
pnon_trainable_variables
qmetrics
rlayer_regularization_losses
Ltrainable_variables
M	variables
slayer_metrics

tlayers
Nregularization_losses
µ__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses"
_generic_user_object
ê

ubeta_1

vbeta_2
	wdecay
xlearning_rate

ymin_lr
zsma_threshold
{total_steps
|warmup_proportion
}weight_decay"m#m,m-m6m7m@mAmJmKm"v#v,v-v 6v¡7v¢@v£Av¤Jv¥Kv¦"
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
Î
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

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
-:+
®2Lookahead/dense/kernel/slow
&:$2Lookahead/dense/bias/slow
/:-
2Lookahead/dense_1/kernel/slow
(:&2Lookahead/dense_1/bias/slow
.:,	@2Lookahead/dense_2/kernel/slow
':%@2Lookahead/dense_2/bias/slow
-:+@ 2Lookahead/dense_3/kernel/slow
':% 2Lookahead/dense_3/bias/slow
-:+ 2Lookahead/dense_4/kernel/slow
':%2Lookahead/dense_4/bias/slow
*:(
®2Lookahead/dense/kernel/m
#:!2Lookahead/dense/bias/m
,:*
2Lookahead/dense_1/kernel/m
%:#2Lookahead/dense_1/bias/m
+:)	@2Lookahead/dense_2/kernel/m
$:"@2Lookahead/dense_2/bias/m
*:(@ 2Lookahead/dense_3/kernel/m
$:" 2Lookahead/dense_3/bias/m
*:( 2Lookahead/dense_4/kernel/m
$:"2Lookahead/dense_4/bias/m
*:(
®2Lookahead/dense/kernel/v
#:!2Lookahead/dense/bias/v
,:*
2Lookahead/dense_1/kernel/v
%:#2Lookahead/dense_1/bias/v
+:)	@2Lookahead/dense_2/kernel/v
$:"@2Lookahead/dense_2/bias/v
*:(@ 2Lookahead/dense_3/kernel/v
$:" 2Lookahead/dense_3/bias/v
*:( 2Lookahead/dense_4/kernel/v
$:"2Lookahead/dense_4/bias/v
Î2Ë
@__inference_model_layer_call_and_return_conditional_losses_27846
@__inference_model_layer_call_and_return_conditional_losses_27894
@__inference_model_layer_call_and_return_conditional_losses_27711
@__inference_model_layer_call_and_return_conditional_losses_27753À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ËBÈ
 __inference__wrapped_model_27365input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
â2ß
%__inference_model_layer_call_fn_27496
%__inference_model_layer_call_fn_27919
%__inference_model_layer_call_fn_27944
%__inference_model_layer_call_fn_27669À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ì2é
B__inference_flatten_layer_call_and_return_conditional_losses_27950¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_flatten_layer_call_fn_27955¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_dense_layer_call_and_return_conditional_losses_27965¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ï2Ì
%__inference_dense_layer_call_fn_27974¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_1_layer_call_and_return_conditional_losses_27984¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_dense_1_layer_call_fn_27993¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_2_layer_call_and_return_conditional_losses_28003¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_dense_2_layer_call_fn_28012¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_3_layer_call_and_return_conditional_losses_28022¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_dense_3_layer_call_fn_28031¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_4_layer_call_and_return_conditional_losses_28041¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_dense_4_layer_call_fn_28050¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÊBÇ
#__inference_signature_wrapper_27798input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 __inference__wrapped_model_27365v
"#,-67@AJK5¢2
+¢(
&#
input_1ÿÿÿÿÿÿÿÿÿ®
ª "1ª.
,
dense_4!
dense_4ÿÿÿÿÿÿÿÿÿ¤
B__inference_dense_1_layer_call_and_return_conditional_losses_27984^,-0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_dense_1_layer_call_fn_27993Q,-0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
B__inference_dense_2_layer_call_and_return_conditional_losses_28003]670¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 {
'__inference_dense_2_layer_call_fn_28012P670¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@¢
B__inference_dense_3_layer_call_and_return_conditional_losses_28022\@A/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 z
'__inference_dense_3_layer_call_fn_28031O@A/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ ¢
B__inference_dense_4_layer_call_and_return_conditional_losses_28041\JK/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_dense_4_layer_call_fn_28050OJK/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ¢
@__inference_dense_layer_call_and_return_conditional_losses_27965^"#0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ®
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 z
%__inference_dense_layer_call_fn_27974Q"#0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ®
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_flatten_layer_call_and_return_conditional_losses_27950^4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ®
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ®
 |
'__inference_flatten_layer_call_fn_27955Q4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ®
ª "ÿÿÿÿÿÿÿÿÿ®¶
@__inference_model_layer_call_and_return_conditional_losses_27711r
"#,-67@AJK=¢:
3¢0
&#
input_1ÿÿÿÿÿÿÿÿÿ®
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¶
@__inference_model_layer_call_and_return_conditional_losses_27753r
"#,-67@AJK=¢:
3¢0
&#
input_1ÿÿÿÿÿÿÿÿÿ®
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 µ
@__inference_model_layer_call_and_return_conditional_losses_27846q
"#,-67@AJK<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ®
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 µ
@__inference_model_layer_call_and_return_conditional_losses_27894q
"#,-67@AJK<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ®
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
%__inference_model_layer_call_fn_27496e
"#,-67@AJK=¢:
3¢0
&#
input_1ÿÿÿÿÿÿÿÿÿ®
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
%__inference_model_layer_call_fn_27669e
"#,-67@AJK=¢:
3¢0
&#
input_1ÿÿÿÿÿÿÿÿÿ®
p

 
ª "ÿÿÿÿÿÿÿÿÿ
%__inference_model_layer_call_fn_27919d
"#,-67@AJK<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ®
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
%__inference_model_layer_call_fn_27944d
"#,-67@AJK<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ®
p

 
ª "ÿÿÿÿÿÿÿÿÿ©
#__inference_signature_wrapper_27798
"#,-67@AJK@¢=
¢ 
6ª3
1
input_1&#
input_1ÿÿÿÿÿÿÿÿÿ®"1ª.
,
dense_4!
dense_4ÿÿÿÿÿÿÿÿÿ