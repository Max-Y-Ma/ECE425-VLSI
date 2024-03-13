# Criteria
- Rise times for the required transitions were measured using the `0.3v to 0.7v` rise time criteria.
- Fall times for the required transitions were measured using the `0.7v to 0.3v` fall time criteria.
- The input fall and rise times were set to be `5ps`.

# Stimulus
The following is the input stimulus sequence for inputs A and B:
- `A -> 010010111`
- `B -> 010111010`
- The following stimulus was designed to test AB fall/rise, then A fall/rise, then B fall/rise.

# Data
| Transition | Time #1 (ns) | Time #2 (ns) | Fall/Rise Time (ps) |
| ---------- | ------------ | ------------ | ------------------- |
| FallAB     | 2.50701      | 2.50989      | 2.88                |
| FallA      | 10.00740     | 10.01029     | 2.89                |
| FallB      | 17.50589     | 17.50876     | 2.87                |
| RiseAB     | 5.00493      | 5.00628      | 1.35                |
| RiseA      | 12.50680     | 12.51076     | 3.96                |
| RiseB      | 20.00589     | 20.00828     | 2.39                |

# Results
The resulting fall/rise times make sense according to delays seen through a `NAND2`
- Falling paths must go through two series nMOS, which all incur similar fall times.
- `Best` case rise time is through both parallel pMOS, shown on the `RiseAB` transition
- `Middle` case rise time is through one pMOS and zero nMOS, shown in `RiseB` transition
- `Worst` case rise time is through one pMOS and one nMOS connected to the output, shown in `RiseA`