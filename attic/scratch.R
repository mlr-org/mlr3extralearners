learner = lrn("classif.adabag")
learner$predict_type = "response"
tasks = generate_tasks(learner)
task = tasks$feat_all_binary

# Train and predict
learner$train(task)
p = learner$predict(task)

# Try the exact scoring step from the autotest
score = p$score(mlr3::default_measures(learner$task_type),
                task = task,
                learner = learner,
                train_set = task$row_ids)

# Print more detailed information about the prediction and task
print("Task row IDs:")
print(task$row_ids)
print("Prediction row IDs:")
print(rownames(p$data))
print("Task data structure:")
print(str(task$data()))
print("Prediction data structure:")
print(str(p$data))

# Test with both predict types
learner$predict_type = "response"
p_resp = learner$predict(task)
learner$predict_type = "prob"
p_prob = learner$predict(task)

# Compare the row orders
all.equal(rownames(p_resp$data), rownames(p_prob$data))