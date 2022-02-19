
�root"_tf_keras_network*�{"name": "model_20", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_20", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 104, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_26"}, "name": "input_26", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten_21", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_21", "inbound_nodes": [[["input_26", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_91", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_91", "inbound_nodes": [[["flatten_21", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_40", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_40", "inbound_nodes": [["dense_91", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.softplus_40", "trainable": true, "dtype": "float32", "function": "math.softplus"}, "name": "tf.math.softplus_40", "inbound_nodes": [["tf.convert_to_tensor_40", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.tanh_40", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "name": "tf.math.tanh_40", "inbound_nodes": [["tf.math.softplus_40", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_40", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_40", "inbound_nodes": [["tf.convert_to_tensor_40", 0, 0, {"y": ["tf.math.tanh_40", 0, 0], "name": null}]]}, {"class_name": "Dense", "config": {"name": "dense_92", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_92", "inbound_nodes": [[["tf.math.multiply_40", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_41", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_41", "inbound_nodes": [["dense_92", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.softplus_41", "trainable": true, "dtype": "float32", "function": "math.softplus"}, "name": "tf.math.softplus_41", "inbound_nodes": [["tf.convert_to_tensor_41", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.tanh_41", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "name": "tf.math.tanh_41", "inbound_nodes": [["tf.math.softplus_41", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_41", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_41", "inbound_nodes": [["tf.convert_to_tensor_41", 0, 0, {"y": ["tf.math.tanh_41", 0, 0], "name": null}]]}, {"class_name": "Dense", "config": {"name": "dense_93", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_93", "inbound_nodes": [[["tf.math.multiply_41", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_42", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_42", "inbound_nodes": [["dense_93", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.softplus_42", "trainable": true, "dtype": "float32", "function": "math.softplus"}, "name": "tf.math.softplus_42", "inbound_nodes": [["tf.convert_to_tensor_42", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.tanh_42", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "name": "tf.math.tanh_42", "inbound_nodes": [["tf.math.softplus_42", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_42", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_42", "inbound_nodes": [["tf.convert_to_tensor_42", 0, 0, {"y": ["tf.math.tanh_42", 0, 0], "name": null}]]}, {"class_name": "Dense", "config": {"name": "dense_94", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_94", "inbound_nodes": [[["tf.math.multiply_42", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_43", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_43", "inbound_nodes": [["dense_94", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.softplus_43", "trainable": true, "dtype": "float32", "function": "math.softplus"}, "name": "tf.math.softplus_43", "inbound_nodes": [["tf.convert_to_tensor_43", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.tanh_43", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "name": "tf.math.tanh_43", "inbound_nodes": [["tf.math.softplus_43", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_43", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_43", "inbound_nodes": [["tf.convert_to_tensor_43", 0, 0, {"y": ["tf.math.tanh_43", 0, 0], "name": null}]]}, {"class_name": "Dense", "config": {"name": "dense_95", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_95", "inbound_nodes": [[["tf.math.multiply_43", 0, 0, {}]]]}], "input_layers": [["input_26", 0, 0]], "output_layers": [["dense_95", 0, 0]]}, "shared_object_id": 33, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 104, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 104, 1]}, "is_graph_network": true, "full_save_spec": {"class_name": "__tuple__", "items": [[{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 104, 1]}, "float32", "input_26"]}], {}]}, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 104, 1]}, "float32", "input_26"]}, "keras_version": "2.6.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_20", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 104, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_26"}, "name": "input_26", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Flatten", "config": {"name": "flatten_21", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_21", "inbound_nodes": [[["input_26", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "dense_91", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_91", "inbound_nodes": [[["flatten_21", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_40", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_40", "inbound_nodes": [["dense_91", 0, 0, {}]], "shared_object_id": 5}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.softplus_40", "trainable": true, "dtype": "float32", "function": "math.softplus"}, "name": "tf.math.softplus_40", "inbound_nodes": [["tf.convert_to_tensor_40", 0, 0, {}]], "shared_object_id": 6}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.tanh_40", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "name": "tf.math.tanh_40", "inbound_nodes": [["tf.math.softplus_40", 0, 0, {"name": null}]], "shared_object_id": 7}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_40", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_40", "inbound_nodes": [["tf.convert_to_tensor_40", 0, 0, {"y": ["tf.math.tanh_40", 0, 0], "name": null}]], "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_92", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_92", "inbound_nodes": [[["tf.math.multiply_40", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_41", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_41", "inbound_nodes": [["dense_92", 0, 0, {}]], "shared_object_id": 12}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.softplus_41", "trainable": true, "dtype": "float32", "function": "math.softplus"}, "name": "tf.math.softplus_41", "inbound_nodes": [["tf.convert_to_tensor_41", 0, 0, {}]], "shared_object_id": 13}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.tanh_41", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "name": "tf.math.tanh_41", "inbound_nodes": [["tf.math.softplus_41", 0, 0, {"name": null}]], "shared_object_id": 14}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_41", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_41", "inbound_nodes": [["tf.convert_to_tensor_41", 0, 0, {"y": ["tf.math.tanh_41", 0, 0], "name": null}]], "shared_object_id": 15}, {"class_name": "Dense", "config": {"name": "dense_93", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_93", "inbound_nodes": [[["tf.math.multiply_41", 0, 0, {}]]], "shared_object_id": 18}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_42", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_42", "inbound_nodes": [["dense_93", 0, 0, {}]], "shared_object_id": 19}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.softplus_42", "trainable": true, "dtype": "float32", "function": "math.softplus"}, "name": "tf.math.softplus_42", "inbound_nodes": [["tf.convert_to_tensor_42", 0, 0, {}]], "shared_object_id": 20}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.tanh_42", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "name": "tf.math.tanh_42", "inbound_nodes": [["tf.math.softplus_42", 0, 0, {"name": null}]], "shared_object_id": 21}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_42", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_42", "inbound_nodes": [["tf.convert_to_tensor_42", 0, 0, {"y": ["tf.math.tanh_42", 0, 0], "name": null}]], "shared_object_id": 22}, {"class_name": "Dense", "config": {"name": "dense_94", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_94", "inbound_nodes": [[["tf.math.multiply_42", 0, 0, {}]]], "shared_object_id": 25}, {"class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_43", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "name": "tf.convert_to_tensor_43", "inbound_nodes": [["dense_94", 0, 0, {}]], "shared_object_id": 26}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.softplus_43", "trainable": true, "dtype": "float32", "function": "math.softplus"}, "name": "tf.math.softplus_43", "inbound_nodes": [["tf.convert_to_tensor_43", 0, 0, {}]], "shared_object_id": 27}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.tanh_43", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "name": "tf.math.tanh_43", "inbound_nodes": [["tf.math.softplus_43", 0, 0, {"name": null}]], "shared_object_id": 28}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_43", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_43", "inbound_nodes": [["tf.convert_to_tensor_43", 0, 0, {"y": ["tf.math.tanh_43", 0, 0], "name": null}]], "shared_object_id": 29}, {"class_name": "Dense", "config": {"name": "dense_95", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_95", "inbound_nodes": [[["tf.math.multiply_43", 0, 0, {}]]], "shared_object_id": 32}], "input_layers": [["input_26", 0, 0]], "output_layers": [["dense_95", 0, 0]]}}, "training_config": {"loss": "mae", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 35}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Addons>Lookahead", "config": {"name": "Lookahead", "optimizer": {"class_name": "Addons>RectifiedAdam", "config": {"name": "RectifiedAdam", "learning_rate": 1.000000082740371e-09, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "decay": 0.0, "weight_decay": 0.0, "sma_threshold": 5.0, "epsilon": 1e-07, "amsgrad": false, "total_steps": 0, "warmup_proportion": 0.10000000149011612, "min_lr": 0.0}, "shared_object_id": 36}, "sync_period": 6, "slow_step_size": 0.5}}}}2
�root.layer-0"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "input_26", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 104, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 104, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_26"}}2
�root.layer-1"_tf_keras_layer*�{"name": "flatten_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_21", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["input_26", 0, 0, {}]]], "shared_object_id": 1, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 37}}2
�root.layer_with_weights-0"_tf_keras_layer*�{"name": "dense_91", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_91", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten_21", 0, 0, {}]]], "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 104}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 104]}}2
�root.layer-3"_tf_keras_layer*�{"name": "tf.convert_to_tensor_40", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_40", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "inbound_nodes": [["dense_91", 0, 0, {}]], "shared_object_id": 5}2
�root.layer-4"_tf_keras_layer*�{"name": "tf.math.softplus_40", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.softplus_40", "trainable": true, "dtype": "float32", "function": "math.softplus"}, "inbound_nodes": [["tf.convert_to_tensor_40", 0, 0, {}]], "shared_object_id": 6}2
�root.layer-5"_tf_keras_layer*�{"name": "tf.math.tanh_40", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.tanh_40", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "inbound_nodes": [["tf.math.softplus_40", 0, 0, {"name": null}]], "shared_object_id": 7}2
�root.layer-6"_tf_keras_layer*�{"name": "tf.math.multiply_40", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_40", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.convert_to_tensor_40", 0, 0, {"y": ["tf.math.tanh_40", 0, 0], "name": null}]], "shared_object_id": 8}2
�root.layer_with_weights-1"_tf_keras_layer*�{"name": "dense_92", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_92", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.math.multiply_40", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 39}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}2
�	root.layer-8"_tf_keras_layer*�{"name": "tf.convert_to_tensor_41", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.convert_to_tensor_41", "trainable": true, "dtype": "float32", "function": "convert_to_tensor"}, "inbound_nodes": [["dense_92", 0, 0, {}]], "shared_object_id": 12}2
�
root.layer-9"_tf_keras_layer*�{"name": "tf.math.softplus_41", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.softplus_41", "trainable": true, "dtype": "float32", "function": "math.softplus"}, "inbound_nodes": [["tf.convert_to_tensor_41", 0, 0, {}]], "shared_object_id": 13}2
�
�
�
�
�
�
�
�root.layer_with_weights-3"_tf_keras_layer*�{"name": "dense_94", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_94", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.math.multiply_42", 0, 0, {}]]], "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}2
�
�
�
�
�root.layer_with_weights-4"_tf_keras_layer*�{"name": "dense_95", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_95", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.math.multiply_43", 0, 0, {}]]], "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}2
�~root.keras_api.metrics.0"_tf_keras_metric*�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 43}2
�root.keras_api.metrics.1"_tf_keras_metric*�{"class_name": "MeanMetricWrapper", "name": "mae", "dtype": "float32", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 35}2