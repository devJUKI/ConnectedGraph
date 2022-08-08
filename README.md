# MATLAB-ConnectedGraph
MatLab script that determines whether the specified subset of vertices in the given graph induces a connected graph

---

## Task analysis

A connected graph is a graph that consists of one connected component. The connected component of the graph,
is a subgraph of a graph that includes all vertices that connect to each other.

The program will process the recorded edges of the graph, given the vertices that induce the graph and output
the subgraph showing the answer or the induction is a yoke, along with the computation time and the graph
a visualization where the highlighted nodes and edges will show the induced subgraph that the program
analyzes.

First, the program will search for the edges of the induced subgraph using
<i>GetInducedGraphEdges</i> function. This function loops through all the edges of the underlying graph and
checks if both vertices of an edge belong to the vertices that induce the subgraph.

After finding these edges, the program calls the <i>IsGraphConnected</i> function, which performs a breadth-first search
from one of the vertices of the induced subgraph and compares the number of vertices traversed in the widthwise search with
by the number of vertices of the induced graph. If the numbers match - subgraph yoke.

<p align="center">
  <img src="https://github.com/devJUKI/MATLAB-ConnectedGraph/blob/main/img1.png" alt="drawing" width="700"/>
</p>
  
The first figure shows an induced subgraph with vertices 3, 6 and 8, which in the given
graph is not connected because vertex 3 does not belong to the same connecting component as 6 and 8, and in the second
the induced subgraph in the figure is a yoke because the vertices of this subgraph are 3, 4, 6, and 8. Vertex 4 allowed
for vertex 3 to join vertices 6 and 8, making the induced subgraph a yoke.

## Test samples

Three tests were used to demonstrate the performance of this program. In one of them, the program should have found
that the induced subgraph is connected and the other two are disjoint.

### First test (without subgraph)
