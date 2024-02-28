## 題目

Assume there are KK types of cars and parking spaces, where a type kk car can park in a space of type k′≥kk'\geq k ,but not in a space of type.For example, if there are 3 types (i.e., K=3K=3 ), a type 2 car can parkin a space of type 2 or 3, but not 1.Let DD represent the set of  n=|D|n=|D| parking demands, and PP represent the set of m=|P|m=|P| parking spaces. Each parking demand i∈Di\in D located in (αdi,βdi)(\alpha^d_i ,\beta^d_i) is of type kdik^d_i with a time window constraint $[t^1_i ,t^2_i],andeachparkingspace,and each parking space j\in Plocatedin located in (\alpha^s_j ,\beta^s_j)isoftype is of type k^s_j$.
Let $r_{ij}=\sqrt(\alpha^d_i-\alpha^s_j)^2+(\beta^d_i-\beta^s_j)^2representthedistancebetweendemand represent the distance between demand i\in Dandspace and space j\in P.Wesayaspaceiseligiblefordemand,iftheyaresufficientlyclosetoeachother(i.e.. We say a space  is eligible for demand , if they are sufficiently close to each other (i.e. r_{ij}\leq R,where, where Risarangeupperbound)andtypecompatible(i.e., is a range upper bound) and type compatible (i.e., k^s_j\geq k^d_i).Let). Let P_i
beasetofeligibleparkingspacesforademand be a set of eligible parking spacesfor a demand i\in D.Similarly,let. Similarly, let D_j=\{i:r_{ij}\leq R,k^s_j\geq k^d_i ,i\in D\}beasetofparkingdemandseligibletobeassignedtoaspace be a set of parking demands eligible to beassigned to a space j\in P$
If we assign a space j∈Pij\in P_i to a demand i∈Di\in D obeying its time window constraint (i.e., the space  is jj available in the period $[t^1_i ,t^2_i]beforethisassignment),wewouldearnabenefit before this assignment), we would earn a benefit b_{ij}.Anyunassigneddemand.Any unassigned demand i\in Dwouldincurapenalty would incur a penalty c_i$. We seek an optimal demand-space assignment with themaximum profit (i.e., benefits by successful assignments minus the penalties of the unassigned demands).

## Solve LP Using Problem-Based Approach for intlinprog

```math
\max\sum_{i=1}^{n}\sum_{j=1}^{m}c_{i}x_{ij}/r_{ij}+\sum_{i=1}^{n}c_{i} \biggl( \sum_{j=1}^{m}x_{ij}-1 \biggl) {\rm \ subject\ to\ } \Biggl\{ \begin{array}{}
{\sum_{j=1}^{m}x_{ij}\leq 1,\forall i}\\
{x_{ij}k_{i}^{d} \leq k_{j}^{s},\forall i,j}\\
{x_{ij}+x_{kj}\leq \frac{\bigl( t_{i}^{2}-t_{k}^{2} \bigl) \bigl( t_{i}^{1}-t_{k}^{1} \bigl)}{|\bigl( t_{i}^{2}-t_{k}^{2} \bigl)}}\\
{x_{ij}r_{ij}\leq R, \forall i,j}
\end{array}
```
