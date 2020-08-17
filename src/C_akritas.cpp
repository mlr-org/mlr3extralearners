#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
NumericVector C_Akritas(NumericMatrix truth, NumericVector times, NumericVector unique_times,
                        NumericVector FX_train, NumericVector FX_predict,
                        double lambda) {

  double t;
  double prod;
  double num;
  double den;
  double FXn;
  int j;

  NumericMatrix surv(FX_predict.size(), times.size());

  for (int n = 0; n < FX_predict.size(); n++) {
    FXn = FX_predict[n];
    for (int i = 0; i < times.size(); i++) {
      prod = 1;
      j = 0;
      while (unique_times[j] <= times[i]) {
        if (j == unique_times.size()) {
          break;
        }

        t = unique_times[j];
          num = 0;
          den = 0;
          for (int l = 0; l < FX_train.size(); l++) {
            if (truth(l, 0) < t) {
              break;
            } else if (fabs(FXn - FX_train[l]) <= lambda) {
              num += (truth(l, 0) == t) * truth(l, 1);
              den += 1;
            }
          }
          if (den != 0) {
            prod *= (1 - num/den);
          }
          j++;
      }
      surv(n, i) = prod;
    }
  }

  return surv;
}
