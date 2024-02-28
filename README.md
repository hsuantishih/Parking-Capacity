## 題目

Assume there are $K$ types of cars and parking spaces, where a type $k$ car can park in a space of type $k'\geq k$ ,but not in a space of type.For example, if there are 3 types (i.e., $K=3$ ), a type 2 car can parkin a space of type 2 or 3, but not 1.Let $D$ represent the set of  $n=|D|$ parking demands, and $P$ represent the set of $m=|P|$ parking spaces. Each parking demand $i\in D$ located in $(\alpha^d_i ,\beta^d_i)$ is of type $k^d_i$ with a time window constraint $[t^1_i ,t^2_i]$,and each parking space $j\in P$ located in $(\alpha^s_j ,\beta^s_j)$ is of type $k^s_j$.
Let $r_{ij}=\sqrt(\alpha^d_i-\alpha^s_j)^2+(\beta^d_i-\beta^s_j)^2$ represent the distance between demand $i\in D$ and space $j\in P$. We say a space  is eligible for demand , if they are sufficiently close to each other (i.e. $r_{ij}\leq R$, where $R$ is a range upper bound) and type compatible (i.e., $k^s_j\geq k^d_i$). Let $P_i
$ be a set of eligible parking spacesfor a demand $i\in D$. Similarly, let $D_j=\{i:r_{ij}\leq R,k^s_j\geq k^d_i ,i\in D\}$ be a set of parking demands eligible to beassigned to a space $j\in P$
If we assign a space $j\in P_i$ to a demand $i\in D$ obeying its time window constraint (i.e., the space  is $j$ available in the period $[t^1_i ,t^2_i]$ before this assignment), we would earn a benefit $b_{ij}$.Any unassigned demand $i\in D$ would incur a penalty $c_i$. We seek an optimal demand-space assignment with themaximum profit (i.e., benefits by successful assignments minus the penalties of the unassigned demands).

## Solve LP Using Problem-Based Approach for intlinprog

$$\max\sum_{i=1}^{n}\sum_{j=1}^{m}c_{i}x_{ij}/r_{ij}+\sum_{i=1}^{n}c_{i} \biggl( \sum_{j=1}^{m}x_{ij}-1 \biggl) {\rm \ subject\ to\ } \Biggl\{ \begin{array}{}
{\sum_{j=1}^{m}x_{ij}\leq 1,\forall i}\\
{x_{ij}k_{i}^{d} \leq k_{j}^{s},\forall i,j}\\
{x_{ij}+x_{kj}\leq \frac{\bigl( t_{i}^{2}-t_{k}^{2} \bigl) \bigl( t_{i}^{1}-t_{k}^{1} \bigl)}{|\bigl( t_{i}^{2}-t_{k}^{2} \bigl)}}\\
{x_{ij}r_{ij}\leq R, \forall i,j}
\end{array}$$