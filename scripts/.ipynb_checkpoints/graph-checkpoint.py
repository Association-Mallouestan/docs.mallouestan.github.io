import matplotlib.pyplot as plt
from dhg.random import hypergraph_Gnm

hg = hypergraph_Gnm(10, 8, method='low_order_first')
hg.draw()
plt.show()