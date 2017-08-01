import sklearn.metrics as sm
sm.accuracy_score(y, predictedY)


"""Woow! that is not what we'd ideally like to see. We need to change the class labels,
we are not changing any of the classification groups but we are assigning the correct label
to each group.

For this we use `np.choose()`.

NOTE: check that your results match mine or adjust the order of the values
in `np.choose()` """


# The fix, we convert all the 1s to 0s and 0s to 1s.
predY = np.choose(model.labels_, [1, 0, 2]).astype(np.int64)
print (model.labels_)
print (predY)

## Replotting

fig, (ax1, ax2) = plt.subplots(1, 2, figsize = (8, 4), sharey =False)

predictedY = np.choose(model.labels_, [1, 0, 2]).astype(np.int64)


# Plot the classifications that we saw earlier between Petal Length and Petal Width

ax1.scatter(x['Petal Length'], x['Petal Width'], c=colors[y['Target']], s=20)
ax1.set_title('Real classification')

# Plot the classifications according to the model
ax2.scatter(x['Petal Length'], x['Petal Width'], c=colors[predictedY], s=20)
ax2.set_title("Model's classification")


## Checking for accuracy
sm.accuracy_score(y, predictedY)
sm.confusion_matrix(y, predY)
