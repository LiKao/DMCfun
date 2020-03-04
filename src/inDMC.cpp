#include <iostream>
#include <getopt.h>
#include "inDMC.h"
#include "Rcpp.h"

void print_input_args(Prms &p) {
    Rcpp::Rcout << "\nDMC Parameters:" << "\n";
    Rcpp::Rcout << "amp: " << p.amp << "\n";
    Rcpp::Rcout << "tau: " << p.tau << "\n";
    Rcpp::Rcout << "aaShape: " << p.aaShape << "\n";
    Rcpp::Rcout << "mu: " << p.mu << "\n";
    Rcpp::Rcout << "bnds: " << p.bnds << "\n";
    Rcpp::Rcout << "resMean: " << p.resMean << "\n";
    Rcpp::Rcout << "resSD: " << p.resSD << "\n";
    if (p.varSP) Rcpp::Rcout << "spShape: " << p.spShape << "\n";
    if (p.varDR) Rcpp::Rcout << "drShape: " << p.drShape << "\n";
    Rcpp::Rcout << std::endl;
}

