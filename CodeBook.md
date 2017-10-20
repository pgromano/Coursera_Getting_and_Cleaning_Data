# Human Activity Recognition Using Smartphones: Reduced Datasets

### Original Dataset Authors

Jorge L. Reyes-Ortiz $^{1,2}$, Davide Anguita $^1$, Alessandro Ghio $^1$, Luca Oneto $^1$ and Xavier Parra $^2$
1. Smartlab - Non-Linear Complex Systems Laboratory
DITEN - University  degli Studi di Genova, Genoa (I-16145), Italy.
2. CETpD - Technical Research Centre for Dependency Care and Autonomous Living

Universitat Politicnica de Catalunya (BarcelonaTech). Vilanova i la Geltr (08800), Spain
activityrecognition@smartlab.ws

---

**Modified by**:
[P.G. Romano][1]
Oct 20, 2017

---

The [original dataset][2] contained accelerometer and gyroscopic data in time (t) and fourier (f) units. The **R** analysis script, `run_analysis.R` will download and tidy this data for simplified use. Training and test data are appended, and only the parameter means and standard deviation are kept, mean() and std() respectively.

The full measures are given below, with XYZ denote the quantity in the X, Y, and Z respectively. All values have a corresponding mean and standard deviation.

* `tBodyAcc-XYZ`
* `tGravityAcc-XYZ`
* `tBodyAccJerk-XYZ`
* `tBodyGyro-XYZ`
* `tBodyGyroJerk-XYZ`
* `tBodyAccMag`
* `tGravityAccMag`
* `tBodyAccJerkMag`
* `tBodyGyroMag`
* `tBodyGyroJerkMag`
* `fBodyAcc-XYZ`
* `fBodyAccJerk-XYZ`
* `fBodyGyro-XYZ`
* `fBodyAccMag`
* `fBodyAccJerkMag`
* `fBodyGyroMag`
* `fBodyGyroJerkMag`

The activity labels are stored as:

* `WALKING`: subject was monitored walking
* `WALKING_UPSTAIRS`: subject was monitored walking upstairs
* `WALKING_DOWNSTAIRS`: subject was monitored walking downstairs
* `SITTING`: subject was monitored sitting
* `STANDING`: subject was monitored standing
* `LAYING`: subject was monitored laying down

[1]:https://github.com/pgromano
[2]:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Related Publications

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

[2] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz.  Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic. Journal of Universal Computer Science. Special Issue in Ambient Assisted Living: Home Care.   Volume 19, Issue 9. May 2013

[3] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 4th International Workshop of Ambient Assited Living, IWAAL 2012, Vitoria-Gasteiz, Spain, December 3-5, 2012. Proceedings. Lecture Notes in Computer Science 2012, pp 216-223.

[4] Jorge Luis Reyes-Ortiz, Alessandro Ghio, Xavier Parra-Llanas, Davide Anguita, Joan Cabestany, Andreu Catal�. Human Activity and Motion Disorder Recognition: Towards Smarter Interactive Cognitive Environments. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.  
