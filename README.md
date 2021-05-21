# Factor-Analysis-for-Geochemical-Data
Mainly focusing on the dominating factors through the entire region and deposits with their Geochemical data, which determined by the factor analysis.
## Data Normalization
The most important think for before the analysis, it's called data normalization which encompass the data having equal proportion entirely.
where the data would be the Major elements and Trace elements and there should varying in values. That means the major elements having a 
Weight percentage `%`  and the trace elements having a `ppm` values. 

example :
* Major elements (2.4930, 4.5637) 
* Trace elements (300, 28, 13)
     
The Equation for Data Normalization     
```math
log (C / (1 - C))
```
For the Major Elements 
> C = W / 100

For the Trace Elements 
> C = W / 1,000,000

## Input The Data
Inout the Normalized data in the `X` values. The data looks like our `Orissa geochem data.xlsx` 
