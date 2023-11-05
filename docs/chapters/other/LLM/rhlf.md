
#### **Reinforcement Learning Overview**
David Silver in his [introductory class](https://youtu.be/2pWv7GOvuf0) on RL makes the following distinctions between reinforcement learning and supervised learning:

1. "There is no supervisor, only a reward signal". I am not a fan of this distinction because in supervised learning we don't have a supervisor. Generally, we're not trying to perfectly interpolate the data. Rather, we have a reward signal of the loss function $(y - f_{\theta}(x))^2$
2. "Feedback is delayed, not instantaneous"
3. "Time really matters (sequential, non i.i.d data)" and "Agent's actions affect the subsequent data it receives"

#### **The RL Problem**


Let $\Theta$ be a parameter space and $\theta \in \Theta$ a parameter vector that governs the dynamics of a stochastic process:  $\big(\Omega, \mathcal{F}, \mathbb{P}_{\theta}\big)$. We are interested in identifying the parameter $\theta^*$ that maximizes the expected cumulative reward over time. Formally, the optimization problem can be stated as:

$$\begin{align*}
\theta^* = \underset{\theta \in \Theta}{\textrm{arg max}} \ \mathbb{E}_{\theta}\Big[\sum _{t=1}^T R_t\Big]
\end{align*}$$

where:

- $\theta^*$ is the optimal parameter vector.
- $\mathbb{E}_{\theta}[\cdot]$ denotes the expectation with respect to the probability distribution induced by the parameter $\theta$.
- $\sum_{t=1}^{T} R_t$ is the cumulative reward over a finite time horizon $T$, with $R_t$ representing the reward at time $t$ which may be random and dependent on $\theta$.



#### **RHLF**
- the challenge with this set-up is the effective domain of the reward model
    - We use the KL constraint to try and account for this issue